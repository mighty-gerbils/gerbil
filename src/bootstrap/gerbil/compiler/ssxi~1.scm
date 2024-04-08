(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g201850_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g201857_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g201859_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g201861_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g201863_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g201865_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g201877_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g201879_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g201881_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g201883_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g201885_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#declare-type|
      (lambda (_%$stx195268%_)
        (let* ((_%g195272195290%_
                (lambda (_%g195273195286%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195273195286%_))))
               (_%g195271195345%_
                (lambda (_%g195273195294%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195273195294%_))
                      (let ((_%e195276195297%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g195273195294%_))))
                        (let ((_%hd195277195301%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195276195297%_)))
                              (_%tl195278195304%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195276195297%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195278195304%_))
                              (let ((_%e195279195307%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl195278195304%_))))
                                (let ((_%hd195280195311%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195279195307%_)))
                                      (_%tl195281195314%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195279195307%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl195281195314%_))
                                      (let ((_%e195282195317%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl195281195314%_))))
                                        (let ((_%hd195283195321%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e195282195317%_)))
                                              (_%tl195284195324%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e195282195317%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl195284195324%_))
                                              ((lambda (_%L195327%_
                                                        _%L195329%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%L195329%_))
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
                               (cons _%L195329%_ '()))
                         (cons _%L195327%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g195272195290%_
                                                      _%g195273195294%_)))
                                               _%hd195283195321%_
                                               _%hd195280195311%_)
                                              (_%g195272195290%_
                                               _%g195273195294%_))))
                                      (_%g195272195290%_ _%g195273195294%_))))
                              (_%g195272195290%_ _%g195273195294%_))))
                      (_%g195272195290%_ _%g195273195294%_)))))
          (_%g195271195345%_ _%$stx195268%_))))
    (define |gxc[:0:]#declare-class|
      (lambda (_%$stx195349%_)
        (let* ((_%g195353195371%_
                (lambda (_%g195354195367%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195354195367%_))))
               (_%g195352195426%_
                (lambda (_%g195354195375%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195354195375%_))
                      (let ((_%e195357195378%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g195354195375%_))))
                        (let ((_%hd195358195382%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195357195378%_)))
                              (_%tl195359195385%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195357195378%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195359195385%_))
                              (let ((_%e195360195388%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl195359195385%_))))
                                (let ((_%hd195361195392%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195360195388%_)))
                                      (_%tl195362195395%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195360195388%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl195362195395%_))
                                      (let ((_%e195363195398%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl195362195395%_))))
                                        (let ((_%hd195364195402%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e195363195398%_)))
                                              (_%tl195365195405%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e195363195398%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl195365195405%_))
                                              ((lambda (_%L195408%_
                                                        _%L195410%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%L195410%_))
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
                               (cons _%L195410%_ '()))
                         (cons _%L195408%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g195353195371%_
                                                      _%g195354195375%_)))
                                               _%hd195364195402%_
                                               _%hd195361195392%_)
                                              (_%g195353195371%_
                                               _%g195354195375%_))))
                                      (_%g195353195371%_ _%g195354195375%_))))
                              (_%g195353195371%_ _%g195354195375%_))))
                      (_%g195353195371%_ _%g195354195375%_)))))
          (_%g195352195426%_ _%$stx195349%_))))
    (define |gxc[:0:]#declare-type*|
      (lambda (_%$stx195430%_)
        (let* ((_%g195434195463%_
                (lambda (_%g195435195459%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195435195459%_))))
               (_%g195433195563%_
                (lambda (_%g195435195467%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195435195467%_))
                      (let ((_%e195438195470%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g195435195467%_))))
                        (let ((_%hd195439195474%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195438195470%_)))
                              (_%tl195440195477%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195438195470%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl195440195477%_))
                              (let ((_g201828_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl195440195477%_
                                        '0))))
                                (begin
                                  (let ((_g201829_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g201828_)
                                               (##vector-length _g201828_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g201829_ 2)))
                                        (error "Context expects 2 values"
                                               _g201829_)))
                                  (let ((_%target195441195480%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g201828_ 0)))
                                        (_%tl195443195483%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g201828_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl195443195483%_))
                                        (letrec ((_%loop195444195486%_
                                                  (lambda (_%hd195442195490%_
                                                           _%type195448195493%_
                                                           _%symbol195449195495%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd195442195490%_))
                                                        (let ((_%e195445195498%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd195442195490%_))))
                  (let ((_%lp-hd195446195502%_
                         (let ()
                           (declare (not safe))
                           (##car _%e195445195498%_)))
                        (_%lp-tl195447195505%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e195445195498%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd195446195502%_))
                        (let ((_%e195452195508%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd195446195502%_))))
                          (let ((_%hd195453195512%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e195452195508%_)))
                                (_%tl195454195515%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e195452195508%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl195454195515%_))
                                (let ((_%e195455195518%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl195454195515%_))))
                                  (let ((_%hd195456195522%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e195455195518%_)))
                                        (_%tl195457195525%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e195455195518%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl195457195525%_))
                                        (_%loop195444195486%_
                                         _%lp-tl195447195505%_
                                         (cons _%hd195456195522%_
                                               _%type195448195493%_)
                                         (cons _%hd195453195512%_
                                               _%symbol195449195495%_))
                                        (_%g195434195463%_
                                         _%g195435195467%_))))
                                (_%g195434195463%_ _%g195435195467%_))))
                        (_%g195434195463%_ _%g195435195467%_))))
                (let ((_%type195450195528%_ (reverse _%type195448195493%_))
                      (_%symbol195451195531%_
                       (reverse _%symbol195449195495%_)))
                  ((lambda (_%L195534%_ _%L195536%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L195534%_
                                _%L195536%_))
                             (let ((__tmp201830
                                    (lambda (_%g195551195555%_
                                             _%g195552195558%_
                                             _%g195553195560%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-type))
                                                  (cons _%g195552195558%_
                                                        (cons _%g195551195555%_
                                                              '())))
                                            _%g195553195560%_))))
                               (declare (not safe))
                               (__foldr2
                                __tmp201830
                                '()
                                _%L195534%_
                                _%L195536%_)))))
                   _%type195450195528%_
                   _%symbol195451195531%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop195444195486%_
                                           _%target195441195480%_
                                           '()
                                           '()))
                                        (_%g195434195463%_
                                         _%g195435195467%_)))))
                              (_%g195434195463%_ _%g195435195467%_))))
                      (_%g195434195463%_ _%g195435195467%_)))))
          (_%g195433195563%_ _%$stx195430%_))))
    (define |gxc[:0:]#declare-method|
      (lambda (_%$stx195568%_)
        (let* ((_%__stx201139201140%_ _%$stx195568%_)
               (_%g195573195615%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx201139201140%_)))))
          (let ((_%__kont201142201143%_
                 (lambda (_%L195743%_ _%L195745%_ _%L195746%_ _%L195747%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-method!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L195747%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L195746%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%L195745%_ '()))
                                           (cons _%L195743%_ '())))))))
                (_%__kont201144201145%_
                 (lambda (_%L195662%_ _%L195664%_ _%L195665%_ _%L195666%_)
                   (cons _%L195666%_
                         (cons _%L195665%_
                               (cons _%L195664%_
                                     (cons _%L195662%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'rebind?))
                                                 '()))))))))
            (let ((_%__match201178201179%_
                   (lambda (_%e195579195693%_
                            _%hd195580195697%_
                            _%tl195581195700%_
                            _%e195582195703%_
                            _%hd195583195707%_
                            _%tl195584195710%_
                            _%e195585195713%_
                            _%hd195586195717%_
                            _%tl195587195720%_
                            _%e195588195723%_
                            _%hd195589195727%_
                            _%tl195590195730%_
                            _%e195591195733%_
                            _%hd195592195737%_
                            _%tl195593195740%_)
                     (let ((_%L195743%_ _%hd195592195737%_)
                           (_%L195745%_ _%hd195589195727%_)
                           (_%L195746%_ _%hd195586195717%_)
                           (_%L195747%_ _%hd195583195707%_))
                       (if (and (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L195747%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L195746%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L195745%_)))
                           (_%__kont201142201143%_
                            _%L195743%_
                            _%L195745%_
                            _%L195746%_
                            _%L195747%_)
                           (let ()
                             (declare (not safe))
                             (_%g195573195615%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx201139201140%_))
                  (let ((_%e195579195693%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx201139201140%_))))
                    (let ((_%tl195581195700%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e195579195693%_)))
                          (_%hd195580195697%_
                           (let ()
                             (declare (not safe))
                             (##car _%e195579195693%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl195581195700%_))
                          (let ((_%e195582195703%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl195581195700%_))))
                            (let ((_%tl195584195710%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e195582195703%_)))
                                  (_%hd195583195707%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e195582195703%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl195584195710%_))
                                  (let ((_%e195585195713%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl195584195710%_))))
                                    (let ((_%tl195587195720%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e195585195713%_)))
                                          (_%hd195586195717%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e195585195713%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl195587195720%_))
                                          (let ((_%e195588195723%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl195587195720%_))))
                                            (let ((_%tl195590195730%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e195588195723%_)))
                                                  (_%hd195589195727%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e195588195723%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl195590195730%_))
                                                  (let ((_%e195591195733%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl195590195730%_))))
                                                    (let ((_%tl195593195740%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e195591195733%_)))
                                                          (_%hd195592195737%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e195591195733%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl195593195740%_))
                                                          (_%__match201178201179%_
                                                           _%e195579195693%_
                                                           _%hd195580195697%_
                                                           _%tl195581195700%_
                                                           _%e195582195703%_
                                                           _%hd195583195707%_
                                                           _%tl195584195710%_
                                                           _%e195585195713%_
                                                           _%hd195586195717%_
                                                           _%tl195587195720%_
                                                           _%e195588195723%_
                                                           _%hd195589195727%_
                                                           _%tl195590195730%_
                                                           _%e195591195733%_
                                                           _%hd195592195737%_
                                                           _%tl195593195740%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g195573195615%_)))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl195590195730%_))
                                                      (_%__kont201144201145%_
                                                       _%hd195589195727%_
                                                       _%hd195586195717%_
                                                       _%hd195583195707%_
                                                       _%hd195580195697%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g195573195615%_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g195573195615%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g195573195615%_)))))
                          (let () (declare (not safe)) (_%g195573195615%_)))))
                  (let () (declare (not safe)) (_%g195573195615%_))))))))
    (define |gxc[:0:]#declare-method*|
      (lambda (_%$stx195772%_)
        (let* ((_%g195776195811%_
                (lambda (_%g195777195807%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195777195807%_))))
               (_%g195775195930%_
                (lambda (_%g195777195815%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195777195815%_))
                      (let ((_%e195781195818%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g195777195815%_))))
                        (let ((_%hd195782195822%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195781195818%_)))
                              (_%tl195783195825%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195781195818%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl195783195825%_))
                              (let ((_g201831_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl195783195825%_
                                        '0))))
                                (begin
                                  (let ((_g201832_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g201831_)
                                               (##vector-length _g201831_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g201832_ 2)))
                                        (error "Context expects 2 values"
                                               _g201832_)))
                                  (let ((_%target195784195828%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g201831_ 0)))
                                        (_%tl195786195831%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g201831_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl195786195831%_))
                                        (letrec ((_%loop195787195834%_
                                                  (lambda (_%hd195785195838%_
                                                           _%symbol195791195841%_
                                                           _%method195792195843%_
                                                           _%type-t195793195845%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd195785195838%_))
                                                        (let ((_%e195788195848%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd195785195838%_))))
                  (let ((_%lp-hd195789195852%_
                         (let ()
                           (declare (not safe))
                           (##car _%e195788195848%_)))
                        (_%lp-tl195790195855%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e195788195848%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd195789195852%_))
                        (let ((_%e195797195858%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd195789195852%_))))
                          (let ((_%hd195798195862%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e195797195858%_)))
                                (_%tl195799195865%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e195797195858%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl195799195865%_))
                                (let ((_%e195800195868%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl195799195865%_))))
                                  (let ((_%hd195801195872%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e195800195868%_)))
                                        (_%tl195802195875%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e195800195868%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl195802195875%_))
                                        (let ((_%e195803195878%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl195802195875%_))))
                                          (let ((_%hd195804195882%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e195803195878%_)))
                                                (_%tl195805195885%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e195803195878%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl195805195885%_))
                                                (_%loop195787195834%_
                                                 _%lp-tl195790195855%_
                                                 (cons _%hd195804195882%_
                                                       _%symbol195791195841%_)
                                                 (cons _%hd195801195872%_
                                                       _%method195792195843%_)
                                                 (cons _%hd195798195862%_
                                                       _%type-t195793195845%_))
                                                (_%g195776195811%_
                                                 _%g195777195815%_))))
                                        (_%g195776195811%_
                                         _%g195777195815%_))))
                                (_%g195776195811%_ _%g195777195815%_))))
                        (_%g195776195811%_ _%g195777195815%_))))
                (let ((_%symbol195794195888%_ (reverse _%symbol195791195841%_))
                      (_%method195795195891%_ (reverse _%method195792195843%_))
                      (_%type-t195796195893%_
                       (reverse _%type-t195793195845%_)))
                  ((lambda (_%L195896%_ _%L195898%_ _%L195899%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L195896%_
                                _%L195898%_
                                _%L195899%_))
                             (let ((__tmp201833
                                    (lambda (_%g195915195920%_
                                             _%g195916195923%_
                                             _%g195917195925%_
                                             _%g195918195927%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-method))
                                                  (cons _%g195917195925%_
                                                        (cons _%g195916195923%_
                                                              (cons _%g195915195920%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g195918195927%_))))
                               (declare (not safe))
                               (__foldr*
                                __tmp201833
                                '()
                                _%L195896%_
                                _%L195898%_
                                _%L195899%_)))))
                   _%symbol195794195888%_
                   _%method195795195891%_
                   _%type-t195796195893%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop195787195834%_
                                           _%target195784195828%_
                                           '()
                                           '()
                                           '()))
                                        (_%g195776195811%_
                                         _%g195777195815%_)))))
                              (_%g195776195811%_ _%g195777195815%_))))
                      (_%g195776195811%_ _%g195777195815%_)))))
          (_%g195775195930%_ _%$stx195772%_))))
    (define |gxc[:0:]#declare-methods|
      (lambda (_%$stx195935%_)
        (let* ((_%g195939195972%_
                (lambda (_%g195940195968%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195940195968%_))))
               (_%g195938196086%_
                (lambda (_%g195940195976%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195940195976%_))
                      (let ((_%e195944195979%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g195940195976%_))))
                        (let ((_%hd195945195983%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195944195979%_)))
                              (_%tl195946195986%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195944195979%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195946195986%_))
                              (let ((_%e195947195989%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl195946195986%_))))
                                (let ((_%hd195948195993%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195947195989%_)))
                                      (_%tl195949195996%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195947195989%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl195949195996%_))
                                      (let ((_g201834_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl195949195996%_
                                                '0))))
                                        (begin
                                          (let ((_g201835_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g201834_)
                                                       (##vector-length
                                                        _g201834_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g201835_ 2)))
                                                (error "Context expects 2 values"
                                                       _g201835_)))
                                          (let ((_%target195950195999%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g201834_ 0)))
                                                (_%tl195952196002%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g201834_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl195952196002%_))
                                                (letrec ((_%loop195953196005%_
                                                          (lambda (_%hd195951196009%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%symbol195957196012%_
                           _%method195958196014%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd195951196009%_))
                        (let ((_%e195954196017%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd195951196009%_))))
                          (let ((_%lp-hd195955196021%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e195954196017%_)))
                                (_%lp-tl195956196024%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e195954196017%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd195955196021%_))
                                (let ((_%e195961196027%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%lp-hd195955196021%_))))
                                  (let ((_%hd195962196031%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e195961196027%_)))
                                        (_%tl195963196034%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e195961196027%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl195963196034%_))
                                        (let ((_%e195964196037%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl195963196034%_))))
                                          (let ((_%hd195965196041%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e195964196037%_)))
                                                (_%tl195966196044%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e195964196037%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl195966196044%_))
                                                (_%loop195953196005%_
                                                 _%lp-tl195956196024%_
                                                 (cons _%hd195965196041%_
                                                       _%symbol195957196012%_)
                                                 (cons _%hd195962196031%_
                                                       _%method195958196014%_))
                                                (_%g195939195972%_
                                                 _%g195940195976%_))))
                                        (_%g195939195972%_
                                         _%g195940195976%_))))
                                (_%g195939195972%_ _%g195940195976%_))))
                        (let ((_%symbol195959196047%_
                               (reverse _%symbol195957196012%_))
                              (_%method195960196050%_
                               (reverse _%method195958196014%_)))
                          ((lambda (_%L196053%_ _%L196055%_ _%L196056%_)
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'begin))
                                   (begin
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-check-splice-targets
                                        _%L196053%_
                                        _%L196055%_))
                                     (let ((__tmp201836
                                            (lambda (_%g196074196078%_
                                                     _%g196075196081%_
                                                     _%g196076196083%_)
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'declare-method))
                                                          (cons _%L196056%_
                                                                (cons _%g196075196081%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%g196074196078%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g196076196083%_))))
                                       (declare (not safe))
                                       (__foldr2
                                        __tmp201836
                                        '()
                                        _%L196053%_
                                        _%L196055%_)))))
                           _%symbol195959196047%_
                           _%method195960196050%_
                           _%hd195948195993%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop195953196005%_
                                                   _%target195950195999%_
                                                   '()
                                                   '()))
                                                (_%g195939195972%_
                                                 _%g195940195976%_)))))
                                      (_%g195939195972%_ _%g195940195976%_))))
                              (_%g195939195972%_ _%g195940195976%_))))
                      (_%g195939195972%_ _%g195940195976%_)))))
          (_%g195938196086%_ _%$stx195935%_))))
    (define |gxc[:0:]#@alias|
      (lambda (_%$stx196091%_)
        (let* ((_%g196095196109%_
                (lambda (_%g196096196105%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196096196105%_))))
               (_%g196094196150%_
                (lambda (_%g196096196113%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196096196113%_))
                      (let ((_%e196098196116%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196096196113%_))))
                        (let ((_%hd196099196120%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196098196116%_)))
                              (_%tl196100196123%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196098196116%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196100196123%_))
                              (let ((_%e196101196126%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl196100196123%_))))
                                (let ((_%hd196102196130%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196101196126%_)))
                                      (_%tl196103196133%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196101196126%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl196103196133%_))
                                      ((lambda (_%L196136%_)
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
                                                           (cons _%L196136%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd196102196130%_)
                                      (_%g196095196109%_ _%g196096196113%_))))
                              (_%g196095196109%_ _%g196096196113%_))))
                      (_%g196095196109%_ _%g196096196113%_)))))
          (_%g196094196150%_ _%$stx196091%_))))
    (define |gxc[:0:]#@class|
      (lambda (_%$stx196154%_)
        (let* ((_%g196158196212%_
                (lambda (_%g196159196208%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196159196208%_))))
               (_%g196157196393%_
                (lambda (_%g196159196216%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196159196216%_))
                      (let ((_%e196171196219%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196159196216%_))))
                        (let ((_%hd196172196223%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196171196219%_)))
                              (_%tl196173196226%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196171196219%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196173196226%_))
                              (let ((_%e196174196229%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl196173196226%_))))
                                (let ((_%hd196175196233%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196174196229%_)))
                                      (_%tl196176196236%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196174196229%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl196176196236%_))
                                      (let ((_%e196177196239%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl196176196236%_))))
                                        (let ((_%hd196178196243%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196177196239%_)))
                                              (_%tl196179196246%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196177196239%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl196179196246%_))
                                              (let ((_%e196180196249%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl196179196246%_))))
                                                (let ((_%hd196181196253%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e196180196249%_)))
                                                      (_%tl196182196256%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e196180196249%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl196182196256%_))
                                                      (let ((_%e196183196259%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl196182196256%_))))
                (let ((_%hd196184196263%_
                       (let () (declare (not safe)) (##car _%e196183196259%_)))
                      (_%tl196185196266%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e196183196259%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl196185196266%_))
                      (let ((_%e196186196269%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl196185196266%_))))
                        (let ((_%hd196187196273%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196186196269%_)))
                              (_%tl196188196276%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196186196269%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196188196276%_))
                              (let ((_%e196189196279%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl196188196276%_))))
                                (let ((_%hd196190196283%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196189196279%_)))
                                      (_%tl196191196286%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196189196279%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl196191196286%_))
                                      (let ((_%e196192196289%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl196191196286%_))))
                                        (let ((_%hd196193196293%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196192196289%_)))
                                              (_%tl196194196296%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196192196289%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl196194196296%_))
                                              (let ((_%e196195196299%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl196194196296%_))))
                                                (let ((_%hd196196196303%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e196195196299%_)))
                                                      (_%tl196197196306%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e196195196299%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl196197196306%_))
                                                      (let ((_%e196198196309%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl196197196306%_))))
                (let ((_%hd196199196313%_
                       (let () (declare (not safe)) (##car _%e196198196309%_)))
                      (_%tl196200196316%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e196198196309%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl196200196316%_))
                      (let ((_%e196201196319%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl196200196316%_))))
                        (let ((_%hd196202196323%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196201196319%_)))
                              (_%tl196203196326%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196201196319%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196203196326%_))
                              (let ((_%e196204196329%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl196203196326%_))))
                                (let ((_%hd196205196333%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196204196329%_)))
                                      (_%tl196206196336%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196204196329%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl196206196336%_))
                                      ((lambda (_%L196339%_
                                                _%L196341%_
                                                _%L196342%_
                                                _%L196343%_
                                                _%L196344%_
                                                _%L196345%_
                                                _%L196346%_
                                                _%L196347%_
                                                _%L196348%_
                                                _%L196349%_
                                                _%L196350%_)
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
                                                           (cons _%L196350%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%L196349%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'quote))
                               (cons _%L196348%_ '()))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L196347%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L196346%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%L196345%_ '()))
                                           (cons _%L196344%_
                                                 (cons _%L196343%_
                                                       (cons _%L196342%_
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L196341%_ '()))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%L196339%_ '()))
                                 '())))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd196205196333%_
                                       _%hd196202196323%_
                                       _%hd196199196313%_
                                       _%hd196196196303%_
                                       _%hd196193196293%_
                                       _%hd196190196283%_
                                       _%hd196187196273%_
                                       _%hd196184196263%_
                                       _%hd196181196253%_
                                       _%hd196178196243%_
                                       _%hd196175196233%_)
                                      (_%g196158196212%_ _%g196159196216%_))))
                              (_%g196158196212%_ _%g196159196216%_))))
                      (_%g196158196212%_ _%g196159196216%_))))
              (_%g196158196212%_ _%g196159196216%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g196158196212%_
                                               _%g196159196216%_))))
                                      (_%g196158196212%_ _%g196159196216%_))))
                              (_%g196158196212%_ _%g196159196216%_))))
                      (_%g196158196212%_ _%g196159196216%_))))
              (_%g196158196212%_ _%g196159196216%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g196158196212%_
                                               _%g196159196216%_))))
                                      (_%g196158196212%_ _%g196159196216%_))))
                              (_%g196158196212%_ _%g196159196216%_))))
                      (_%g196158196212%_ _%g196159196216%_)))))
          (_%g196157196393%_ _%$stx196154%_))))
    (define |gxc[:0:]#@predicate|
      (lambda (_%$stx196397%_)
        (let* ((_%g196401196415%_
                (lambda (_%g196402196411%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196402196411%_))))
               (_%g196400196456%_
                (lambda (_%g196402196419%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196402196419%_))
                      (let ((_%e196404196422%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196402196419%_))))
                        (let ((_%hd196405196426%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196404196422%_)))
                              (_%tl196406196429%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196404196422%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196406196429%_))
                              (let ((_%e196407196432%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl196406196429%_))))
                                (let ((_%hd196408196436%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196407196432%_)))
                                      (_%tl196409196439%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196407196432%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl196409196439%_))
                                      ((lambda (_%L196442%_)
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
                                                           (cons _%L196442%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd196408196436%_)
                                      (_%g196401196415%_ _%g196402196419%_))))
                              (_%g196401196415%_ _%g196402196419%_))))
                      (_%g196401196415%_ _%g196402196419%_)))))
          (_%g196400196456%_ _%$stx196397%_))))
    (define |gxc[:0:]#@constructor|
      (lambda (_%$stx196460%_)
        (let* ((_%g196464196478%_
                (lambda (_%g196465196474%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196465196474%_))))
               (_%g196463196519%_
                (lambda (_%g196465196482%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196465196482%_))
                      (let ((_%e196467196485%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196465196482%_))))
                        (let ((_%hd196468196489%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196467196485%_)))
                              (_%tl196469196492%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196467196485%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196469196492%_))
                              (let ((_%e196470196495%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl196469196492%_))))
                                (let ((_%hd196471196499%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196470196495%_)))
                                      (_%tl196472196502%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196470196495%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl196472196502%_))
                                      ((lambda (_%L196505%_)
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
                                                           (cons _%L196505%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd196471196499%_)
                                      (_%g196464196478%_ _%g196465196482%_))))
                              (_%g196464196478%_ _%g196465196482%_))))
                      (_%g196464196478%_ _%g196465196482%_)))))
          (_%g196463196519%_ _%$stx196460%_))))
    (define |gxc[:0:]#@accessor|
      (lambda (_%$stx196523%_)
        (let* ((_%g196527196549%_
                (lambda (_%g196528196545%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196528196545%_))))
               (_%g196526196618%_
                (lambda (_%g196528196553%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196528196553%_))
                      (let ((_%e196532196556%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196528196553%_))))
                        (let ((_%hd196533196560%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196532196556%_)))
                              (_%tl196534196563%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196532196556%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196534196563%_))
                              (let ((_%e196535196566%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl196534196563%_))))
                                (let ((_%hd196536196570%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196535196566%_)))
                                      (_%tl196537196573%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196535196566%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl196537196573%_))
                                      (let ((_%e196538196576%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl196537196573%_))))
                                        (let ((_%hd196539196580%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196538196576%_)))
                                              (_%tl196540196583%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196538196576%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl196540196583%_))
                                              (let ((_%e196541196586%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl196540196583%_))))
                                                (let ((_%hd196542196590%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e196541196586%_)))
                                                      (_%tl196543196593%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e196541196586%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl196543196593%_))
                                                      ((lambda (_%L196596%_
                                                                _%L196598%_
                                                                _%L196599%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!accessor))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L196599%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L196598%_ '()))
                                   (cons _%L196596%_ '())))))
               _%hd196542196590%_
               _%hd196539196580%_
               _%hd196536196570%_)
              (_%g196527196549%_ _%g196528196553%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g196527196549%_
                                               _%g196528196553%_))))
                                      (_%g196527196549%_ _%g196528196553%_))))
                              (_%g196527196549%_ _%g196528196553%_))))
                      (_%g196527196549%_ _%g196528196553%_)))))
          (_%g196526196618%_ _%$stx196523%_))))
    (define |gxc[:0:]#@mutator|
      (lambda (_%$stx196622%_)
        (let* ((_%g196626196648%_
                (lambda (_%g196627196644%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196627196644%_))))
               (_%g196625196717%_
                (lambda (_%g196627196652%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196627196652%_))
                      (let ((_%e196631196655%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196627196652%_))))
                        (let ((_%hd196632196659%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196631196655%_)))
                              (_%tl196633196662%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196631196655%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196633196662%_))
                              (let ((_%e196634196665%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl196633196662%_))))
                                (let ((_%hd196635196669%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196634196665%_)))
                                      (_%tl196636196672%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196634196665%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl196636196672%_))
                                      (let ((_%e196637196675%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl196636196672%_))))
                                        (let ((_%hd196638196679%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196637196675%_)))
                                              (_%tl196639196682%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196637196675%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl196639196682%_))
                                              (let ((_%e196640196685%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl196639196682%_))))
                                                (let ((_%hd196641196689%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e196640196685%_)))
                                                      (_%tl196642196692%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e196640196685%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl196642196692%_))
                                                      ((lambda (_%L196695%_
                                                                _%L196697%_
                                                                _%L196698%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!mutator))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L196698%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L196697%_ '()))
                                   (cons _%L196695%_ '())))))
               _%hd196641196689%_
               _%hd196638196679%_
               _%hd196635196669%_)
              (_%g196626196648%_ _%g196627196652%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g196626196648%_
                                               _%g196627196652%_))))
                                      (_%g196626196648%_ _%g196627196652%_))))
                              (_%g196626196648%_ _%g196627196652%_))))
                      (_%g196626196648%_ _%g196627196652%_)))))
          (_%g196625196717%_ _%$stx196622%_))))
    (define |gxc[:0:]#@primitive-predicate|
      (lambda (_%$stx196721%_)
        (let* ((_%g196725196739%_
                (lambda (_%g196726196735%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196726196735%_))))
               (_%g196724196780%_
                (lambda (_%g196726196743%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196726196743%_))
                      (let ((_%e196728196746%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196726196743%_))))
                        (let ((_%hd196729196750%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196728196746%_)))
                              (_%tl196730196753%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196728196746%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196730196753%_))
                              (let ((_%e196731196756%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl196730196753%_))))
                                (let ((_%hd196732196760%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196731196756%_)))
                                      (_%tl196733196763%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196731196756%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl196733196763%_))
                                      ((lambda (_%L196766%_)
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
                                                           (cons _%L196766%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd196732196760%_)
                                      (_%g196725196739%_ _%g196726196743%_))))
                              (_%g196725196739%_ _%g196726196743%_))))
                      (_%g196725196739%_ _%g196726196743%_)))))
          (_%g196724196780%_ _%$stx196721%_))))
    (define |gxc[:0:]#@interface|
      (lambda (_%$stx196784%_)
        (let* ((_%g196788196806%_
                (lambda (_%g196789196802%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196789196802%_))))
               (_%g196787196861%_
                (lambda (_%g196789196810%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196789196810%_))
                      (let ((_%e196792196813%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196789196810%_))))
                        (let ((_%hd196793196817%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196792196813%_)))
                              (_%tl196794196820%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196792196813%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196794196820%_))
                              (let ((_%e196795196823%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl196794196820%_))))
                                (let ((_%hd196796196827%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196795196823%_)))
                                      (_%tl196797196830%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196795196823%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl196797196830%_))
                                      (let ((_%e196798196833%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl196797196830%_))))
                                        (let ((_%hd196799196837%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196798196833%_)))
                                              (_%tl196800196840%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196798196833%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl196800196840%_))
                                              ((lambda (_%L196843%_
                                                        _%L196845%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!interface))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L196845%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L196843%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd196799196837%_
                                               _%hd196796196827%_)
                                              (_%g196788196806%_
                                               _%g196789196810%_))))
                                      (_%g196788196806%_ _%g196789196810%_))))
                              (_%g196788196806%_ _%g196789196810%_))))
                      (_%g196788196806%_ _%g196789196810%_)))))
          (_%g196787196861%_ _%$stx196784%_))))
    (define |gxc[:0:]#@lambda|
      (lambda (_%$stx196865%_)
        (let* ((_%__stx201207201208%_ _%$stx196865%_)
               (_%g196872196933%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx201207201208%_)))))
          (let ((_%__kont201210201211%_
                 (lambda (_%L197171%_ _%L197173%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L197173%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L197171%_ '()))
                                     '())))))
                (_%__kont201212201213%_
                 (lambda (_%L197110%_ _%L197112%_ _%L197113%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L197113%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L197112%_ '()))
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
                                 (cons _%L197110%_ '()))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))))
                (_%__kont201214201215%_
                 (lambda (_%L197034%_ _%L197036%_)
                   (cons _%L197036%_ (cons _%L197034%_ (cons '#f '())))))
                (_%__kont201216201217%_
                 (lambda (_%L196984%_ _%L196986%_ _%L196987%_)
                   (cons _%L196987%_
                         (cons _%L196986%_
                               (cons '#f
                                     (cons 'signature:
                                           (cons _%L196984%_ '()))))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx201207201208%_))
                (let ((_%e196876197141%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx201207201208%_))))
                  (let ((_%tl196878197148%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e196876197141%_)))
                        (_%hd196877197145%_
                         (let ()
                           (declare (not safe))
                           (##car _%e196876197141%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl196878197148%_))
                        (let ((_%e196879197151%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl196878197148%_))))
                          (let ((_%tl196881197158%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e196879197151%_)))
                                (_%hd196880197155%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e196879197151%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl196881197158%_))
                                (let ((_%e196882197161%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl196881197158%_))))
                                  (let ((_%tl196884197168%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e196882197161%_)))
                                        (_%hd196883197165%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e196882197161%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl196884197168%_))
                                        (_%__kont201210201211%_
                                         _%hd196883197165%_
                                         _%hd196880197155%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl196884197168%_))
                                            (let ((_%e196897197086%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl196884197168%_))))
                                              (let ((_%tl196899197093%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e196897197086%_)))
                                                    (_%hd196898197090%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e196897197086%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd196898197090%_))
                                                    (let ((_%e196900197096%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd196898197090%_))))
                                                      (if (equal? _%e196900197096%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'signature:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl196899197093%_))
                      (let ((_%e196901197100%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl196899197093%_))))
                        (let ((_%tl196903197107%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196901197100%_)))
                              (_%hd196902197104%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196901197100%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl196903197107%_))
                              (_%__kont201212201213%_
                               _%hd196902197104%_
                               _%hd196883197165%_
                               _%hd196880197155%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _%hd196883197165%_))
                                  (let ((_%e196924196970%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd196883197165%_))))
                                    (declare (not safe))
                                    (_%g196872196933%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%g196872196933%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd196883197165%_))
                          (let ((_%e196924196970%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd196883197165%_))))
                            (if (equal? _%e196924196970%_ 'signature:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl196899197093%_))
                                    (_%__kont201216201217%_
                                     _%hd196898197090%_
                                     _%hd196880197155%_
                                     _%hd196877197145%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g196872196933%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g196872196933%_))))
                          (let () (declare (not safe)) (_%g196872196933%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-datum? _%hd196883197165%_))
                      (let ((_%e196924196970%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd196883197165%_))))
                        (if (equal? _%e196924196970%_ 'signature:)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl196899197093%_))
                                (_%__kont201216201217%_
                                 _%hd196898197090%_
                                 _%hd196880197155%_
                                 _%hd196877197145%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g196872196933%_)))
                            (let () (declare (not safe)) (_%g196872196933%_))))
                      (let () (declare (not safe)) (_%g196872196933%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-datum?
                                                           _%hd196883197165%_))
                                                        (let ((_%e196924196970%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd196883197165%_))))
                  (if (equal? _%e196924196970%_ 'signature:)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl196899197093%_))
                          (_%__kont201216201217%_
                           _%hd196898197090%_
                           _%hd196880197155%_
                           _%hd196877197145%_)
                          (let () (declare (not safe)) (_%g196872196933%_)))
                      (let () (declare (not safe)) (_%g196872196933%_))))
                (let () (declare (not safe)) (_%g196872196933%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd196883197165%_))
                                                (let ((_%e196924196970%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd196883197165%_))))
                                                  (declare (not safe))
                                                  (_%g196872196933%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g196872196933%_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl196881197158%_))
                                    (_%__kont201214201215%_
                                     _%hd196880197155%_
                                     _%hd196877197145%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g196872196933%_))))))
                        (let () (declare (not safe)) (_%g196872196933%_)))))
                (let () (declare (not safe)) (_%g196872196933%_)))))))
    (define |gxc[:0:]#@case-lambda|
      (lambda (_%$stx197192%_)
        (let* ((_%g197196197225%_
                (lambda (_%g197197197221%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197197197221%_))))
               (_%g197195197334%_
                (lambda (_%g197197197229%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197197197229%_))
                      (let ((_%e197199197232%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197197197229%_))))
                        (let ((_%hd197200197236%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197199197232%_)))
                              (_%tl197201197239%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197199197232%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl197201197239%_))
                              (let ((_g201837_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl197201197239%_
                                        '0))))
                                (begin
                                  (let ((_g201838_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g201837_)
                                               (##vector-length _g201837_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g201838_ 2)))
                                        (error "Context expects 2 values"
                                               _g201838_)))
                                  (let ((_%target197202197242%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g201837_ 0)))
                                        (_%tl197204197245%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g201837_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl197204197245%_))
                                        (letrec ((_%loop197205197248%_
                                                  (lambda (_%hd197203197252%_
                                                           _%clause197209197255%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd197203197252%_))
                                                        (let ((_%e197206197258%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd197203197252%_))))
                  (let ((_%lp-hd197207197262%_
                         (let ()
                           (declare (not safe))
                           (##car _%e197206197258%_)))
                        (_%lp-tl197208197265%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e197206197258%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%lp-hd197207197262%_))
                        (let ((_g201839_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%lp-hd197207197262%_
                                  '0))))
                          (begin
                            (let ((_g201840_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g201839_)
                                         (##vector-length _g201839_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g201840_ 2)))
                                  (error "Context expects 2 values"
                                         _g201840_)))
                            (let ((_%target197211197268%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g201839_ 0)))
                                  (_%tl197213197271%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g201839_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl197213197271%_))
                                  (letrec ((_%loop197214197274%_
                                            (lambda (_%hd197212197278%_
                                                     _%clause197218197281%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd197212197278%_))
                                                  (let ((_%e197215197284%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%hd197212197278%_))))
                                                    (let ((_%lp-hd197216197288%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e197215197284%_)))
                                                          (_%lp-tl197217197291%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e197215197284%_))))
                                                      (_%loop197214197274%_
                                                       _%lp-tl197217197291%_
                                                       (cons _%lp-hd197216197288%_
                                                             _%clause197218197281%_))))
                                                  (let ((_%clause197219197294%_
                                                         (reverse _%clause197218197281%_)))
                                                    (_%loop197205197248%_
                                                     _%lp-tl197208197265%_
                                                     (cons _%clause197219197294%_
                                                           _%clause197209197255%_)))))))
                                    (_%loop197214197274%_
                                     _%target197211197268%_
                                     '()))
                                  (_%g197196197225%_ _%g197197197229%_)))))
                        (_%g197196197225%_ _%g197197197229%_))))
                (let ((_%clause197210197298%_
                       (reverse _%clause197209197255%_)))
                  ((lambda (_%L197302%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'make-!case-lambda))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f '@list))
                                       (let ((__tmp201841
                                              (lambda (_%g197317197322%_
                                                       _%g197318197325%_)
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '@lambda))
                                                            (let ((__tmp201842
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g197319197328%_ _%g197320197331%_)
                             (cons _%g197319197328%_ _%g197320197331%_))))
                      (declare (not safe))
                      (__foldr1 __tmp201842 '() _%g197317197322%_)))
              _%g197318197325%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp201841
                                          '()
                                          _%L197302%_)))
                                 '())))
                   _%clause197210197298%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop197205197248%_
                                           _%target197202197242%_
                                           '()))
                                        (_%g197196197225%_
                                         _%g197197197229%_)))))
                              (_%g197196197225%_ _%g197197197229%_))))
                      (_%g197196197225%_ _%g197197197229%_)))))
          (_%g197195197334%_ _%$stx197192%_))))
    (define |gxc[:0:]#@kw-lambda|
      (lambda (_%$stx197340%_)
        (let* ((_%g197344197362%_
                (lambda (_%g197345197358%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197345197358%_))))
               (_%g197343197417%_
                (lambda (_%g197345197366%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197345197366%_))
                      (let ((_%e197348197369%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197345197366%_))))
                        (let ((_%hd197349197373%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197348197369%_)))
                              (_%tl197350197376%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197348197369%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197350197376%_))
                              (let ((_%e197351197379%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197350197376%_))))
                                (let ((_%hd197352197383%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197351197379%_)))
                                      (_%tl197353197386%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197351197379%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl197353197386%_))
                                      (let ((_%e197354197389%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl197353197386%_))))
                                        (let ((_%hd197355197393%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197354197389%_)))
                                              (_%tl197356197396%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197354197389%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl197356197396%_))
                                              ((lambda (_%L197399%_
                                                        _%L197401%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L197401%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L197399%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd197355197393%_
                                               _%hd197352197383%_)
                                              (_%g197344197362%_
                                               _%g197345197366%_))))
                                      (_%g197344197362%_ _%g197345197366%_))))
                              (_%g197344197362%_ _%g197345197366%_))))
                      (_%g197344197362%_ _%g197345197366%_)))))
          (_%g197343197417%_ _%$stx197340%_))))
    (define |gxc[:0:]#@kw-lambda-dispatch|
      (lambda (_%$stx197421%_)
        (let* ((_%g197425197443%_
                (lambda (_%g197426197439%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197426197439%_))))
               (_%g197424197498%_
                (lambda (_%g197426197447%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197426197447%_))
                      (let ((_%e197429197450%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197426197447%_))))
                        (let ((_%hd197430197454%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197429197450%_)))
                              (_%tl197431197457%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197429197450%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197431197457%_))
                              (let ((_%e197432197460%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197431197457%_))))
                                (let ((_%hd197433197464%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197432197460%_)))
                                      (_%tl197434197467%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197432197460%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl197434197467%_))
                                      (let ((_%e197435197470%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl197434197467%_))))
                                        (let ((_%hd197436197474%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197435197470%_)))
                                              (_%tl197437197477%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197435197470%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl197437197477%_))
                                              ((lambda (_%L197480%_
                                                        _%L197482%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda-primary))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L197482%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L197480%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd197436197474%_
                                               _%hd197433197464%_)
                                              (_%g197425197443%_
                                               _%g197426197447%_))))
                                      (_%g197425197443%_ _%g197426197447%_))))
                              (_%g197425197443%_ _%g197426197447%_))))
                      (_%g197425197443%_ _%g197426197447%_)))))
          (_%g197424197498%_ _%$stx197421%_))))
    (define |gxc[:0:]#declare-inline-rules!|
      (lambda (_%$stx197502%_)
        (let* ((_%g197506197535%_
                (lambda (_%g197507197531%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197507197531%_))))
               (_%g197505197635%_
                (lambda (_%g197507197539%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197507197539%_))
                      (let ((_%e197510197542%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197507197539%_))))
                        (let ((_%hd197511197546%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197510197542%_)))
                              (_%tl197512197549%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197510197542%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl197512197549%_))
                              (let ((_g201843_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl197512197549%_
                                        '0))))
                                (begin
                                  (let ((_g201844_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g201843_)
                                               (##vector-length _g201843_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g201844_ 2)))
                                        (error "Context expects 2 values"
                                               _g201844_)))
                                  (let ((_%target197513197552%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g201843_ 0)))
                                        (_%tl197515197555%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g201843_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl197515197555%_))
                                        (letrec ((_%loop197516197558%_
                                                  (lambda (_%hd197514197562%_
                                                           _%rule197520197565%_
                                                           _%proc197521197567%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd197514197562%_))
                                                        (let ((_%e197517197570%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd197514197562%_))))
                  (let ((_%lp-hd197518197574%_
                         (let ()
                           (declare (not safe))
                           (##car _%e197517197570%_)))
                        (_%lp-tl197519197577%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e197517197570%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd197518197574%_))
                        (let ((_%e197524197580%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd197518197574%_))))
                          (let ((_%hd197525197584%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e197524197580%_)))
                                (_%tl197526197587%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e197524197580%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl197526197587%_))
                                (let ((_%e197527197590%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl197526197587%_))))
                                  (let ((_%hd197528197594%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e197527197590%_)))
                                        (_%tl197529197597%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e197527197590%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl197529197597%_))
                                        (_%loop197516197558%_
                                         _%lp-tl197519197577%_
                                         (cons _%hd197528197594%_
                                               _%rule197520197565%_)
                                         (cons _%hd197525197584%_
                                               _%proc197521197567%_))
                                        (_%g197506197535%_
                                         _%g197507197539%_))))
                                (_%g197506197535%_ _%g197507197539%_))))
                        (_%g197506197535%_ _%g197507197539%_))))
                (let ((_%rule197522197600%_ (reverse _%rule197520197565%_))
                      (_%proc197523197603%_ (reverse _%proc197521197567%_)))
                  ((lambda (_%L197606%_ _%L197608%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L197606%_
                                _%L197608%_))
                             (let ((__tmp201845
                                    (lambda (_%g197623197627%_
                                             _%g197624197630%_
                                             _%g197625197632%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-inline-rule!))
                                                  (cons _%g197624197630%_
                                                        (cons _%g197623197627%_
                                                              '())))
                                            _%g197625197632%_))))
                               (declare (not safe))
                               (__foldr2
                                __tmp201845
                                '()
                                _%L197606%_
                                _%L197608%_)))))
                   _%rule197522197600%_
                   _%proc197523197603%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop197516197558%_
                                           _%target197513197552%_
                                           '()
                                           '()))
                                        (_%g197506197535%_
                                         _%g197507197539%_)))))
                              (_%g197506197535%_ _%g197507197539%_))))
                      (_%g197506197535%_ _%g197507197539%_)))))
          (_%g197505197635%_ _%$stx197502%_))))
    (define |gxc[:0:]#declare-inline-rule!|
      (lambda (_%$stx197640%_)
        (let* ((_%g197644197662%_
                (lambda (_%g197645197658%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197645197658%_))))
               (_%g197643197717%_
                (lambda (_%g197645197666%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197645197666%_))
                      (let ((_%e197648197669%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197645197666%_))))
                        (let ((_%hd197649197673%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197648197669%_)))
                              (_%tl197650197676%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197648197669%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197650197676%_))
                              (let ((_%e197651197679%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197650197676%_))))
                                (let ((_%hd197652197683%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197651197679%_)))
                                      (_%tl197653197686%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197651197679%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl197653197686%_))
                                      (let ((_%e197654197689%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl197653197686%_))))
                                        (let ((_%hd197655197693%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197654197689%_)))
                                              (_%tl197656197696%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197654197689%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl197656197696%_))
                                              ((lambda (_%L197699%_
                                                        _%L197701%_)
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
                                                   (cons _%L197701%_ '()))
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
                 (cons _%L197699%_ '())))
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
                                   (cons _%L197701%_ '()))
                             (cons '"; ignoring inline rule" '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd197655197693%_
                                               _%hd197652197683%_)
                                              (_%g197644197662%_
                                               _%g197645197666%_))))
                                      (_%g197644197662%_ _%g197645197666%_))))
                              (_%g197644197662%_ _%g197645197666%_))))
                      (_%g197644197662%_ _%g197645197666%_)))))
          (_%g197643197717%_ _%$stx197640%_))))
    (define |gxc[:0:]#declare-primitive-predicates|
      (lambda (_%$stx197721%_)
        (let* ((_%__stx201325201326%_ _%$stx197721%_)
               (_%g197726197751%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx201325201326%_)))))
          (let ((_%__kont201328201329%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont201330201331%_
                 (lambda (_%L197798%_ _%L197800%_ _%L197801%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-predicate))
                                     (cons _%L197801%_ (cons _%L197800%_ '())))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-predicates))
                                           _%L197798%_)
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx201325201326%_))
                (let ((_%e197728197827%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx201325201326%_))))
                  (let ((_%tl197730197834%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e197728197827%_)))
                        (_%hd197729197831%_
                         (let ()
                           (declare (not safe))
                           (##car _%e197728197827%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl197730197834%_))
                        (_%__kont201328201329%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl197730197834%_))
                            (let ((_%e197737197768%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl197730197834%_))))
                              (let ((_%tl197739197775%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e197737197768%_)))
                                    (_%hd197738197772%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e197737197768%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd197738197772%_))
                                    (let ((_%e197740197778%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%hd197738197772%_))))
                                      (let ((_%tl197742197785%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e197740197778%_)))
                                            (_%hd197741197782%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e197740197778%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl197742197785%_))
                                            (let ((_%e197743197788%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl197742197785%_))))
                                              (let ((_%tl197745197795%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e197743197788%_)))
                                                    (_%hd197744197792%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e197743197788%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl197745197795%_))
                                                    (_%__kont201330201331%_
                                                     _%tl197739197775%_
                                                     _%hd197744197792%_
                                                     _%hd197741197782%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g197726197751%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g197726197751%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g197726197751%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g197726197751%_))))))
                (let () (declare (not safe)) (_%g197726197751%_)))))))
    (define |gxc[:0:]#declare-primitive-procedures|
      (lambda (_%$stx197845%_)
        (let* ((_%__stx201369201370%_ _%$stx197845%_)
               (_%g197850197881%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx201369201370%_)))))
          (let ((_%__kont201372201373%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont201374201375%_
                 (lambda (_%L197948%_ _%L197950%_ _%L197951%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-procedure))
                                     (cons _%L197951%_
                                           (let ((__tmp201846
                                                  (lambda (_%g197971197974%_
                                                           _%g197972197977%_)
                                                    (cons _%g197971197974%_
                                                          _%g197972197977%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp201846
                                              '()
                                              _%L197950%_))))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-procedures))
                                           _%L197948%_)
                                     '()))))))
            (let ((_%__match201412201413%_
                   (lambda (_%e197858197888%_
                            _%hd197859197892%_
                            _%tl197860197895%_
                            _%e197861197898%_
                            _%hd197862197902%_
                            _%tl197863197905%_
                            _%e197864197908%_
                            _%hd197865197912%_
                            _%tl197866197915%_
                            _%__splice201376201377%_
                            _%target197867197918%_
                            _%tl197869197921%_)
                     (letrec ((_%loop197870197924%_
                               (lambda (_%hd197868197928%_ _%sig197874197931%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd197868197928%_))
                                     (let ((_%e197871197934%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%hd197868197928%_))))
                                       (let ((_%lp-tl197873197941%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e197871197934%_)))
                                             (_%lp-hd197872197938%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e197871197934%_))))
                                         (_%loop197870197924%_
                                          _%lp-tl197873197941%_
                                          (cons _%lp-hd197872197938%_
                                                _%sig197874197931%_))))
                                     (let ((_%sig197875197944%_
                                            (reverse _%sig197874197931%_)))
                                       (_%__kont201374201375%_
                                        _%tl197863197905%_
                                        _%sig197875197944%_
                                        _%hd197865197912%_))))))
                       (_%loop197870197924%_ _%target197867197918%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx201369201370%_))
                  (let ((_%e197852197987%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx201369201370%_))))
                    (let ((_%tl197854197994%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e197852197987%_)))
                          (_%hd197853197991%_
                           (let ()
                             (declare (not safe))
                             (##car _%e197852197987%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl197854197994%_))
                          (_%__kont201372201373%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197854197994%_))
                              (let ((_%e197861197898%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197854197994%_))))
                                (let ((_%tl197863197905%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197861197898%_)))
                                      (_%hd197862197902%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197861197898%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd197862197902%_))
                                      (let ((_%e197864197908%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd197862197902%_))))
                                        (let ((_%tl197866197915%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197864197908%_)))
                                              (_%hd197865197912%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197864197908%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl197866197915%_))
                                              (let ((_%__splice201376201377%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl197866197915%_
                                                        '0))))
                                                (let ((_%tl197869197921%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice201376201377%_
                                                          '1)))
                                                      (_%target197867197918%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice201376201377%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl197869197921%_))
                                                      (_%__match201412201413%_
                                                       _%e197852197987%_
                                                       _%hd197853197991%_
                                                       _%tl197854197994%_
                                                       _%e197861197898%_
                                                       _%hd197862197902%_
                                                       _%tl197863197905%_
                                                       _%e197864197908%_
                                                       _%hd197865197912%_
                                                       _%tl197866197915%_
                                                       _%__splice201376201377%_
                                                       _%target197867197918%_
                                                       _%tl197869197921%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g197850197881%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g197850197881%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g197850197881%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g197850197881%_))))))
                  (let () (declare (not safe)) (_%g197850197881%_))))))))
    (define |gxc[:0:]#declare-primitive-procedure|
      (lambda (_%$stx198006%_)
        (let* ((_%__stx201415201416%_ _%$stx198006%_)
               (_%g198011198058%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx201415201416%_)))))
          (let ((_%__kont201418201419%_
                 (lambda (_%L198220%_ _%L198222%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'declare-primitive-case-lambda))
                         (cons _%L198222%_
                               (let ((__tmp201847
                                      (lambda (_%g198242198245%_
                                               _%g198243198248%_)
                                        (cons _%g198242198245%_
                                              _%g198243198248%_))))
                                 (declare (not safe))
                                 (__foldr1 __tmp201847 '() _%L198220%_))))))
                (_%__kont201422201423%_
                 (lambda (_%L198115%_ _%L198117%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'declare-primitive-lambda))
                         (cons _%L198117%_
                               (let ((__tmp201848
                                      (lambda (_%g198134198137%_
                                               _%g198135198140%_)
                                        (cons _%g198134198137%_
                                              _%g198135198140%_))))
                                 (declare (not safe))
                                 (__foldr1 __tmp201848 '() _%L198115%_)))))))
            (let* ((_%__match201482201483%_
                    (lambda (_%e198038198065%_
                             _%hd198039198069%_
                             _%tl198040198072%_
                             _%e198041198075%_
                             _%hd198042198079%_
                             _%tl198043198082%_
                             _%__splice201424201425%_
                             _%target198044198085%_
                             _%tl198046198088%_)
                      (letrec ((_%loop198047198091%_
                                (lambda (_%hd198045198095%_
                                         _%sig198051198098%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd198045198095%_))
                                      (let ((_%e198048198101%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd198045198095%_))))
                                        (let ((_%lp-tl198050198108%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e198048198101%_)))
                                              (_%lp-hd198049198105%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e198048198101%_))))
                                          (_%loop198047198091%_
                                           _%lp-tl198050198108%_
                                           (cons _%lp-hd198049198105%_
                                                 _%sig198051198098%_))))
                                      (let ((_%sig198052198111%_
                                             (reverse _%sig198051198098%_)))
                                        (_%__kont201422201423%_
                                         _%sig198052198111%_
                                         _%hd198042198079%_))))))
                        (_%loop198047198091%_ _%target198044198085%_ '()))))
                   (_%__match201474201475%_
                    (lambda (_%e198038198065%_
                             _%hd198039198069%_
                             _%tl198040198072%_
                             _%e198041198075%_
                             _%hd198042198079%_
                             _%tl198043198082%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%tl198043198082%_))
                          (let ((_%__splice201424201425%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _%tl198043198082%_
                                    '0))))
                            (let ((_%tl198046198088%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice201424201425%_
                                      '1)))
                                  (_%target198044198085%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice201424201425%_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl198046198088%_))
                                  (_%__match201482201483%_
                                   _%e198038198065%_
                                   _%hd198039198069%_
                                   _%tl198040198072%_
                                   _%e198041198075%_
                                   _%hd198042198079%_
                                   _%tl198043198082%_
                                   _%__splice201424201425%_
                                   _%target198044198085%_
                                   _%tl198046198088%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g198011198058%_)))))
                          (let () (declare (not safe)) (_%g198011198058%_)))))
                   (_%__match201462201463%_
                    (lambda (_%e198015198150%_
                             _%hd198016198154%_
                             _%tl198017198157%_
                             _%e198018198160%_
                             _%hd198019198164%_
                             _%tl198020198167%_
                             _%e198021198170%_
                             _%hd198022198174%_
                             _%tl198023198177%_
                             _%e198024198180%_
                             _%hd198025198184%_
                             _%tl198026198187%_
                             _%__splice201420201421%_
                             _%target198027198190%_
                             _%tl198029198193%_)
                      (letrec ((_%loop198030198196%_
                                (lambda (_%hd198028198200%_
                                         _%sig198034198203%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd198028198200%_))
                                      (let ((_%e198031198206%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd198028198200%_))))
                                        (let ((_%lp-tl198033198213%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e198031198206%_)))
                                              (_%lp-hd198032198210%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e198031198206%_))))
                                          (_%loop198030198196%_
                                           _%lp-tl198033198213%_
                                           (cons _%lp-hd198032198210%_
                                                 _%sig198034198203%_))))
                                      (let ((_%sig198035198216%_
                                             (reverse _%sig198034198203%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl198023198177%_))
                                            (_%__kont201418201419%_
                                             _%sig198035198216%_
                                             _%hd198019198164%_)
                                            (_%__match201474201475%_
                                             _%e198015198150%_
                                             _%hd198016198154%_
                                             _%tl198017198157%_
                                             _%e198018198160%_
                                             _%hd198019198164%_
                                             _%tl198020198167%_)))))))
                        (_%loop198030198196%_ _%target198027198190%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx201415201416%_))
                  (let ((_%e198015198150%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx201415201416%_))))
                    (let ((_%tl198017198157%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e198015198150%_)))
                          (_%hd198016198154%_
                           (let ()
                             (declare (not safe))
                             (##car _%e198015198150%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl198017198157%_))
                          (let ((_%e198018198160%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl198017198157%_))))
                            (let ((_%tl198020198167%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e198018198160%_)))
                                  (_%hd198019198164%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e198018198160%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl198020198167%_))
                                  (let ((_%e198021198170%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl198020198167%_))))
                                    (let ((_%tl198023198177%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e198021198170%_)))
                                          (_%hd198022198174%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e198021198170%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%hd198022198174%_))
                                          (let ((_%e198024198180%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%hd198022198174%_))))
                                            (let ((_%tl198026198187%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e198024198180%_)))
                                                  (_%hd198025198184%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e198024198180%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%hd198025198184%_))
                                                  (if (let ((__tmp201849
                                                             |gxc[1]#_g201850_|))
                                                        (declare (not safe))
                                                        (gx#free-identifier=?
                                                         __tmp201849
                                                         _%hd198025198184%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair/null?
                                                             _%tl198026198187%_))
                                                          (let ((_%__splice201420201421%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _%tl198026198187%_ '0))))
                    (let ((_%tl198029198193%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice201420201421%_ '1)))
                          (_%target198027198190%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice201420201421%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl198029198193%_))
                          (_%__match201462201463%_
                           _%e198015198150%_
                           _%hd198016198154%_
                           _%tl198017198157%_
                           _%e198018198160%_
                           _%hd198019198164%_
                           _%tl198020198167%_
                           _%e198021198170%_
                           _%hd198022198174%_
                           _%tl198023198177%_
                           _%e198024198180%_
                           _%hd198025198184%_
                           _%tl198026198187%_
                           _%__splice201420201421%_
                           _%target198027198190%_
                           _%tl198029198193%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl198020198167%_))
                              (let ((_%__splice201424201425%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl198020198167%_
                                        '0))))
                                (let ((_%tl198046198088%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice201424201425%_
                                          '1)))
                                      (_%target198044198085%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice201424201425%_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl198046198088%_))
                                      (_%__match201482201483%_
                                       _%e198015198150%_
                                       _%hd198016198154%_
                                       _%tl198017198157%_
                                       _%e198018198160%_
                                       _%hd198019198164%_
                                       _%tl198020198167%_
                                       _%__splice201424201425%_
                                       _%target198044198085%_
                                       _%tl198046198088%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g198011198058%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g198011198058%_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl198020198167%_))
                      (let ((_%__splice201424201425%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl198020198167%_
                                '0))))
                        (let ((_%tl198046198088%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice201424201425%_ '1)))
                              (_%target198044198085%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice201424201425%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl198046198088%_))
                              (_%__match201482201483%_
                               _%e198015198150%_
                               _%hd198016198154%_
                               _%tl198017198157%_
                               _%e198018198160%_
                               _%hd198019198164%_
                               _%tl198020198167%_
                               _%__splice201424201425%_
                               _%target198044198085%_
                               _%tl198046198088%_)
                              (let ()
                                (declare (not safe))
                                (_%g198011198058%_)))))
                      (let () (declare (not safe)) (_%g198011198058%_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _%tl198020198167%_))
                  (let ((_%__splice201424201425%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _%tl198020198167%_ '0))))
                    (let ((_%tl198046198088%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice201424201425%_ '1)))
                          (_%target198044198085%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice201424201425%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl198046198088%_))
                          (_%__match201482201483%_
                           _%e198015198150%_
                           _%hd198016198154%_
                           _%tl198017198157%_
                           _%e198018198160%_
                           _%hd198019198164%_
                           _%tl198020198167%_
                           _%__splice201424201425%_
                           _%target198044198085%_
                           _%tl198046198088%_)
                          (let () (declare (not safe)) (_%g198011198058%_)))))
                  (let () (declare (not safe)) (_%g198011198058%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl198020198167%_))
                                                      (let ((_%__splice201424201425%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl198020198167%_ '0))))
                (let ((_%tl198046198088%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice201424201425%_ '1)))
                      (_%target198044198085%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice201424201425%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl198046198088%_))
                      (_%__match201482201483%_
                       _%e198015198150%_
                       _%hd198016198154%_
                       _%tl198017198157%_
                       _%e198018198160%_
                       _%hd198019198164%_
                       _%tl198020198167%_
                       _%__splice201424201425%_
                       _%target198044198085%_
                       _%tl198046198088%_)
                      (let () (declare (not safe)) (_%g198011198058%_)))))
              (let () (declare (not safe)) (_%g198011198058%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl198020198167%_))
                                              (let ((_%__splice201424201425%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl198020198167%_
                                                        '0))))
                                                (let ((_%tl198046198088%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice201424201425%_
                                                          '1)))
                                                      (_%target198044198085%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice201424201425%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl198046198088%_))
                                                      (_%__match201482201483%_
                                                       _%e198015198150%_
                                                       _%hd198016198154%_
                                                       _%tl198017198157%_
                                                       _%e198018198160%_
                                                       _%hd198019198164%_
                                                       _%tl198020198167%_
                                                       _%__splice201424201425%_
                                                       _%target198044198085%_
                                                       _%tl198046198088%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g198011198058%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g198011198058%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl198020198167%_))
                                      (let ((_%__splice201424201425%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl198020198167%_
                                                '0))))
                                        (let ((_%tl198046198088%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice201424201425%_
                                                  '1)))
                                              (_%target198044198085%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice201424201425%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl198046198088%_))
                                              (_%__match201482201483%_
                                               _%e198015198150%_
                                               _%hd198016198154%_
                                               _%tl198017198157%_
                                               _%e198018198160%_
                                               _%hd198019198164%_
                                               _%tl198020198167%_
                                               _%__splice201424201425%_
                                               _%target198044198085%_
                                               _%tl198046198088%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g198011198058%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g198011198058%_))))))
                          (let () (declare (not safe)) (_%g198011198058%_)))))
                  (let () (declare (not safe)) (_%g198011198058%_))))))))
    (define |gxc[1]#verify-procedure!|
      (lambda (_%ctx199405%_ _%id199407%_)
        (let ((_%proc199411%_
               (let ((__tmp201851
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id199407%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp201851))))
          (if (procedure? _%proc199411%_)
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown procedure"
                 _%ctx199405%_
                 _%id199407%_))))))
    (define |gxc[1]#verify-class!|
      (lambda (_%ctx199396%_ _%id199398%_)
        (let ((_%klass199402%_
               (let ((__tmp201852
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id199398%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp201852))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass199402%_ 'class))
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown class"
                 _%ctx199396%_
                 _%id199398%_))))))
    (define |gxc[1]#parse-signature|
      (lambda (_%ctx198646%_ _%proc198648%_ _%sig198649%_)
        (letrec ((_%signature-arity198651%_
                  (lambda (_%args199328%_)
                    (let _%loop199331%_ ((_%rest199334%_ _%args199328%_)
                                         (_%count199336%_ '0))
                      (let* ((_%rest199337199348%_ _%rest199334%_)
                             (_%E199341199354%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%rest199337199348%_
                                         '([_ . rest])
                                         '([])
                                         '(_)))
                                '#!void)))
                        (let ((_%K199344199385%_
                               (lambda (_%rest199382%_)
                                 (_%loop199331%_
                                  _%rest199382%_
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ _%count199336%_ '1)))))
                              (_%K199343199374%_ (lambda () _%count199336%_))
                              (_%K199342199362%_
                               (lambda () (cons _%count199336%_ '()))))
                          (let ((_%try-match199339199378%_
                                 (lambda ()
                                   (if (let ()
                                         (declare (not safe))
                                         (##null? _%rest199337199348%_))
                                       (_%K199343199374%_)
                                       (_%K199342199362%_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%rest199337199348%_))
                                (let* ((_%tl199346199389%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest199337199348%_)))
                                       (_%rest199393%_ _%tl199346199389%_))
                                  (_%K199344199385%_ _%rest199393%_))
                                (_%try-match199339199378%_))))))))
                 (_%make-signature198653%_
                  (lambda (_%args199210%_
                           _%return199212%_
                           _%effect199213%_
                           _%unchecked199214%_)
                    (let ((__tmp201853
                           (lambda (_%g199215199217%_)
                             (|gxc[1]#verify-class!|
                              _%ctx198646%_
                              _%g199215199217%_))))
                      (declare (not safe))
                      (gx#stx-for-each1 __tmp201853 _%args199210%_))
                    (|gxc[1]#verify-class!| _%ctx198646%_ _%return199212%_)
                    (if _%unchecked199214%_
                        (|gxc[1]#verify-procedure!|
                         _%ctx198646%_
                         _%unchecked199214%_)
                        '#!void)
                    (let ((_%arity199221%_
                           (_%signature-arity198651%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-map1 gx#stx-e _%args199210%_)))))
                      (if _%effect199213%_
                          (let ((_%effect199224%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax->datum _%effect199213%_))))
                            (if (and (list? _%effect199224%_)
                                     (let ()
                                       (declare (not safe))
                                       (__andmap1 symbol? _%effect199224%_)))
                                '#!void
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"bad effect"
                                   _%ctx198646%_
                                   _%proc198648%_
                                   _%effect199224%_))))
                          '#!void)
                      (cons _%arity199221%_
                            (cons (let* ((_%g199227199250%_
                                          (lambda (_%g199228199246%_)
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g199228199246%_))))
                                         (_%g199226199324%_
                                          (lambda (_%g199228199254%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%g199228199254%_))
                                                (let ((_%e199233199257%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%g199228199254%_))))
                                                  (let ((_%hd199234199261%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e199233199257%_)))
                                                        (_%tl199235199264%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e199233199257%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl199235199264%_))
                                                        (let ((_%e199236199267%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl199235199264%_))))
                  (let ((_%hd199237199271%_
                         (let ()
                           (declare (not safe))
                           (##car _%e199236199267%_)))
                        (_%tl199238199274%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e199236199267%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl199238199274%_))
                        (let ((_%e199239199277%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl199238199274%_))))
                          (let ((_%hd199240199281%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e199239199277%_)))
                                (_%tl199241199284%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e199239199277%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl199241199284%_))
                                (let ((_%e199242199287%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl199241199284%_))))
                                  (let ((_%hd199243199291%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e199242199287%_)))
                                        (_%tl199244199294%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e199242199287%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl199244199294%_))
                                        ((lambda (_%L199297%_
                                                  _%L199299%_
                                                  _%L199300%_
                                                  _%L199301%_)
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
                           (cons _%L199301%_ '()))
                     (cons 'return:
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%L199300%_ '()))
                                 (cons 'effect:
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'quote))
                                                   (cons _%L199299%_ '()))
                                             (cons 'unchecked:
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'quote))
                       (cons _%L199297%_ '()))
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
                                         _%hd199243199291%_
                                         _%hd199240199281%_
                                         _%hd199237199271%_
                                         _%hd199234199261%_)
                                        (_%g199227199250%_
                                         _%g199228199254%_))))
                                (_%g199227199250%_ _%g199228199254%_))))
                        (_%g199227199250%_ _%g199228199254%_))))
                (_%g199227199250%_ _%g199228199254%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g199227199250%_
                                                 _%g199228199254%_)))))
                                    (_%g199226199324%_
                                     (list _%args199210%_
                                           _%return199212%_
                                           _%effect199213%_
                                           _%unchecked199214%_)))
                                  '()))))))
          (|gxc[1]#verify-procedure!| _%ctx198646%_ _%proc198648%_)
          (let* ((_%__stx201493201494%_ _%sig198649%_)
                 (_%g198660198763%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx201493201494%_)))))
            (let ((_%__kont201496201497%_
                   (lambda (_%L199191%_ _%L199193%_)
                     (_%make-signature198653%_
                      _%L199193%_
                      _%L199191%_
                      '#f
                      '#f)))
                  (_%__kont201498201499%_
                   (lambda (_%L199142%_ _%L199144%_ _%L199145%_)
                     (_%make-signature198653%_
                      _%L199145%_
                      _%L199144%_
                      _%L199142%_
                      '#f)))
                  (_%__kont201500201501%_
                   (lambda (_%L199066%_ _%L199068%_ _%L199069%_)
                     (_%make-signature198653%_
                      _%L199069%_
                      _%L199068%_
                      _%L199066%_
                      (let ((__tmp201854
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc198648%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp201854)))))
                  (_%__kont201502201503%_
                   (lambda (_%L198972%_ _%L198974%_ _%L198975%_ _%L198976%_)
                     (_%make-signature198653%_
                      _%L198976%_
                      _%L198975%_
                      '#f
                      (let () (declare (not safe)) (gx#stx-e _%L198972%_)))))
                  (_%__kont201504201505%_
                   (lambda (_%L198879%_ _%L198881%_)
                     (_%make-signature198653%_
                      _%L198881%_
                      _%L198879%_
                      '#f
                      (let ((__tmp201855
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc198648%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp201855)))))
                  (_%__kont201506201507%_
                   (lambda (_%L198814%_ _%L198816%_ _%L198817%_)
                     (_%make-signature198653%_
                      _%L198817%_
                      _%L198816%_
                      '#f
                      (let () (declare (not safe)) (gx#stx-e _%L198814%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx201493201494%_))
                  (let ((_%e198664199171%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx201493201494%_))))
                    (let ((_%tl198666199178%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e198664199171%_)))
                          (_%hd198665199175%_
                           (let ()
                             (declare (not safe))
                             (##car _%e198664199171%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl198666199178%_))
                          (let ((_%e198667199181%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl198666199178%_))))
                            (let ((_%tl198669199188%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e198667199181%_)))
                                  (_%hd198668199185%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e198667199181%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl198669199188%_))
                                  (_%__kont201496201497%_
                                   _%hd198668199185%_
                                   _%hd198665199175%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl198669199188%_))
                                      (let ((_%e198679199118%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl198669199188%_))))
                                        (let ((_%tl198681199125%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e198679199118%_)))
                                              (_%hd198680199122%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e198679199118%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum?
                                                 _%hd198680199122%_))
                                              (let ((_%e198682199128%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd198680199122%_))))
                                                (if (equal? _%e198682199128%_
                                                            'effect:)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl198681199125%_))
                                                        (let ((_%e198683199132%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl198681199125%_))))
                  (let ((_%tl198685199139%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e198683199132%_)))
                        (_%hd198684199136%_
                         (let ()
                           (declare (not safe))
                           (##car _%e198683199132%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl198685199139%_))
                        (_%__kont201498201499%_
                         _%hd198684199136%_
                         _%hd198668199185%_
                         _%hd198665199175%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl198685199139%_))
                            (let ((_%e198702199052%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl198685199139%_))))
                              (let ((_%tl198704199059%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e198702199052%_)))
                                    (_%hd198703199056%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e198702199052%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-datum? _%hd198703199056%_))
                                    (let ((_%e198705199062%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd198703199056%_))))
                                      (if (equal? _%e198705199062%_
                                                  'unchecked:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl198704199059%_))
                                              (_%__kont201500201501%_
                                               _%hd198684199136%_
                                               _%hd198668199185%_
                                               _%hd198665199175%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl198704199059%_))
                                                  (let ((_%e198727198962%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl198704199059%_))))
                                                    (let ((_%tl198729198969%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e198727198962%_)))
                                                          (_%hd198728198966%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e198727198962%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl198729198969%_))
                                                          (_%__kont201502201503%_
                                                           _%hd198728198966%_
                                                           _%hd198684199136%_
                                                           _%hd198668199185%_
                                                           _%hd198665199175%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g198660198763%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g198660198763%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g198660198763%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g198660198763%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g198660198763%_))))))
                (let () (declare (not safe)) (_%g198660198763%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (equal? _%e198682199128%_
                                                                'unchecked:)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl198681199125%_))
                                                            (_%__kont201504201505%_
                                                             _%hd198668199185%_
                                                             _%hd198665199175%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl198681199125%_))
                        (let ((_%e198755198804%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl198681199125%_))))
                          (let ((_%tl198757198811%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e198755198804%_)))
                                (_%hd198756198808%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e198755198804%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl198757198811%_))
                                (_%__kont201506201507%_
                                 _%hd198756198808%_
                                 _%hd198668199185%_
                                 _%hd198665199175%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g198660198763%_)))))
                        (let () (declare (not safe)) (_%g198660198763%_))))
                (let () (declare (not safe)) (_%g198660198763%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g198660198763%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g198660198763%_))))))
                          (let () (declare (not safe)) (_%g198660198763%_)))))
                  (let () (declare (not safe)) (_%g198660198763%_))))))))
    (define |gxc[1]#signature->unchecked-signature|
      (lambda (_%sig198257%_)
        (let* ((_%g198260198340%_
                (lambda (_%g198261198336%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198261198336%_))))
               (_%g198259198642%_
                (lambda (_%g198261198344%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198261198344%_))
                      (let ((_%e198267198347%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g198261198344%_))))
                        (let ((_%hd198268198351%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198267198347%_)))
                              (_%tl198269198354%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198267198347%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198269198354%_))
                              (let ((_%e198270198357%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl198269198354%_))))
                                (let ((_%hd198271198361%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198270198357%_)))
                                      (_%tl198272198364%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198270198357%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _%hd198271198361%_))
                                      (let ((_%e198273198367%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd198271198361%_))))
                                        (if (equal? _%e198273198367%_
                                                    'arguments:)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl198272198364%_))
                                                (let ((_%e198274198371%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl198272198364%_))))
                                                  (let ((_%hd198275198375%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e198274198371%_)))
                                                        (_%tl198276198378%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e198274198371%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd198275198375%_))
                                                        (let ((_%e198277198381%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd198275198375%_))))
                  (let ((_%hd198278198385%_
                         (let ()
                           (declare (not safe))
                           (##car _%e198277198381%_)))
                        (_%tl198279198388%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e198277198381%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%hd198278198385%_))
                        (if (let ((__tmp201856 |gxc[1]#_g201857_|))
                              (declare (not safe))
                              (gx#free-identifier=?
                               __tmp201856
                               _%hd198278198385%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl198279198388%_))
                                (let ((_%e198280198391%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl198279198388%_))))
                                  (let ((_%hd198281198395%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e198280198391%_)))
                                        (_%tl198282198398%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e198280198391%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl198282198398%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl198276198378%_))
                                            (let ((_%e198283198401%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl198276198378%_))))
                                              (let ((_%hd198284198405%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e198283198401%_)))
                                                    (_%tl198285198408%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e198283198401%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd198284198405%_))
                                                    (let ((_%e198286198411%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd198284198405%_))))
                                                      (if (equal? _%e198286198411%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'return:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl198285198408%_))
                      (let ((_%e198287198415%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl198285198408%_))))
                        (let ((_%hd198288198419%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198287198415%_)))
                              (_%tl198289198422%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198287198415%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd198288198419%_))
                              (let ((_%e198290198425%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%hd198288198419%_))))
                                (let ((_%hd198291198429%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198290198425%_)))
                                      (_%tl198292198432%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198290198425%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd198291198429%_))
                                      (if (let ((__tmp201858
                                                 |gxc[1]#_g201859_|))
                                            (declare (not safe))
                                            (gx#free-identifier=?
                                             __tmp201858
                                             _%hd198291198429%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl198292198432%_))
                                              (let ((_%e198293198435%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl198292198432%_))))
                                                (let ((_%hd198294198439%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e198293198435%_)))
                                                      (_%tl198295198442%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e198293198435%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl198295198442%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl198289198422%_))
                                                          (let ((_%e198296198445%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl198289198422%_))))
                    (let ((_%hd198297198449%_
                           (let ()
                             (declare (not safe))
                             (##car _%e198296198445%_)))
                          (_%tl198298198452%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e198296198445%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd198297198449%_))
                          (let ((_%e198299198455%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd198297198449%_))))
                            (if (equal? _%e198299198455%_ 'effect:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl198298198452%_))
                                    (let ((_%e198300198459%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%tl198298198452%_))))
                                      (let ((_%hd198301198463%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e198300198459%_)))
                                            (_%tl198302198466%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e198300198459%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd198301198463%_))
                                            (let ((_%e198303198469%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%hd198301198463%_))))
                                              (let ((_%hd198304198473%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e198303198469%_)))
                                                    (_%tl198305198476%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e198303198469%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd198304198473%_))
                                                    (if (let ((__tmp201860
                                                               |gxc[1]#_g201861_|))
                                                          (declare (not safe))
                                                          (gx#free-identifier=?
                                                           __tmp201860
                                                           _%hd198304198473%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl198305198476%_))
                                                            (let ((_%e198306198479%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%tl198305198476%_))))
                      (let ((_%hd198307198483%_
                             (let ()
                               (declare (not safe))
                               (##car _%e198306198479%_)))
                            (_%tl198308198486%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e198306198479%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl198308198486%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl198302198466%_))
                                (let ((_%e198309198489%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl198302198466%_))))
                                  (let ((_%hd198310198493%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e198309198489%_)))
                                        (_%tl198311198496%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e198309198489%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _%hd198310198493%_))
                                        (let ((_%e198312198499%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd198310198493%_))))
                                          (if (equal? _%e198312198499%_
                                                      'unchecked:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl198311198496%_))
                                                  (let ((_%e198313198503%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl198311198496%_))))
                                                    (let ((_%hd198314198507%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e198313198503%_)))
                                                          (_%tl198315198510%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e198313198503%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd198314198507%_))
                                                          (let ((_%e198316198513%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%hd198314198507%_))))
                    (let ((_%hd198317198517%_
                           (let ()
                             (declare (not safe))
                             (##car _%e198316198513%_)))
                          (_%tl198318198520%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e198316198513%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd198317198517%_))
                          (if (let ((__tmp201862 |gxc[1]#_g201863_|))
                                (declare (not safe))
                                (gx#free-identifier=?
                                 __tmp201862
                                 _%hd198317198517%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl198318198520%_))
                                  (let ((_%e198319198523%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl198318198520%_))))
                                    (let ((_%hd198320198527%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e198319198523%_)))
                                          (_%tl198321198530%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e198319198523%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl198321198530%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl198315198510%_))
                                              (let ((_%e198322198533%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl198315198510%_))))
                                                (let ((_%hd198323198537%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e198322198533%_)))
                                                      (_%tl198324198540%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e198322198533%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-datum?
                                                         _%hd198323198537%_))
                                                      (let ((_%e198325198543%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd198323198537%_))))
                (if (equal? _%e198325198543%_ 'origin:)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl198324198540%_))
                        (let ((_%e198326198547%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl198324198540%_))))
                          (let ((_%hd198327198551%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e198326198547%_)))
                                (_%tl198328198554%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e198326198547%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd198327198551%_))
                                (let ((_%e198329198557%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%hd198327198551%_))))
                                  (let ((_%hd198330198561%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e198329198557%_)))
                                        (_%tl198331198564%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e198329198557%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd198330198561%_))
                                        (if (let ((__tmp201864
                                                   |gxc[1]#_g201865_|))
                                              (declare (not safe))
                                              (gx#free-identifier=?
                                               __tmp201864
                                               _%hd198330198561%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl198331198564%_))
                                                (let ((_%e198332198567%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl198331198564%_))))
                                                  (let ((_%hd198333198571%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e198332198567%_)))
                                                        (_%tl198334198574%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e198332198567%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl198334198574%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl198328198554%_))
                                                            ((lambda (_%L198577%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%L198579%_
                              _%L198580%_
                              _%L198581%_
                              _%L198582%_)
                       (if (let () (declare (not safe)) (gx#stx-e _%L198579%_))
                           (cons _%L198579%_
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
                       (cons _%L198581%_ '()))
                 (cons 'origin:
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L198577%_ '()))
                             '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           '#f))
                     _%hd198333198571%_
                     _%hd198320198527%_
                     _%hd198307198483%_
                     _%hd198294198439%_
                     _%hd198281198395%_)
                    (_%g198260198340%_ _%g198261198344%_))
                (_%g198260198340%_ _%g198261198344%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g198260198340%_
                                                 _%g198261198344%_))
                                            (_%g198260198340%_
                                             _%g198261198344%_))
                                        (_%g198260198340%_
                                         _%g198261198344%_))))
                                (_%g198260198340%_ _%g198261198344%_))))
                        (_%g198260198340%_ _%g198261198344%_))
                    (_%g198260198340%_ _%g198261198344%_)))
              (_%g198260198340%_ _%g198261198344%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g198260198340%_
                                               _%g198261198344%_))
                                          (_%g198260198340%_
                                           _%g198261198344%_))))
                                  (_%g198260198340%_ _%g198261198344%_))
                              (_%g198260198340%_ _%g198261198344%_))
                          (_%g198260198340%_ _%g198261198344%_))))
                  (_%g198260198340%_ _%g198261198344%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g198260198340%_
                                                   _%g198261198344%_))
                                              (_%g198260198340%_
                                               _%g198261198344%_)))
                                        (_%g198260198340%_
                                         _%g198261198344%_))))
                                (_%g198260198340%_ _%g198261198344%_))
                            (_%g198260198340%_ _%g198261198344%_))))
                    (_%g198260198340%_ _%g198261198344%_))
                (_%g198260198340%_ _%g198261198344%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g198260198340%_
                                                     _%g198261198344%_))))
                                            (_%g198260198340%_
                                             _%g198261198344%_))))
                                    (_%g198260198340%_ _%g198261198344%_))
                                (_%g198260198340%_ _%g198261198344%_)))
                          (_%g198260198340%_ _%g198261198344%_))))
                  (_%g198260198340%_ _%g198261198344%_))
              (_%g198260198340%_ _%g198261198344%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g198260198340%_
                                               _%g198261198344%_))
                                          (_%g198260198340%_
                                           _%g198261198344%_))
                                      (_%g198260198340%_ _%g198261198344%_))))
                              (_%g198260198340%_ _%g198261198344%_))))
                      (_%g198260198340%_ _%g198261198344%_))
                  (_%g198260198340%_ _%g198261198344%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g198260198340%_
                                                     _%g198261198344%_))))
                                            (_%g198260198340%_
                                             _%g198261198344%_))
                                        (_%g198260198340%_
                                         _%g198261198344%_))))
                                (_%g198260198340%_ _%g198261198344%_))
                            (_%g198260198340%_ _%g198261198344%_))
                        (_%g198260198340%_ _%g198261198344%_))))
                (_%g198260198340%_ _%g198261198344%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g198260198340%_
                                                 _%g198261198344%_))
                                            (_%g198260198340%_
                                             _%g198261198344%_)))
                                      (_%g198260198340%_ _%g198261198344%_))))
                              (_%g198260198340%_ _%g198261198344%_))))
                      (_%g198260198340%_ _%g198261198344%_)))))
          (_%g198259198642%_ _%sig198257%_))))
    (define |gxc[:0:]#declare-primitive-predicate|
      (lambda (_%stx199414%_)
        (let* ((_%g199417199435%_
                (lambda (_%g199418199431%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g199418199431%_))))
               (_%g199416199490%_
                (lambda (_%g199418199439%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g199418199439%_))
                      (let ((_%e199421199442%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g199418199439%_))))
                        (let ((_%hd199422199446%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199421199442%_)))
                              (_%tl199423199449%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199421199442%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl199423199449%_))
                              (let ((_%e199424199452%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl199423199449%_))))
                                (let ((_%hd199425199456%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e199424199452%_)))
                                      (_%tl199426199459%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e199424199452%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl199426199459%_))
                                      (let ((_%e199427199462%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl199426199459%_))))
                                        (let ((_%hd199428199466%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e199427199462%_)))
                                              (_%tl199429199469%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e199427199462%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl199429199469%_))
                                              ((lambda (_%L199472%_
                                                        _%L199474%_)
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%L199474%_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%L199472%_)))
                                                     (begin
                                                       (|gxc[1]#verify-procedure!|
                                                        _%stx199414%_
                                                        _%L199474%_)
                                                       (|gxc[1]#verify-class!|
                                                        _%stx199414%_
                                                        _%L199472%_)
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'declare-type))
                     (cons _%L199474%_
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
                                                   (cons _%L199472%_ '()))
                                             '()))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g199417199435%_
                                                      _%g199418199439%_)))
                                               _%hd199428199466%_
                                               _%hd199425199456%_)
                                              (_%g199417199435%_
                                               _%g199418199439%_))))
                                      (_%g199417199435%_ _%g199418199439%_))))
                              (_%g199417199435%_ _%g199418199439%_))))
                      (_%g199417199435%_ _%g199418199439%_)))))
          (_%g199416199490%_ _%stx199414%_))))
    (define |gxc[:0:]#declare-primitive-lambda|
      (lambda (_%stx199494%_)
        (let* ((_%g199497199521%_
                (lambda (_%g199498199517%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g199498199517%_))))
               (_%g199496199804%_
                (lambda (_%g199498199525%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g199498199525%_))
                      (let ((_%e199501199528%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g199498199525%_))))
                        (let ((_%hd199502199532%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199501199528%_)))
                              (_%tl199503199535%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199501199528%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl199503199535%_))
                              (let ((_%e199504199538%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl199503199535%_))))
                                (let ((_%hd199505199542%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e199504199538%_)))
                                      (_%tl199506199545%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e199504199538%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl199506199545%_))
                                      (let ((_g201866_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl199506199545%_
                                                '0))))
                                        (begin
                                          (let ((_g201867_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g201866_)
                                                       (##vector-length
                                                        _g201866_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g201867_ 2)))
                                                (error "Context expects 2 values"
                                                       _g201867_)))
                                          (let ((_%target199507199548%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g201866_ 0)))
                                                (_%tl199509199551%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g201866_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl199509199551%_))
                                                (letrec ((_%loop199510199554%_
                                                          (lambda (_%hd199508199558%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%signature199514199561%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd199508199558%_))
                        (let ((_%e199511199564%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd199508199558%_))))
                          (let ((_%lp-hd199512199568%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e199511199564%_)))
                                (_%lp-tl199513199571%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e199511199564%_))))
                            (_%loop199510199554%_
                             _%lp-tl199513199571%_
                             (cons _%lp-hd199512199568%_
                                   _%signature199514199561%_))))
                        (let ((_%signature199515199574%_
                               (reverse _%signature199514199561%_)))
                          ((lambda (_%L199578%_ _%L199580%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L199580%_))
                                 (let* ((_%g199598199613%_
                                         (lambda (_%g199599199609%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g199599199609%_))))
                                        (_%g199597199792%_
                                         (lambda (_%g199599199617%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g199599199617%_))
                                               (let ((_%e199602199620%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g199599199617%_))))
                                                 (let ((_%hd199603199624%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e199602199620%_)))
                                                       (_%tl199604199627%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e199602199620%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl199604199627%_))
                                                       (let ((_%e199605199630%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl199604199627%_))))
                 (let ((_%hd199606199634%_
                        (let ()
                          (declare (not safe))
                          (##car _%e199605199630%_)))
                       (_%tl199607199637%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e199605199630%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl199607199637%_))
                       ((lambda (_%L199640%_ _%L199642%_)
                          (let* ((_%g199658199666%_
                                  (lambda (_%g199659199662%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g199659199662%_))))
                                 (_%g199657199788%_
                                  (lambda (_%g199659199670%_)
                                    ((lambda (_%L199673%_)
                                       (let* ((_%unchecked199686%_
                                               (|gxc[1]#signature->unchecked-signature|
                                                _%L199640%_))
                                              (_%g199689199697%_
                                               (lambda (_%g199690199693%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g199690199693%_))))
                                              (_%g199688199720%_
                                               (lambda (_%g199690199701%_)
                                                 ((lambda (_%L199704%_)
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'begin))
                                                          (cons _%L199673%_
                                                                (cons _%L199704%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%g199690199701%_))))
                                         (_%g199688199720%_
                                          (if _%unchecked199686%_
                                              (let* ((_%g199724199739%_
                                                      (lambda (_%g199725199735%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g199725199735%_))))
                                                     (_%g199723199784%_
                                                      (lambda (_%g199725199743%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g199725199743%_))
                                                            (let ((_%e199728199746%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%g199725199743%_))))
                      (let ((_%hd199729199750%_
                             (let ()
                               (declare (not safe))
                               (##car _%e199728199746%_)))
                            (_%tl199730199753%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e199728199746%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl199730199753%_))
                            (let ((_%e199731199756%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl199730199753%_))))
                              (let ((_%hd199732199760%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e199731199756%_)))
                                    (_%tl199733199763%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e199731199756%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl199733199763%_))
                                    ((lambda (_%L199766%_ _%L199768%_)
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'declare-type))
                                             (cons _%L199768%_
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!primitive-lambda))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L199642%_ '()))
                             (cons '#f
                                   (cons 'signature: (cons _%L199766%_ '())))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd199732199760%_
                                     _%hd199729199750%_)
                                    (_%g199724199739%_ _%g199725199743%_))))
                            (_%g199724199739%_ _%g199725199743%_))))
                    (_%g199724199739%_ _%g199725199743%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g199723199784%_
                                                 _%unchecked199686%_))
                                              '(begin)))))
                                     _%g199659199670%_))))
                            (_%g199657199788%_
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'declare-type))
                                   (cons _%L199580%_
                                         (cons (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        'make-!primitive-lambda))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%L199642%_ '()))
                   (cons '#f (cons 'signature: (cons _%L199640%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))))
                        _%hd199606199634%_
                        _%hd199603199624%_)
                       (_%g199598199613%_ _%g199599199617%_))))
               (_%g199598199613%_ _%g199599199617%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g199598199613%_
                                                _%g199599199617%_)))))
                                   (_%g199597199792%_
                                    (|gxc[1]#parse-signature|
                                     _%stx199494%_
                                     _%L199580%_
                                     (let ((__tmp201868
                                            (lambda (_%g199795199798%_
                                                     _%g199796199801%_)
                                              (cons _%g199795199798%_
                                                    _%g199796199801%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp201868
                                        '()
                                        _%L199578%_)))))
                                 (_%g199497199521%_ _%g199498199525%_)))
                           _%signature199515199574%_
                           _%hd199505199542%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop199510199554%_
                                                   _%target199507199548%_
                                                   '()))
                                                (_%g199497199521%_
                                                 _%g199498199525%_)))))
                                      (_%g199497199521%_ _%g199498199525%_))))
                              (_%g199497199521%_ _%g199498199525%_))))
                      (_%g199497199521%_ _%g199498199525%_)))))
          (_%g199496199804%_ _%stx199494%_))))
    (define |gxc[:0:]#declare-primitive-case-lambda|
      (lambda (_%stx199809%_)
        (let* ((_%g199812199836%_
                (lambda (_%g199813199832%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g199813199832%_))))
               (_%g199811200719%_
                (lambda (_%g199813199840%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g199813199840%_))
                      (let ((_%e199816199843%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g199813199840%_))))
                        (let ((_%hd199817199847%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199816199843%_)))
                              (_%tl199818199850%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199816199843%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl199818199850%_))
                              (let ((_%e199819199853%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl199818199850%_))))
                                (let ((_%hd199820199857%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e199819199853%_)))
                                      (_%tl199821199860%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e199819199853%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl199821199860%_))
                                      (let ((_g201869_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl199821199860%_
                                                '0))))
                                        (begin
                                          (let ((_g201870_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g201869_)
                                                       (##vector-length
                                                        _g201869_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g201870_ 2)))
                                                (error "Context expects 2 values"
                                                       _g201870_)))
                                          (let ((_%target199822199863%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g201869_ 0)))
                                                (_%tl199824199866%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g201869_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl199824199866%_))
                                                (letrec ((_%loop199825199869%_
                                                          (lambda (_%hd199823199873%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%case-signature199829199876%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd199823199873%_))
                        (let ((_%e199826199879%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd199823199873%_))))
                          (let ((_%lp-hd199827199883%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e199826199879%_)))
                                (_%lp-tl199828199886%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e199826199879%_))))
                            (_%loop199825199869%_
                             _%lp-tl199828199886%_
                             (cons _%lp-hd199827199883%_
                                   _%case-signature199829199876%_))))
                        (let ((_%case-signature199830199889%_
                               (reverse _%case-signature199829199876%_)))
                          ((lambda (_%L199893%_ _%L199895%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L199895%_))
                                 (let* ((_%signatures199926%_
                                         (map (lambda (_%g199912199914%_)
                                                (|gxc[1]#parse-signature|
                                                 _%stx199809%_
                                                 _%L199895%_
                                                 _%g199912199914%_))
                                              (let ((__tmp201871
                                                     (lambda (_%g199917199920%_
                                                              _%g199918199923%_)
                                                       (cons _%g199917199920%_
                                                             _%g199918199923%_))))
                                                (declare (not safe))
                                                (__foldr1
                                                 __tmp201871
                                                 '()
                                                 _%L199893%_))))
                                        (_%g199929199955%_
                                         (lambda (_%g199930199951%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g199930199951%_))))
                                        (_%g199928200715%_
                                         (lambda (_%g199930199959%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g199930199959%_))
                                               (let ((_g201872_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g199930199959%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g201873_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g201872_)
                        (##vector-length _g201872_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g201873_ 2)))
                 (error "Context expects 2 values" _g201873_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target199933199962%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g201872_
                                                             0)))
                                                         (_%tl199935199965%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g201872_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl199935199965%_))
                                                         (letrec ((_%loop199936199968%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd199934199972%_
                                    _%sig199940199975%_
                                    _%arity199941199977%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd199934199972%_))
                                 (let ((_%e199937199980%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd199934199972%_))))
                                   (let ((_%lp-hd199938199984%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e199937199980%_)))
                                         (_%lp-tl199939199987%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e199937199980%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%lp-hd199938199984%_))
                                         (let ((_%e199944199990%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-e
                                                   _%lp-hd199938199984%_))))
                                           (let ((_%hd199945199994%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e199944199990%_)))
                                                 (_%tl199946199997%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e199944199990%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl199946199997%_))
                                                 (let ((_%e199947200000%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl199946199997%_))))
                                                   (let ((_%hd199948200004%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e199947200000%_)))
                                                         (_%tl199949200007%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e199947200000%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl199949200007%_))
                                                         (_%loop199936199968%_
                                                          _%lp-tl199939199987%_
                                                          (cons _%hd199948200004%_
                                                                _%sig199940199975%_)
                                                          (cons _%hd199945199994%_
                                                                _%arity199941199977%_))
                                                         (_%g199929199955%_
                                                          _%g199930199959%_))))
                                                 (_%g199929199955%_
                                                  _%g199930199959%_))))
                                         (_%g199929199955%_
                                          _%g199930199959%_))))
                                 (let ((_%sig199942200010%_
                                        (reverse _%sig199940199975%_))
                                       (_%arity199943200013%_
                                        (reverse _%arity199941199977%_)))
                                   ((lambda (_%L200016%_ _%L200018%_)
                                      (let* ((_%g200035200043%_
                                              (lambda (_%g200036200039%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g200036200039%_))))
                                             (_%g200034200700%_
                                              (lambda (_%g200036200047%_)
                                                ((lambda (_%L200050%_)
                                                   (let* ((_%g200063200071%_
                                                           (lambda (_%g200064200067%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g200064200067%_))))
                  (_%g200062200093%_
                   (lambda (_%g200064200075%_)
                     ((lambda (_%L200078%_)
                        (cons (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'begin))
                              (cons _%L200050%_ (cons _%L200078%_ '()))))
                      _%g200064200075%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g200062200093%_
                                                      (let ((_g201874_
                                                             (let _%loop200097%_ ((_%rest200100%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                           _%signatures199926%_)
                                          (_%unchecked-proc200102%_ '#f)
                                          (_%unchecked-clauses200103%_ '()))
                       (let* ((_%rest200104200112%_ _%rest200100%_)
                              (_%else200106200124%_
                               (lambda ()
                                 (values _%unchecked-proc200102%_
                                         (reverse!
                                          _%unchecked-clauses200103%_))))
                              (_%K200108200565%_
                               (lambda (_%rest200128%_ _%hd200130%_)
                                 (let* ((_%g200132200219%_
                                         (lambda (_%g200133200215%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g200133200215%_))))
                                        (_%g200131200561%_
                                         (lambda (_%g200133200223%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g200133200223%_))
                                               (let ((_%e200140200226%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g200133200223%_))))
                                                 (let ((_%hd200141200230%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e200140200226%_)))
                                                       (_%tl200142200233%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e200140200226%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl200142200233%_))
                                                       (let ((_%e200143200236%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl200142200233%_))))
                 (let ((_%hd200144200240%_
                        (let ()
                          (declare (not safe))
                          (##car _%e200143200236%_)))
                       (_%tl200145200243%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e200143200236%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%hd200144200240%_))
                       (let ((_%e200146200246%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%hd200144200240%_))))
                         (let ((_%hd200147200250%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e200146200246%_)))
                               (_%tl200148200253%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e200146200246%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl200148200253%_))
                               (let ((_%e200149200256%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%tl200148200253%_))))
                                 (let ((_%hd200150200260%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e200149200256%_)))
                                       (_%tl200151200263%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e200149200256%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-datum? _%hd200150200260%_))
                                       (let ((_%e200152200266%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd200150200260%_))))
                                         (if (equal? _%e200152200266%_
                                                     'arguments:)
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl200151200263%_))
                                                 (let ((_%e200153200270%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl200151200263%_))))
                                                   (let ((_%hd200154200274%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e200153200270%_)))
                                                         (_%tl200155200277%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e200153200270%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%hd200154200274%_))
                                                         (let ((_%e200156200280%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-e _%hd200154200274%_))))
                   (let ((_%hd200157200284%_
                          (let ()
                            (declare (not safe))
                            (##car _%e200156200280%_)))
                         (_%tl200158200287%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e200156200280%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#identifier? _%hd200157200284%_))
                         (if (let ((__tmp201876 |gxc[1]#_g201877_|))
                               (declare (not safe))
                               (gx#free-identifier=?
                                __tmp201876
                                _%hd200157200284%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl200158200287%_))
                                 (let ((_%e200159200290%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl200158200287%_))))
                                   (let ((_%hd200160200294%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e200159200290%_)))
                                         (_%tl200161200297%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e200159200290%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl200161200297%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl200155200277%_))
                                             (let ((_%e200162200300%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-e
                                                       _%tl200155200277%_))))
                                               (let ((_%hd200163200304%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e200162200300%_)))
                                                     (_%tl200164200307%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e200162200300%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-datum?
                                                        _%hd200163200304%_))
                                                     (let ((_%e200165200310%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%hd200163200304%_))))
                                                       (if (equal? _%e200165200310%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'return:)
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl200164200307%_))
                       (let ((_%e200166200314%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%tl200164200307%_))))
                         (let ((_%hd200167200318%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e200166200314%_)))
                               (_%tl200168200321%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e200166200314%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd200167200318%_))
                               (let ((_%e200169200324%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%hd200167200318%_))))
                                 (let ((_%hd200170200328%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e200169200324%_)))
                                       (_%tl200171200331%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e200169200324%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _%hd200170200328%_))
                                       (if (let ((__tmp201878
                                                  |gxc[1]#_g201879_|))
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              __tmp201878
                                              _%hd200170200328%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl200171200331%_))
                                               (let ((_%e200172200334%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%tl200171200331%_))))
                                                 (let ((_%hd200173200338%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e200172200334%_)))
                                                       (_%tl200174200341%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e200172200334%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl200174200341%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl200168200321%_))
                                                           (let ((_%e200175200344%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%tl200168200321%_))))
                     (let ((_%hd200176200348%_
                            (let ()
                              (declare (not safe))
                              (##car _%e200175200344%_)))
                           (_%tl200177200351%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e200175200344%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-datum? _%hd200176200348%_))
                           (let ((_%e200178200354%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd200176200348%_))))
                             (if (equal? _%e200178200354%_ 'effect:)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%tl200177200351%_))
                                     (let ((_%e200179200358%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%tl200177200351%_))))
                                       (let ((_%hd200180200362%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e200179200358%_)))
                                             (_%tl200181200365%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e200179200358%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%hd200180200362%_))
                                             (let ((_%e200182200368%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-e
                                                       _%hd200180200362%_))))
                                               (let ((_%hd200183200372%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e200182200368%_)))
                                                     (_%tl200184200375%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e200182200368%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd200183200372%_))
                                                     (if (let ((__tmp201880
                                                                |gxc[1]#_g201881_|))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            __tmp201880
                                                            _%hd200183200372%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl200184200375%_))
                     (let ((_%e200185200378%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%tl200184200375%_))))
                       (let ((_%hd200186200382%_
                              (let ()
                                (declare (not safe))
                                (##car _%e200185200378%_)))
                             (_%tl200187200385%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e200185200378%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl200187200385%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl200181200365%_))
                                 (let ((_%e200188200388%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl200181200365%_))))
                                   (let ((_%hd200189200392%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e200188200388%_)))
                                         (_%tl200190200395%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e200188200388%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-datum? _%hd200189200392%_))
                                         (let ((_%e200191200398%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd200189200392%_))))
                                           (if (equal? _%e200191200398%_
                                                       'unchecked:)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl200190200395%_))
                                                   (let ((_%e200192200402%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-e
                                                             _%tl200190200395%_))))
                                                     (let ((_%hd200193200406%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e200192200402%_)))
                                                           (_%tl200194200409%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e200192200402%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd200193200406%_))
                                                           (let ((_%e200195200412%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%hd200193200406%_))))
                     (let ((_%hd200196200416%_
                            (let ()
                              (declare (not safe))
                              (##car _%e200195200412%_)))
                           (_%tl200197200419%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e200195200412%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _%hd200196200416%_))
                           (if (let ((__tmp201882 |gxc[1]#_g201883_|))
                                 (declare (not safe))
                                 (gx#free-identifier=?
                                  __tmp201882
                                  _%hd200196200416%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl200197200419%_))
                                   (let ((_%e200198200422%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _%tl200197200419%_))))
                                     (let ((_%hd200199200426%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e200198200422%_)))
                                           (_%tl200200200429%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e200198200422%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl200200200429%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl200194200409%_))
                                               (let ((_%e200201200432%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%tl200194200409%_))))
                                                 (let ((_%hd200202200436%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e200201200432%_)))
                                                       (_%tl200203200439%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e200201200432%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-datum?
                                                          _%hd200202200436%_))
                                                       (let ((_%e200204200442%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd200202200436%_))))
                 (if (equal? _%e200204200442%_ 'origin:)
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl200203200439%_))
                         (let ((_%e200205200446%_
                                (let ()
                                  (declare (not safe))
                                  (gx#syntax-e _%tl200203200439%_))))
                           (let ((_%hd200206200450%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e200205200446%_)))
                                 (_%tl200207200453%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e200205200446%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd200206200450%_))
                                 (let ((_%e200208200456%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd200206200450%_))))
                                   (let ((_%hd200209200460%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e200208200456%_)))
                                         (_%tl200210200463%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e200208200456%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd200209200460%_))
                                         (if (let ((__tmp201884
                                                    |gxc[1]#_g201885_|))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                __tmp201884
                                                _%hd200209200460%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl200210200463%_))
                                                 (let ((_%e200211200466%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl200210200463%_))))
                                                   (let ((_%hd200212200470%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e200211200466%_)))
                                                         (_%tl200213200473%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e200211200466%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl200213200473%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-null? _%tl200207200453%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl200145200243%_))
                         ((lambda (_%L200476%_
                                   _%L200478%_
                                   _%L200479%_
                                   _%L200480%_
                                   _%L200481%_
                                   _%L200482%_)
                            (let ((_%clause200553%_
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
                                                     (cons _%L200482%_ '()))
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
                                                 (cons _%L200480%_ '()))
                                           (cons 'origin:
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L200476%_ '()))
               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%unchecked200555%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L200478%_))))
                              (_%loop200097%_
                               _%rest200128%_
                               (let ((_%$e200557%_ _%unchecked200555%_))
                                 (if _%$e200557%_
                                     _%$e200557%_
                                     _%unchecked-proc200102%_))
                               (cons _%clause200553%_
                                     _%unchecked-clauses200103%_))))
                          _%hd200212200470%_
                          _%hd200199200426%_
                          _%hd200186200382%_
                          _%hd200173200338%_
                          _%hd200160200294%_
                          _%hd200141200230%_)
                         (_%g200132200219%_ _%g200133200223%_))
                     (_%g200132200219%_ _%g200133200223%_))
                 (_%g200132200219%_ _%g200133200223%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g200132200219%_
                                                  _%g200133200223%_))
                                             (_%g200132200219%_
                                              _%g200133200223%_))
                                         (_%g200132200219%_
                                          _%g200133200223%_))))
                                 (_%g200132200219%_ _%g200133200223%_))))
                         (_%g200132200219%_ _%g200133200223%_))
                     (_%g200132200219%_ _%g200133200223%_)))
               (_%g200132200219%_ _%g200133200223%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g200132200219%_
                                                _%g200133200223%_))
                                           (_%g200132200219%_
                                            _%g200133200223%_))))
                                   (_%g200132200219%_ _%g200133200223%_))
                               (_%g200132200219%_ _%g200133200223%_))
                           (_%g200132200219%_ _%g200133200223%_))))
                   (_%g200132200219%_ _%g200133200223%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g200132200219%_
                                                    _%g200133200223%_))
                                               (_%g200132200219%_
                                                _%g200133200223%_)))
                                         (_%g200132200219%_
                                          _%g200133200223%_))))
                                 (_%g200132200219%_ _%g200133200223%_))
                             (_%g200132200219%_ _%g200133200223%_))))
                     (_%g200132200219%_ _%g200133200223%_))
                 (_%g200132200219%_ _%g200133200223%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g200132200219%_
                                                      _%g200133200223%_))))
                                             (_%g200132200219%_
                                              _%g200133200223%_))))
                                     (_%g200132200219%_ _%g200133200223%_))
                                 (_%g200132200219%_ _%g200133200223%_)))
                           (_%g200132200219%_ _%g200133200223%_))))
                   (_%g200132200219%_ _%g200133200223%_))
               (_%g200132200219%_ _%g200133200223%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g200132200219%_
                                                _%g200133200223%_))
                                           (_%g200132200219%_
                                            _%g200133200223%_))
                                       (_%g200132200219%_ _%g200133200223%_))))
                               (_%g200132200219%_ _%g200133200223%_))))
                       (_%g200132200219%_ _%g200133200223%_))
                   (_%g200132200219%_ _%g200133200223%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g200132200219%_
                                                      _%g200133200223%_))))
                                             (_%g200132200219%_
                                              _%g200133200223%_))
                                         (_%g200132200219%_
                                          _%g200133200223%_))))
                                 (_%g200132200219%_ _%g200133200223%_))
                             (_%g200132200219%_ _%g200133200223%_))
                         (_%g200132200219%_ _%g200133200223%_))))
                 (_%g200132200219%_ _%g200133200223%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g200132200219%_
                                                  _%g200133200223%_))
                                             (_%g200132200219%_
                                              _%g200133200223%_)))
                                       (_%g200132200219%_ _%g200133200223%_))))
                               (_%g200132200219%_ _%g200133200223%_))))
                       (_%g200132200219%_ _%g200133200223%_))))
               (_%g200132200219%_ _%g200133200223%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g200132200219%_
                                                _%g200133200223%_)))))
                                   (_%g200131200561%_ _%hd200130%_)))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _%rest200104200112%_))
                             (let ((_%hd200109200569%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest200104200112%_)))
                                   (_%tl200110200572%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest200104200112%_))))
                               (let* ((_%hd200575%_ _%hd200109200569%_)
                                      (_%rest200578%_ _%tl200110200572%_))
                                 (_%K200108200565%_
                                  _%rest200578%_
                                  _%hd200575%_)))
                             (_%else200106200124%_))))))
                (begin
                  (let ((_g201875_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g201874_)
                               (##vector-length _g201874_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g201875_ 2)))
                        (error "Context expects 2 values" _g201875_)))
                  (let ((_%unchecked-proc200581%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g201874_ 0)))
                        (_%unchecked-clauses200583%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g201874_ 1))))
                    (if _%unchecked-proc200581%_
                        (let* ((_%g200585200609%_
                                (lambda (_%g200586200605%_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g200586200605%_))))
                               (_%g200584200696%_
                                (lambda (_%g200586200613%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%g200586200613%_))
                                      (let ((_%e200589200616%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%g200586200613%_))))
                                        (let ((_%hd200590200620%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e200589200616%_)))
                                              (_%tl200591200623%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e200589200616%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl200591200623%_))
                                              (let ((_%e200592200626%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl200591200623%_))))
                                                (let ((_%hd200593200630%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e200592200626%_)))
                                                      (_%tl200594200633%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e200592200626%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%hd200593200630%_))
                                                      (let ((_g201886_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%hd200593200630%_ '0))))
                (begin
                  (let ((_g201887_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g201886_)
                               (##vector-length _g201886_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g201887_ 2)))
                        (error "Context expects 2 values" _g201887_)))
                  (let ((_%target200595200636%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g201886_ 0)))
                        (_%tl200597200639%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g201886_ 1))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl200597200639%_))
                        (letrec ((_%loop200598200642%_
                                  (lambda (_%hd200596200646%_
                                           _%clause200602200649%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd200596200646%_))
                                        (let ((_%e200599200652%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%hd200596200646%_))))
                                          (let ((_%lp-hd200600200656%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e200599200652%_)))
                                                (_%lp-tl200601200659%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e200599200652%_))))
                                            (_%loop200598200642%_
                                             _%lp-tl200601200659%_
                                             (cons _%lp-hd200600200656%_
                                                   _%clause200602200649%_))))
                                        (let ((_%clause200603200662%_
                                               (reverse _%clause200602200649%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl200594200633%_))
                                              ((lambda (_%L200666%_
                                                        _%L200668%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'declare-type))
                                                       (cons _%L200668%_
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
                                             (let ((__tmp201888
                                                    (lambda (_%g200687200690%_
                                                             _%g200688200693%_)
                                                      (cons _%g200687200690%_
                                                            _%g200688200693%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp201888
                                                '()
                                                _%L200666%_)))
                                       '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%clause200603200662%_
                                               _%hd200590200620%_)
                                              (_%g200585200609%_
                                               _%g200586200613%_)))))))
                          (_%loop200598200642%_ _%target200595200636%_ '()))
                        (_%g200585200609%_ _%g200586200613%_)))))
              (_%g200585200609%_ _%g200586200613%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g200585200609%_
                                               _%g200586200613%_))))
                                      (_%g200585200609%_ _%g200586200613%_)))))
                          (_%g200584200696%_
                           (list _%unchecked-proc200581%_
                                 _%unchecked-clauses200583%_)))
                        '(begin))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%g200036200047%_))))
                                        (_%g200034200700%_
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'declare-type))
                                               (cons _%L199895%_
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
                                          _%L200016%_
                                          _%L200018%_))
                                       (let ((__tmp201889
                                              (lambda (_%g200703200707%_
                                                       _%g200704200710%_
                                                       _%g200705200712%_)
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
                                (cons _%g200704200710%_ '()))
                          (cons '#f
                                (cons 'signature:
                                      (cons _%g200703200707%_ '())))))
              _%g200705200712%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr2
                                          __tmp201889
                                          '()
                                          _%L200016%_
                                          _%L200018%_))))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%sig199942200010%_
                                    _%arity199943200013%_))))))
                   (_%loop199936199968%_ _%target199933199962%_ '() '()))
                 (_%g199929199955%_ _%g199930199959%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g199929199955%_
                                                _%g199930199959%_)))))
                                   (_%g199928200715%_ _%signatures199926%_))
                                 (_%g199812199836%_ _%g199813199840%_)))
                           _%case-signature199830199889%_
                           _%hd199820199857%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop199825199869%_
                                                   _%target199822199863%_
                                                   '()))
                                                (_%g199812199836%_
                                                 _%g199813199840%_)))))
                                      (_%g199812199836%_ _%g199813199840%_))))
                              (_%g199812199836%_ _%g199813199840%_))))
                      (_%g199812199836%_ _%g199813199840%_)))))
          (_%g199811200719%_ _%stx199809%_))))
    (define |gxc[:0:]#declare-builtin-class|
      (lambda (_%$stx200727%_)
        (let* ((_%__stx201709201710%_ _%$stx200727%_)
               (_%g200733200793%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx201709201710%_)))))
          (let ((_%__kont201712201713%_
                 (lambda (_%L201015%_ _%L201017%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L201017%_ '()))
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
                                                       (cons _%L201017%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L201015%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '@list))
                           '())
                     (cons '#f
                           (cons '#f (cons '#f (cons '#t (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont201714201715%_
                 (lambda (_%L200940%_ _%L200942%_ _%L200943%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L200943%_ '()))
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
                                                       (cons _%L200943%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L200942%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L200940%_ '()))
                     (cons '#f
                           (cons '#f (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont201716201717%_
                 (lambda (_%L200854%_ _%L200856%_ _%L200857%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L200857%_ '()))
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
                                                       (cons _%L200857%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L200856%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L200854%_ '()))
                     (cons '#f
                           (cons '#t (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx201709201710%_))
                (let ((_%e200737200971%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx201709201710%_))))
                  (let ((_%tl200739200978%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e200737200971%_)))
                        (_%hd200738200975%_
                         (let ()
                           (declare (not safe))
                           (##car _%e200737200971%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl200739200978%_))
                        (let ((_%e200740200981%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl200739200978%_))))
                          (let ((_%tl200742200988%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e200740200981%_)))
                                (_%hd200741200985%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e200740200981%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _%hd200741200985%_))
                                (let ((_%e200743200991%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd200741200985%_))))
                                  (if (equal? _%e200743200991%_ 'system:)
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl200742200988%_))
                                          (let ((_%e200744200995%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl200742200988%_))))
                                            (let ((_%tl200746201002%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e200744200995%_)))
                                                  (_%hd200745200999%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e200744200995%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl200746201002%_))
                                                  (let ((_%e200747201005%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl200746201002%_))))
                                                    (let ((_%tl200749201012%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e200747201005%_)))
                                                          (_%hd200748201009%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e200747201005%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl200749201012%_))
                                                          (_%__kont201712201713%_
                                                           _%hd200748201009%_
                                                           _%hd200745200999%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g200733200793%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g200733200793%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g200733200793%_)))
                                      (if (equal? _%e200743200991%_ 'struct:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl200742200988%_))
                                              (let ((_%e200760200910%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl200742200988%_))))
                                                (let ((_%tl200762200917%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e200760200910%_)))
                                                      (_%hd200761200914%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e200760200910%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl200762200917%_))
                                                      (let ((_%e200763200920%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl200762200917%_))))
                (let ((_%tl200765200927%_
                       (let () (declare (not safe)) (##cdr _%e200763200920%_)))
                      (_%hd200764200924%_
                       (let ()
                         (declare (not safe))
                         (##car _%e200763200920%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl200765200927%_))
                      (let ((_%e200766200930%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl200765200927%_))))
                        (let ((_%tl200768200937%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200766200930%_)))
                              (_%hd200767200934%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200766200930%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl200768200937%_))
                              (_%__kont201714201715%_
                               _%hd200767200934%_
                               _%hd200764200924%_
                               _%hd200761200914%_)
                              (let ()
                                (declare (not safe))
                                (_%g200733200793%_)))))
                      (let () (declare (not safe)) (_%g200733200793%_)))))
              (let () (declare (not safe)) (_%g200733200793%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g200733200793%_)))
                                          (if (equal? _%e200743200991%_
                                                      'class:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl200742200988%_))
                                                  (let ((_%e200779200824%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl200742200988%_))))
                                                    (let ((_%tl200781200831%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e200779200824%_)))
                                                          (_%hd200780200828%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e200779200824%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl200781200831%_))
                                                          (let ((_%e200782200834%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl200781200831%_))))
                    (let ((_%tl200784200841%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e200782200834%_)))
                          (_%hd200783200838%_
                           (let ()
                             (declare (not safe))
                             (##car _%e200782200834%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl200784200841%_))
                          (let ((_%e200785200844%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl200784200841%_))))
                            (let ((_%tl200787200851%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e200785200844%_)))
                                  (_%hd200786200848%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e200785200844%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl200787200851%_))
                                  (_%__kont201716201717%_
                                   _%hd200786200848%_
                                   _%hd200783200838%_
                                   _%hd200780200828%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g200733200793%_)))))
                          (let () (declare (not safe)) (_%g200733200793%_)))))
                  (let () (declare (not safe)) (_%g200733200793%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g200733200793%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g200733200793%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g200733200793%_)))))
                        (let () (declare (not safe)) (_%g200733200793%_)))))
                (let () (declare (not safe)) (_%g200733200793%_)))))))
    (define |gxc[:0:]#declare-builtin-classes|
      (lambda (_%$stx201039%_)
        (let* ((_%g201043201063%_
                (lambda (_%g201044201059%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g201044201059%_))))
               (_%g201042201134%_
                (lambda (_%g201044201067%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g201044201067%_))
                      (let ((_%e201046201070%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g201044201067%_))))
                        (let ((_%hd201047201074%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201046201070%_)))
                              (_%tl201048201077%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201046201070%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl201048201077%_))
                              (let ((_g201890_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl201048201077%_
                                        '0))))
                                (begin
                                  (let ((_g201891_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g201890_)
                                               (##vector-length _g201890_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g201891_ 2)))
                                        (error "Context expects 2 values"
                                               _g201891_)))
                                  (let ((_%target201049201080%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g201890_ 0)))
                                        (_%tl201051201083%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g201890_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl201051201083%_))
                                        (letrec ((_%loop201052201086%_
                                                  (lambda (_%hd201050201090%_
                                                           _%decl201056201093%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd201050201090%_))
                                                        (let ((_%e201053201096%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd201050201090%_))))
                  (let ((_%lp-hd201054201100%_
                         (let ()
                           (declare (not safe))
                           (##car _%e201053201096%_)))
                        (_%lp-tl201055201103%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e201053201096%_))))
                    (_%loop201052201086%_
                     _%lp-tl201055201103%_
                     (cons _%lp-hd201054201100%_ _%decl201056201093%_))))
                (let ((_%decl201057201106%_ (reverse _%decl201056201093%_)))
                  ((lambda (_%L201110%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (let ((__tmp201892
                                  (lambda (_%g201125201128%_ _%g201126201131%_)
                                    (cons (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'declare-builtin-class))
                                                _%g201125201128%_)
                                          _%g201126201131%_))))
                             (declare (not safe))
                             (__foldr1 __tmp201892 '() _%L201110%_))))
                   _%decl201057201106%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop201052201086%_
                                           _%target201049201080%_
                                           '()))
                                        (_%g201043201063%_
                                         _%g201044201067%_)))))
                              (_%g201043201063%_ _%g201044201067%_))))
                      (_%g201043201063%_ _%g201044201067%_)))))
          (_%g201042201134%_ _%$stx201039%_))))))
