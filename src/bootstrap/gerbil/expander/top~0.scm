(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1713000277)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_%stx124701%_)
        (letrec ((_%expand-special124703%_
                  (lambda (_%hd124705%_ _%K124706%_ _%rest124707%_ _%r124708%_)
                    (_%K124706%_
                     _%rest124707%_
                     (cons (gx#core-expand-top _%hd124705%_) _%r124708%_)))))
          (gx#core-expand-block__0 _%stx124701%_ _%expand-special124703%_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_%stx124454%_)
        (letrec ((_%expand-special124456%_
                  (lambda (_%hd124576%_ _%K124577%_ _%rest124578%_ _%r124579%_)
                    (let* ((_%K124583%_
                            (lambda (_%e124581%_)
                              (_%K124577%_
                               _%rest124578%_
                               (cons _%e124581%_ _%r124579%_))))
                           (_%e124584124613%_ _%hd124576%_)
                           (_%E124608124617%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e124584124613%_)))
                           (_%E124604124629%_
                            (lambda ()
                              (if (gx#stx-pair? _%e124584124613%_)
                                  (let ((_%e124609124621%_
                                         (gx#syntax-e _%e124584124613%_)))
                                    (let ((_%hd124610124624%_
                                           (##car _%e124609124621%_))
                                          (_%tl124611124626%_
                                           (##cdr _%e124609124621%_)))
                                      (if (and (gx#identifier?
                                                _%hd124610124624%_)
                                               (gx#core-identifier=?
                                                _%hd124610124624%_
                                                '%#define-runtime))
                                          (_%K124583%_
                                           (gx#core-expand-define-runtime%
                                            _%hd124576%_))
                                          (_%E124608124617%_))))
                                  (_%E124608124617%_))))
                           (_%E124600124641%_
                            (lambda ()
                              (if (gx#stx-pair? _%e124584124613%_)
                                  (let ((_%e124605124633%_
                                         (gx#syntax-e _%e124584124613%_)))
                                    (let ((_%hd124606124636%_
                                           (##car _%e124605124633%_))
                                          (_%tl124607124638%_
                                           (##cdr _%e124605124633%_)))
                                      (if (and (gx#identifier?
                                                _%hd124606124636%_)
                                               (gx#core-identifier=?
                                                _%hd124606124636%_
                                                '%#define-alias))
                                          (_%K124583%_
                                           (gx#core-expand-define-alias%
                                            _%hd124576%_))
                                          (_%E124604124629%_))))
                                  (_%E124604124629%_))))
                           (_%E124590124653%_
                            (lambda ()
                              (if (gx#stx-pair? _%e124584124613%_)
                                  (let ((_%e124601124645%_
                                         (gx#syntax-e _%e124584124613%_)))
                                    (let ((_%hd124602124648%_
                                           (##car _%e124601124645%_))
                                          (_%tl124603124650%_
                                           (##cdr _%e124601124645%_)))
                                      (if (and (gx#identifier?
                                                _%hd124602124648%_)
                                               (gx#core-identifier=?
                                                _%hd124602124648%_
                                                '%#define-syntax))
                                          (_%K124583%_
                                           (gx#core-expand-define-syntax%
                                            _%hd124576%_))
                                          (_%E124600124641%_))))
                                  (_%E124600124641%_))))
                           (_%E124586124685%_
                            (lambda ()
                              (if (gx#stx-pair? _%e124584124613%_)
                                  (let ((_%e124591124657%_
                                         (gx#syntax-e _%e124584124613%_)))
                                    (let ((_%hd124592124660%_
                                           (##car _%e124591124657%_))
                                          (_%tl124593124662%_
                                           (##cdr _%e124591124657%_)))
                                      (if (and (gx#identifier?
                                                _%hd124592124660%_)
                                               (gx#core-identifier=?
                                                _%hd124592124660%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl124593124662%_)
                                              (let ((_%e124594124665%_
                                                     (gx#syntax-e
                                                      _%tl124593124662%_)))
                                                (let ((_%hd124595124668%_
                                                       (##car _%e124594124665%_))
                                                      (_%tl124596124670%_
                                                       (##cdr _%e124594124665%_)))
                                                  (let ((_%hd-bind124673%_
                                                         _%hd124595124668%_))
                                                    (if (gx#stx-pair?
                                                         _%tl124596124670%_)
                                                        (let ((_%e124597124675%_
                                                               (gx#syntax-e
                                                                _%tl124596124670%_)))
                                                          (let ((_%hd124598124678%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e124597124675%_))
                        (_%tl124599124680%_ (##cdr _%e124597124675%_)))
                    (let ((_%expr124683%_ _%hd124598124678%_))
                      (if (gx#stx-null? _%tl124599124680%_)
                          (if (gx#core-bind-values? _%hd-bind124673%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind124673%_)
                                (_%K124583%_ _%hd124576%_))
                              (_%E124590124653%_))
                          (_%E124590124653%_)))))
                (_%E124590124653%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E124590124653%_))
                                          (_%E124590124653%_))))
                                  (_%E124590124653%_))))
                           (_%E124585124697%_
                            (lambda ()
                              (if (gx#stx-pair? _%e124584124613%_)
                                  (let ((_%e124587124689%_
                                         (gx#syntax-e _%e124584124613%_)))
                                    (let ((_%hd124588124692%_
                                           (##car _%e124587124689%_))
                                          (_%tl124589124694%_
                                           (##cdr _%e124587124689%_)))
                                      (if (and (gx#identifier?
                                                _%hd124588124692%_)
                                               (gx#core-identifier=?
                                                _%hd124588124692%_
                                                '%#begin-syntax))
                                          (_%K124583%_
                                           (gx#core-expand-begin-syntax%
                                            _%hd124576%_))
                                          (_%E124586124685%_))))
                                  (_%E124586124685%_)))))
                      (_%E124585124697%_))))
                 (_%eval-body124457%_
                  (lambda (_%rbody124465%_)
                    (let _%lp124467%_ ((_%rest124469%_ _%rbody124465%_)
                                       (_%body124470%_ '())
                                       (_%ebody124471%_ '()))
                      (let* ((_%rest124472124480%_ _%rest124469%_)
                             (_%else124474124488%_
                              (lambda ()
                                (values _%body124470%_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons
                                           '%#begin
                                           _%ebody124471%_)
                                          (gx#stx-source _%stx124454%_))))))
                             (_%K124476124564%_
                              (lambda (_%rest124491%_ _%hd124492%_)
                                (let* ((_%e124493124510%_ _%hd124492%_)
                                       (_%E124505124514%_
                                        (lambda ()
                                          (_%lp124467%_
                                           _%rest124491%_
                                           (cons _%hd124492%_ _%body124470%_)
                                           (cons _%hd124492%_
                                                 _%ebody124471%_))))
                                       (_%E124495124526%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e124493124510%_)
                                              (let ((_%e124506124518%_
                                                     (gx#syntax-e
                                                      _%e124493124510%_)))
                                                (let ((_%hd124507124521%_
                                                       (##car _%e124506124518%_))
                                                      (_%tl124508124523%_
                                                       (##cdr _%e124506124518%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd124507124521%_)
                                                           (gx#core-identifier=?
                                                            _%hd124507124521%_
                                                            '%#begin-syntax))
                                                      (_%lp124467%_
                                                       _%rest124491%_
                                                       (cons _%hd124492%_
                                                             _%body124470%_)
                                                       _%ebody124471%_)
                                                      (_%E124505124514%_))))
                                              (_%E124505124514%_))))
                                       (_%E124494124560%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e124493124510%_)
                                              (let ((_%e124496124530%_
                                                     (gx#syntax-e
                                                      _%e124493124510%_)))
                                                (let ((_%hd124497124533%_
                                                       (##car _%e124496124530%_))
                                                      (_%tl124498124535%_
                                                       (##cdr _%e124496124530%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd124497124533%_)
                                                           (gx#core-identifier=?
                                                            _%hd124497124533%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl124498124535%_)
                                                          (let ((_%e124499124538%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl124498124535%_)))
                    (let ((_%hd124500124541%_ (##car _%e124499124538%_))
                          (_%tl124501124543%_ (##cdr _%e124499124538%_)))
                      (let ((_%hd-bind124546%_ _%hd124500124541%_))
                        (if (gx#stx-pair? _%tl124501124543%_)
                            (let ((_%e124502124548%_
                                   (gx#syntax-e _%tl124501124543%_)))
                              (let ((_%hd124503124551%_
                                     (##car _%e124502124548%_))
                                    (_%tl124504124553%_
                                     (##cdr _%e124502124548%_)))
                                (let ((_%expr124556%_ _%hd124503124551%_))
                                  (if (gx#stx-null? _%tl124504124553%_)
                                      (let ((_%ehd124558%_
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#define-values)
                                                    (cons (gx#core-quote-bind-values
                                                           _%hd-bind124546%_)
                                                          (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%expr124556%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _%hd124492%_))))
                                        (_%lp124467%_
                                         _%rest124491%_
                                         (cons _%ehd124558%_ _%body124470%_)
                                         (cons _%ehd124558%_ _%ebody124471%_)))
                                      (_%E124495124526%_)))))
                            (_%E124495124526%_)))))
                  (_%E124495124526%_))
              (_%E124495124526%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E124495124526%_)))))
                                  (_%E124494124560%_)))))
                        (if (##pair? _%rest124472124480%_)
                            (let ((_%hd124477124567%_
                                   (##car _%rest124472124480%_))
                                  (_%tl124478124569%_
                                   (##cdr _%rest124472124480%_)))
                              (let* ((_%hd124572%_ _%hd124477124567%_)
                                     (_%rest124574%_ _%tl124478124569%_))
                                (_%K124476124564%_
                                 _%rest124574%_
                                 _%hd124572%_)))
                            (_%else124474124488%_)))))))
          (__call-with-parameters
           (lambda ()
             (let* ((_%rbody124460%_
                     (gx#core-expand-block__1
                      _%stx124454%_
                      _%expand-special124456%_
                      '#f))
                    (_g124724_ (_%eval-body124457%_ _%rbody124460%_)))
               (begin
                 (let ((_g124725_
                        (if (##values? _g124724_)
                            (##vector-length _g124724_)
                            1)))
                   (if (not (##fx= _g124725_ 2))
                       (error "Context expects 2 values" _g124725_)))
                 (let ((_%expanded-body124462%_ (##vector-ref _g124724_ 0))
                       (_%value124463%_ (##vector-ref _g124724_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _%expanded-body124462%_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _%value124463%_ '())))
                    (gx#stx-source _%stx124454%_))))))
           gx#current-expander-phi
           (##fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_%stx124424%_)
        (let* ((_%e124425124432%_ _%stx124424%_)
               (_%E124427124436%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124425124432%_)))
               (_%E124426124450%_
                (lambda ()
                  (if (gx#stx-pair? _%e124425124432%_)
                      (let ((_%e124428124440%_
                             (gx#syntax-e _%e124425124432%_)))
                        (let ((_%hd124429124443%_ (##car _%e124428124440%_))
                              (_%tl124430124445%_ (##cdr _%e124428124440%_)))
                          (let ((_%body124448%_ _%tl124430124445%_))
                            (if (gx#stx-list? _%body124448%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _%body124448%_)
                                 (gx#stx-source _%stx124424%_))
                                (_%E124427124436%_)))))
                      (_%E124427124436%_)))))
          (_%E124426124450%_))))
    (define gx#core-expand-begin-module%
      (lambda (_%stx124422%_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _%stx124422%_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_%stx124368%_)
        (let* ((_%e124369124382%_ _%stx124368%_)
               (_%E124371124386%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124369124382%_)))
               (_%E124370124418%_
                (lambda ()
                  (if (gx#stx-pair? _%e124369124382%_)
                      (let ((_%e124372124390%_
                             (gx#syntax-e _%e124369124382%_)))
                        (let ((_%hd124373124393%_ (##car _%e124372124390%_))
                              (_%tl124374124395%_ (##cdr _%e124372124390%_)))
                          (if (gx#stx-pair? _%tl124374124395%_)
                              (let ((_%e124375124398%_
                                     (gx#syntax-e _%tl124374124395%_)))
                                (let ((_%hd124376124401%_
                                       (##car _%e124375124398%_))
                                      (_%tl124377124403%_
                                       (##cdr _%e124375124398%_)))
                                  (let ((_%ann124406%_ _%hd124376124401%_))
                                    (if (gx#stx-pair? _%tl124377124403%_)
                                        (let ((_%e124378124408%_
                                               (gx#syntax-e
                                                _%tl124377124403%_)))
                                          (let ((_%hd124379124411%_
                                                 (##car _%e124378124408%_))
                                                (_%tl124380124413%_
                                                 (##cdr _%e124378124408%_)))
                                            (let ((_%expr124416%_
                                                   _%hd124379124411%_))
                                              (if (gx#stx-null?
                                                   _%tl124380124413%_)
                                                  (gx#core-quote-syntax__1
                                                   (cons (gx#core-quote-syntax__0
                                                          '%#begin-annotation)
                                                         (cons _%ann124406%_
                                                               (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%expr124416%_)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (gx#stx-source
                                                    _%stx124368%_))
                                                  (_%E124371124386%_)))))
                                        (_%E124371124386%_)))))
                              (_%E124371124386%_))))
                      (_%E124371124386%_)))))
          (_%E124370124418%_))))
    (define gx#core-expand-local-block
      (lambda (_%stx124092%_ _%body124093%_)
        (letrec ((_%expand-special124095%_
                  (lambda (_%hd124363%_ _%K124364%_ _%rest124365%_ _%r124366%_)
                    (_%K124364%_
                     '()
                     (cons (_%expand-internal124096%_
                            _%hd124363%_
                            _%rest124365%_)
                           _%r124366%_))))
                 (_%expand-internal124096%_
                  (lambda (_%hd124359%_ _%rest124360%_)
                    (__call-with-parameters
                     (lambda ()
                       (_%wrap-internal124098%_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _%hd124359%_ _%rest124360%_))
                          (gx#stx-source _%stx124092%_))
                         _%expand-internal-special124097%_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj124718
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init!__0 __obj124718)
                       __obj124718))))
                 (_%expand-internal-special124097%_
                  (lambda (_%hd124254%_ _%K124255%_ _%rest124256%_ _%r124257%_)
                    (let* ((_%e124258124283%_ _%hd124254%_)
                           (_%E124278124287%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e124258124283%_)))
                           (_%E124274124299%_
                            (lambda ()
                              (if (gx#stx-pair? _%e124258124283%_)
                                  (let ((_%e124279124291%_
                                         (gx#syntax-e _%e124258124283%_)))
                                    (let ((_%hd124280124294%_
                                           (##car _%e124279124291%_))
                                          (_%tl124281124296%_
                                           (##cdr _%e124279124291%_)))
                                      (if (and (gx#identifier?
                                                _%hd124280124294%_)
                                               (gx#core-identifier=?
                                                _%hd124280124294%_
                                                '%#declare))
                                          (_%K124255%_
                                           _%rest124256%_
                                           (cons (gx#core-expand-declare%
                                                  _%hd124254%_)
                                                 _%r124257%_))
                                          (_%E124278124287%_))))
                                  (_%E124278124287%_))))
                           (_%E124270124311%_
                            (lambda ()
                              (if (gx#stx-pair? _%e124258124283%_)
                                  (let ((_%e124275124303%_
                                         (gx#syntax-e _%e124258124283%_)))
                                    (let ((_%hd124276124306%_
                                           (##car _%e124275124303%_))
                                          (_%tl124277124308%_
                                           (##cdr _%e124275124303%_)))
                                      (if (and (gx#identifier?
                                                _%hd124276124306%_)
                                               (gx#core-identifier=?
                                                _%hd124276124306%_
                                                '%#define-alias))
                                          (begin
                                            (gx#core-expand-define-alias%
                                             _%hd124254%_)
                                            (_%K124255%_
                                             _%rest124256%_
                                             _%r124257%_))
                                          (_%E124274124299%_))))
                                  (_%E124274124299%_))))
                           (_%E124260124323%_
                            (lambda ()
                              (if (gx#stx-pair? _%e124258124283%_)
                                  (let ((_%e124271124315%_
                                         (gx#syntax-e _%e124258124283%_)))
                                    (let ((_%hd124272124318%_
                                           (##car _%e124271124315%_))
                                          (_%tl124273124320%_
                                           (##cdr _%e124271124315%_)))
                                      (if (and (gx#identifier?
                                                _%hd124272124318%_)
                                               (gx#core-identifier=?
                                                _%hd124272124318%_
                                                '%#define-syntax))
                                          (begin
                                            (gx#core-expand-define-syntax%
                                             _%hd124254%_)
                                            (_%K124255%_
                                             _%rest124256%_
                                             _%r124257%_))
                                          (_%E124270124311%_))))
                                  (_%E124270124311%_))))
                           (_%E124259124355%_
                            (lambda ()
                              (if (gx#stx-pair? _%e124258124283%_)
                                  (let ((_%e124261124327%_
                                         (gx#syntax-e _%e124258124283%_)))
                                    (let ((_%hd124262124330%_
                                           (##car _%e124261124327%_))
                                          (_%tl124263124332%_
                                           (##cdr _%e124261124327%_)))
                                      (if (and (gx#identifier?
                                                _%hd124262124330%_)
                                               (gx#core-identifier=?
                                                _%hd124262124330%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl124263124332%_)
                                              (let ((_%e124264124335%_
                                                     (gx#syntax-e
                                                      _%tl124263124332%_)))
                                                (let ((_%hd124265124338%_
                                                       (##car _%e124264124335%_))
                                                      (_%tl124266124340%_
                                                       (##cdr _%e124264124335%_)))
                                                  (let ((_%hd-bind124343%_
                                                         _%hd124265124338%_))
                                                    (if (gx#stx-pair?
                                                         _%tl124266124340%_)
                                                        (let ((_%e124267124345%_
                                                               (gx#syntax-e
                                                                _%tl124266124340%_)))
                                                          (let ((_%hd124268124348%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e124267124345%_))
                        (_%tl124269124350%_ (##cdr _%e124267124345%_)))
                    (let ((_%expr124353%_ _%hd124268124348%_))
                      (if (gx#stx-null? _%tl124269124350%_)
                          (if (gx#core-bind-values? _%hd-bind124343%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind124343%_)
                                (_%K124255%_
                                 _%rest124256%_
                                 (cons _%hd124254%_ _%r124257%_)))
                              (_%E124260124323%_))
                          (_%E124260124323%_)))))
                (_%E124260124323%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E124260124323%_))
                                          (_%E124260124323%_))))
                                  (_%E124260124323%_)))))
                      (_%E124259124355%_))))
                 (_%wrap-internal124098%_
                  (lambda (_%rbody124100%_)
                    (let _%lp124102%_ ((_%rest124104%_ _%rbody124100%_)
                                       (_%decls124105%_ '())
                                       (_%bind124106%_ '())
                                       (_%body124107%_ '()))
                      (let* ((_%e124108124115%_ _%rest124104%_)
                             (_%E124110124164%_
                              (lambda ()
                                (let* ((_%body124159%_
                                        (let* ((_%body124118124128%_
                                                _%body124107%_)
                                               (_%else124121124136%_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _%body124107%_)
                                                   (gx#stx-source
                                                    _%stx124092%_)))))
                                          (let ((_%K124126124156%_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _%stx124092%_)))
                                                (_%K124123124142%_
                                                 (lambda (_%expr124140%_)
                                                   _%expr124140%_)))
                                            (let ((_%try-match124120124152%_
                                                   (lambda ()
                                                     (if (##pair? _%body124118124128%_)
                                                         (let ((_%tl124125124147%_
                                                                (##cdr _%body124118124128%_))
                                                               (_%hd124124124145%_
                                                                (##car _%body124118124128%_)))
                                                           (if (##null? _%tl124125124147%_)
                                                               (let ((_%expr124150%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd124124124145%_))
                         (_%K124123124142%_ _%expr124150%_))
                       (_%else124121124136%_)))
                 (_%else124121124136%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##null? _%body124118124128%_)
                                                  (_%K124126124156%_)
                                                  (_%try-match124120124152%_))))))
                                       (_%body124161%_
                                        (if (null? _%bind124106%_)
                                            _%body124159%_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _%bind124106%_
                                                         (cons _%body124159%_
                                                               '())))
                                             (gx#stx-source _%stx124092%_)))))
                                  (if (null? _%decls124105%_)
                                      _%body124161%_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _%decls124105%_
                                                   (cons _%body124161%_ '())))
                                       (gx#stx-source _%stx124092%_))))))
                             (_%E124109124250%_
                              (lambda ()
                                (if (gx#stx-pair? _%e124108124115%_)
                                    (let ((_%e124111124168%_
                                           (gx#syntax-e _%e124108124115%_)))
                                      (let ((_%hd124112124171%_
                                             (##car _%e124111124168%_))
                                            (_%tl124113124173%_
                                             (##cdr _%e124111124168%_)))
                                        (let* ((_%hd124176%_
                                                _%hd124112124171%_)
                                               (_%rest124178%_
                                                _%tl124113124173%_)
                                               (_%e124179124196%_ _%hd124176%_)
                                               (_%E124191124200%_
                                                (lambda ()
                                                  (if (null? _%bind124106%_)
                                                      (_%lp124102%_
                                                       _%rest124178%_
                                                       _%decls124105%_
                                                       _%bind124106%_
                                                       (cons _%hd124176%_
                                                             _%body124107%_))
                                                      (_%lp124102%_
                                                       _%rest124178%_
                                                       _%decls124105%_
                                                       (cons (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%hd124176%_ '()))
                     _%bind124106%_)
               _%body124107%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E124181124214%_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _%e124179124196%_)
                                                      (let ((_%e124192124204%_
                                                             (gx#syntax-e
                                                              _%e124179124196%_)))
                                                        (let ((_%hd124193124207%_
                                                               (##car _%e124192124204%_))
                                                              (_%tl124194124209%_
                                                               (##cdr _%e124192124204%_)))
                                                          (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%hd124193124207%_)
                           (gx#core-identifier=?
                            _%hd124193124207%_
                            '%#declare))
                      (let ((_%xdecls124212%_ _%tl124194124209%_))
                        (_%lp124102%_
                         _%rest124178%_
                         (gx#stx-foldr cons _%decls124105%_ _%xdecls124212%_)
                         _%bind124106%_
                         _%body124107%_))
                      (_%E124191124200%_))))
              (_%E124191124200%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E124180124246%_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _%e124179124196%_)
                                                      (let ((_%e124182124218%_
                                                             (gx#syntax-e
                                                              _%e124179124196%_)))
                                                        (let ((_%hd124183124221%_
                                                               (##car _%e124182124218%_))
                                                              (_%tl124184124223%_
                                                               (##cdr _%e124182124218%_)))
                                                          (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%hd124183124221%_)
                           (gx#core-identifier=?
                            _%hd124183124221%_
                            '%#define-values))
                      (if (gx#stx-pair? _%tl124184124223%_)
                          (let ((_%e124185124226%_
                                 (gx#syntax-e _%tl124184124223%_)))
                            (let ((_%hd124186124229%_
                                   (##car _%e124185124226%_))
                                  (_%tl124187124231%_
                                   (##cdr _%e124185124226%_)))
                              (let ((_%hd-bind124234%_ _%hd124186124229%_))
                                (if (gx#stx-pair? _%tl124187124231%_)
                                    (let ((_%e124188124236%_
                                           (gx#syntax-e _%tl124187124231%_)))
                                      (let ((_%hd124189124239%_
                                             (##car _%e124188124236%_))
                                            (_%tl124190124241%_
                                             (##cdr _%e124188124236%_)))
                                        (let ((_%expr124244%_
                                               _%hd124189124239%_))
                                          (if (gx#stx-null? _%tl124190124241%_)
                                              (_%lp124102%_
                                               _%rest124178%_
                                               _%decls124105%_
                                               (cons (cons (gx#core-quote-bind-values
                                                            _%hd-bind124234%_)
                                                           (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%expr124244%_)
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind124106%_)
                                               _%body124107%_)
                                              (_%E124181124214%_)))))
                                    (_%E124181124214%_)))))
                          (_%E124181124214%_))
                      (_%E124181124214%_))))
              (_%E124181124214%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%E124180124246%_))))
                                    (_%E124110124164%_)))))
                        (_%E124109124250%_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _%body124093%_)
            (gx#stx-source _%stx124092%_))
           _%expand-special124095%_))))
    (define gx#core-expand-declare%
      (lambda (_%stx124030%_)
        (let* ((_%e124031124038%_ _%stx124030%_)
               (_%E124033124042%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124031124038%_)))
               (_%E124032124088%_
                (lambda ()
                  (if (gx#stx-pair? _%e124031124038%_)
                      (let ((_%e124034124046%_
                             (gx#syntax-e _%e124031124038%_)))
                        (let ((_%hd124035124049%_ (##car _%e124034124046%_))
                              (_%tl124036124051%_ (##cdr _%e124034124046%_)))
                          (let ((_%body124054%_ _%tl124036124051%_))
                            (if (gx#stx-list? _%body124054%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_%decl124056%_)
                                     (let* ((_%e124057124064%_ _%decl124056%_)
                                            (_%E124059124068%_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _%e124057124064%_)))
                                            (_%E124058124084%_
                                             (lambda ()
                                               (if (gx#stx-pair?
                                                    _%e124057124064%_)
                                                   (let ((_%e124060124072%_
                                                          (gx#syntax-e
                                                           _%e124057124064%_)))
                                                     (let ((_%hd124061124075%_
                                                            (##car _%e124060124072%_))
                                                           (_%tl124062124077%_
                                                            (##cdr _%e124060124072%_)))
                                                       (let* ((_%head124080%_
                                                               _%hd124061124075%_)
                                                              (_%args124082%_
                                                               _%tl124062124077%_))
                                                         (if (gx#stx-list?
                                                              _%args124082%_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _%decl124056%_)
                                                             (_%E124059124068%_)))))
                                                   (_%E124059124068%_)))))
                                       (_%E124058124084%_)))
                                   _%body124054%_))
                                 (gx#stx-source _%stx124030%_))
                                (_%E124033124042%_)))))
                      (_%E124033124042%_)))))
          (_%E124032124088%_))))
    (define gx#core-expand-extern%
      (lambda (_%stx123934%_)
        (let* ((_%e123935123942%_ _%stx123934%_)
               (_%E123937123946%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e123935123942%_)))
               (_%E123936124026%_
                (lambda ()
                  (if (gx#stx-pair? _%e123935123942%_)
                      (let ((_%e123938123950%_
                             (gx#syntax-e _%e123935123942%_)))
                        (let ((_%hd123939123953%_ (##car _%e123938123950%_))
                              (_%tl123940123955%_ (##cdr _%e123938123950%_)))
                          (let ((_%body123958%_ _%tl123940123955%_))
                            (let _%lp123960%_ ((_%rest123962%_ _%body123958%_)
                                               (_%r123963%_ '()))
                              (let* ((_%e123964123978%_ _%rest123962%_)
                                     (_%E123976123982%_
                                      (lambda ()
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                         _%stx123934%_)))
                                     (_%E123966123986%_
                                      (lambda ()
                                        (if (gx#stx-null? _%e123964123978%_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-cons
                                              '%#extern
                                              (reverse _%r123963%_))
                                             (gx#stx-source _%stx123934%_))
                                            (_%E123976123982%_))))
                                     (_%E123965124022%_
                                      (lambda ()
                                        (if (gx#stx-pair? _%e123964123978%_)
                                            (let ((_%e123967123990%_
                                                   (gx#syntax-e
                                                    _%e123964123978%_)))
                                              (let ((_%hd123968123993%_
                                                     (##car _%e123967123990%_))
                                                    (_%tl123969123995%_
                                                     (##cdr _%e123967123990%_)))
                                                (if (gx#stx-pair?
                                                     _%hd123968123993%_)
                                                    (let ((_%e123970123998%_
                                                           (gx#syntax-e
                                                            _%hd123968123993%_)))
                                                      (let ((_%hd123971124001%_
                                                             (##car _%e123970123998%_))
                                                            (_%tl123972124003%_
                                                             (##cdr _%e123970123998%_)))
                                                        (let ((_%id124006%_
                                                               _%hd123971124001%_))
                                                          (if (gx#stx-pair?
                                                               _%tl123972124003%_)
                                                              (let ((_%e123973124008%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl123972124003%_)))
                        (let ((_%hd123974124011%_ (##car _%e123973124008%_))
                              (_%tl123975124013%_ (##cdr _%e123973124008%_)))
                          (let ((_%eid124016%_ _%hd123974124011%_))
                            (if (gx#stx-null? _%tl123975124013%_)
                                (let ((_%rest124018%_ _%tl123969123995%_))
                                  (if (and (gx#identifier? _%id124006%_)
                                           (gx#identifier? _%eid124016%_))
                                      (let ((_%eid124020%_
                                             (gx#stx-e _%eid124016%_)))
                                        (gx#core-bind-extern!__0
                                         _%id124006%_
                                         _%eid124020%_)
                                        (_%lp123960%_
                                         _%rest124018%_
                                         (cons (cons (gx#core-quote-syntax__0
                                                      _%id124006%_)
                                                     (cons _%eid124020%_ '()))
                                               _%r123963%_)))
                                      (_%E123966123986%_)))
                                (_%E123966123986%_)))))
                      (_%E123966123986%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E123966123986%_))))
                                            (_%E123966123986%_)))))
                                (_%E123965124022%_))))))
                      (_%E123937123946%_)))))
          (_%E123936124026%_))))
    (define gx#core-expand-define-values%
      (lambda (_%stx123880%_)
        (let* ((_%e123881123894%_ _%stx123880%_)
               (_%E123883123898%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e123881123894%_)))
               (_%E123882123930%_
                (lambda ()
                  (if (gx#stx-pair? _%e123881123894%_)
                      (let ((_%e123884123902%_
                             (gx#syntax-e _%e123881123894%_)))
                        (let ((_%hd123885123905%_ (##car _%e123884123902%_))
                              (_%tl123886123907%_ (##cdr _%e123884123902%_)))
                          (if (gx#stx-pair? _%tl123886123907%_)
                              (let ((_%e123887123910%_
                                     (gx#syntax-e _%tl123886123907%_)))
                                (let ((_%hd123888123913%_
                                       (##car _%e123887123910%_))
                                      (_%tl123889123915%_
                                       (##cdr _%e123887123910%_)))
                                  (let ((_%hd123918%_ _%hd123888123913%_))
                                    (if (gx#stx-pair? _%tl123889123915%_)
                                        (let ((_%e123890123920%_
                                               (gx#syntax-e
                                                _%tl123889123915%_)))
                                          (let ((_%hd123891123923%_
                                                 (##car _%e123890123920%_))
                                                (_%tl123892123925%_
                                                 (##cdr _%e123890123920%_)))
                                            (let ((_%expr123928%_
                                                   _%hd123891123923%_))
                                              (if (gx#stx-null?
                                                   _%tl123892123925%_)
                                                  (if (gx#core-bind-values?
                                                       _%hd123918%_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _%hd123918%_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd123918%_)
                             (cons (gx#core-expand-expression _%expr123928%_)
                                   '())))
                 (gx#stx-source _%stx123880%_)))
              (_%E123883123898%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E123883123898%_)))))
                                        (_%E123883123898%_)))))
                              (_%E123883123898%_))))
                      (_%E123883123898%_)))))
          (_%E123882123930%_))))
    (define gx#core-expand-define-runtime%
      (lambda (_%stx123824%_)
        (let* ((_%e123825123838%_ _%stx123824%_)
               (_%E123827123842%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e123825123838%_)))
               (_%E123826123876%_
                (lambda ()
                  (if (gx#stx-pair? _%e123825123838%_)
                      (let ((_%e123828123846%_
                             (gx#syntax-e _%e123825123838%_)))
                        (let ((_%hd123829123849%_ (##car _%e123828123846%_))
                              (_%tl123830123851%_ (##cdr _%e123828123846%_)))
                          (if (gx#stx-pair? _%tl123830123851%_)
                              (let ((_%e123831123854%_
                                     (gx#syntax-e _%tl123830123851%_)))
                                (let ((_%hd123832123857%_
                                       (##car _%e123831123854%_))
                                      (_%tl123833123859%_
                                       (##cdr _%e123831123854%_)))
                                  (let ((_%id123862%_ _%hd123832123857%_))
                                    (if (gx#stx-pair? _%tl123833123859%_)
                                        (let ((_%e123834123864%_
                                               (gx#syntax-e
                                                _%tl123833123859%_)))
                                          (let ((_%hd123835123867%_
                                                 (##car _%e123834123864%_))
                                                (_%tl123836123869%_
                                                 (##cdr _%e123834123864%_)))
                                            (let ((_%binding-id123872%_
                                                   _%hd123835123867%_))
                                              (if (gx#stx-null?
                                                   _%tl123836123869%_)
                                                  (if (and (gx#identifier?
                                                            _%id123862%_)
                                                           (gx#identifier?
                                                            _%binding-id123872%_))
                                                      (let ((_%eid123874%_
                                                             (gx#stx-e
                                                              _%binding-id123872%_)))
                                                        (gx#core-bind-runtime-reference!__0
                                                         _%id123862%_
                                                         _%eid123874%_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-runtime)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id123862%_)
                             (cons _%eid123874%_ '())))))
              (_%E123827123842%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E123827123842%_)))))
                                        (_%E123827123842%_)))))
                              (_%E123827123842%_))))
                      (_%E123827123842%_)))))
          (_%E123826123876%_))))
    (define gx#core-expand-define-syntax%
      (lambda (_%stx123767%_)
        (let* ((_%e123768123781%_ _%stx123767%_)
               (_%E123770123785%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e123768123781%_)))
               (_%E123769123820%_
                (lambda ()
                  (if (gx#stx-pair? _%e123768123781%_)
                      (let ((_%e123771123789%_
                             (gx#syntax-e _%e123768123781%_)))
                        (let ((_%hd123772123792%_ (##car _%e123771123789%_))
                              (_%tl123773123794%_ (##cdr _%e123771123789%_)))
                          (if (gx#stx-pair? _%tl123773123794%_)
                              (let ((_%e123774123797%_
                                     (gx#syntax-e _%tl123773123794%_)))
                                (let ((_%hd123775123800%_
                                       (##car _%e123774123797%_))
                                      (_%tl123776123802%_
                                       (##cdr _%e123774123797%_)))
                                  (let ((_%id123805%_ _%hd123775123800%_))
                                    (if (gx#stx-pair? _%tl123776123802%_)
                                        (let ((_%e123777123807%_
                                               (gx#syntax-e
                                                _%tl123776123802%_)))
                                          (let ((_%hd123778123810%_
                                                 (##car _%e123777123807%_))
                                                (_%tl123779123812%_
                                                 (##cdr _%e123777123807%_)))
                                            (let ((_%expr123815%_
                                                   _%hd123778123810%_))
                                              (if (gx#stx-null?
                                                   _%tl123779123812%_)
                                                  (if (gx#identifier?
                                                       _%id123805%_)
                                                      (let ((_g124726_
                                                             (gx#core-expand-expression+1
                                                              _%expr123815%_)))
                                                        (begin
                                                          (let ((_g124727_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g124726_)
                             (##vector-length _g124726_)
                             1)))
                    (if (not (##fx= _g124727_ 2))
                        (error "Context expects 2 values" _g124727_)))
                  (let ((_%e-stx123817%_ (##vector-ref _g124726_ 0))
                        (_%e123818%_ (##vector-ref _g124726_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _%id123805%_ _%e123818%_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _%id123805%_)
                                   (cons _%e-stx123817%_ '())))
                       (gx#stx-source _%stx123767%_))))))
              (_%E123770123785%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E123770123785%_)))))
                                        (_%E123770123785%_)))))
                              (_%E123770123785%_))))
                      (_%E123770123785%_)))))
          (_%E123769123820%_))))
    (define gx#core-expand-define-alias%
      (lambda (_%stx123711%_)
        (let* ((_%e123712123725%_ _%stx123711%_)
               (_%E123714123729%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e123712123725%_)))
               (_%E123713123763%_
                (lambda ()
                  (if (gx#stx-pair? _%e123712123725%_)
                      (let ((_%e123715123733%_
                             (gx#syntax-e _%e123712123725%_)))
                        (let ((_%hd123716123736%_ (##car _%e123715123733%_))
                              (_%tl123717123738%_ (##cdr _%e123715123733%_)))
                          (if (gx#stx-pair? _%tl123717123738%_)
                              (let ((_%e123718123741%_
                                     (gx#syntax-e _%tl123717123738%_)))
                                (let ((_%hd123719123744%_
                                       (##car _%e123718123741%_))
                                      (_%tl123720123746%_
                                       (##cdr _%e123718123741%_)))
                                  (let ((_%id123749%_ _%hd123719123744%_))
                                    (if (gx#stx-pair? _%tl123720123746%_)
                                        (let ((_%e123721123751%_
                                               (gx#syntax-e
                                                _%tl123720123746%_)))
                                          (let ((_%hd123722123754%_
                                                 (##car _%e123721123751%_))
                                                (_%tl123723123756%_
                                                 (##cdr _%e123721123751%_)))
                                            (let ((_%alias-id123759%_
                                                   _%hd123722123754%_))
                                              (if (gx#stx-null?
                                                   _%tl123723123756%_)
                                                  (if (and (gx#identifier?
                                                            _%id123749%_)
                                                           (gx#identifier?
                                                            _%alias-id123759%_))
                                                      (let ((_%alias-id123761%_
                                                             (gx#core-quote-syntax__0
                                                              _%alias-id123759%_)))
                                                        (gx#core-bind-alias!__0
                                                         _%id123749%_
                                                         _%alias-id123761%_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id123749%_)
                             (cons _%alias-id123761%_ '())))))
              (_%E123714123729%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E123714123729%_)))))
                                        (_%E123714123729%_)))))
                              (_%E123714123729%_))))
                      (_%E123714123729%_)))))
          (_%E123713123763%_))))
    (define gx#core-expand-lambda%__%
      (lambda (_%stx123654%_ _%wrap?123655%_)
        (let* ((_%e123656123666%_ _%stx123654%_)
               (_%E123658123670%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e123656123666%_)))
               (_%E123657123697%_
                (lambda ()
                  (if (gx#stx-pair? _%e123656123666%_)
                      (let ((_%e123659123674%_
                             (gx#syntax-e _%e123656123666%_)))
                        (let ((_%hd123660123677%_ (##car _%e123659123674%_))
                              (_%tl123661123679%_ (##cdr _%e123659123674%_)))
                          (if (gx#stx-pair? _%tl123661123679%_)
                              (let ((_%e123662123682%_
                                     (gx#syntax-e _%tl123661123679%_)))
                                (let ((_%hd123663123685%_
                                       (##car _%e123662123682%_))
                                      (_%tl123664123687%_
                                       (##cdr _%e123662123682%_)))
                                  (let* ((_%hd123690%_ _%hd123663123685%_)
                                         (_%body123692%_ _%tl123664123687%_))
                                    (if (gx#core-bind-values? _%hd123690%_)
                                        (__call-with-parameters
                                         (lambda ()
                                           (gx#core-bind-values!__0
                                            _%hd123690%_)
                                           (let ((_%body123695%_
                                                  (cons (gx#core-quote-bind-values
                                                         _%hd123690%_)
                                                        (cons (gx#core-expand-local-block
                                                               _%stx123654%_
                                                               _%body123692%_)
                                                              '()))))
                                             (if _%wrap?123655%_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _%body123695%_)
                                                  (gx#stx-source
                                                   _%stx123654%_))
                                                 _%body123695%_)))
                                         gx#current-expander-context
                                         (let ((__obj124719
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj124719)
                                           __obj124719))
                                        (_%E123658123670%_)))))
                              (_%E123658123670%_))))
                      (_%E123658123670%_)))))
          (_%E123657123697%_))))
    (define gx#core-expand-lambda%__0
      (lambda (_%stx123704%_)
        (let ((_%wrap?123706%_ '#t))
          (gx#core-expand-lambda%__% _%stx123704%_ _%wrap?123706%_))))
    (define gx#core-expand-lambda%
      (lambda _g124729_
        (let ((_g124728_ (##length _g124729_)))
          (cond ((##fx= _g124728_ 1)
                 (apply gx#core-expand-lambda%__0 _g124729_))
                ((##fx= _g124728_ 2)
                 (apply gx#core-expand-lambda%__% _g124729_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g124729_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_%stx123618%_)
        (let* ((_%e123619123626%_ _%stx123618%_)
               (_%E123621123630%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e123619123626%_)))
               (_%E123620123649%_
                (lambda ()
                  (if (gx#stx-pair? _%e123619123626%_)
                      (let ((_%e123622123634%_
                             (gx#syntax-e _%e123619123626%_)))
                        (let ((_%hd123623123637%_ (##car _%e123622123634%_))
                              (_%tl123624123639%_ (##cdr _%e123622123634%_)))
                          (let ((_%clauses123642%_ _%tl123624123639%_))
                            (if (gx#stx-list? _%clauses123642%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_%clause123644%_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _%clause123644%_)
                                       (let ((_%$e123646%_
                                              (gx#stx-source
                                               _%clause123644%_)))
                                         (if _%$e123646%_
                                             _%$e123646%_
                                             (gx#stx-source _%stx123618%_))))
                                      '#f))
                                   _%clauses123642%_))
                                 (gx#stx-source _%stx123618%_))
                                (_%E123621123630%_)))))
                      (_%E123621123630%_)))))
          (_%E123620123649%_))))
    (define gx#core-expand-let-values%
      (lambda (_%stx123572%_)
        (let* ((_%e123573123583%_ _%stx123572%_)
               (_%E123575123587%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e123573123583%_)))
               (_%E123574123614%_
                (lambda ()
                  (if (gx#stx-pair? _%e123573123583%_)
                      (let ((_%e123576123591%_
                             (gx#syntax-e _%e123573123583%_)))
                        (let ((_%hd123577123594%_ (##car _%e123576123591%_))
                              (_%tl123578123596%_ (##cdr _%e123576123591%_)))
                          (if (gx#stx-pair? _%tl123578123596%_)
                              (let ((_%e123579123599%_
                                     (gx#syntax-e _%tl123578123596%_)))
                                (let ((_%hd123580123602%_
                                       (##car _%e123579123599%_))
                                      (_%tl123581123604%_
                                       (##cdr _%e123579123599%_)))
                                  (let* ((_%hd123607%_ _%hd123580123602%_)
                                         (_%body123609%_ _%tl123581123604%_))
                                    (if (gx#core-expand-let-bind? _%hd123607%_)
                                        (let ((_%expressions123611%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _%hd123607%_)))
                                          (__call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _%hd123607%_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _%hd123607%_
                                                           _%expressions123611%_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%stx123572%_
                         _%body123609%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _%stx123572%_)))
                                           gx#current-expander-context
                                           (let ((__obj124720
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!__0
                                              __obj124720)
                                             __obj124720)))
                                        (_%E123575123587%_)))))
                              (_%E123575123587%_))))
                      (_%E123575123587%_)))))
          (_%E123574123614%_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_%stx123517%_ _%form123518%_)
        (let* ((_%e123519123529%_ _%stx123517%_)
               (_%E123521123533%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e123519123529%_)))
               (_%E123520123558%_
                (lambda ()
                  (if (gx#stx-pair? _%e123519123529%_)
                      (let ((_%e123522123537%_
                             (gx#syntax-e _%e123519123529%_)))
                        (let ((_%hd123523123540%_ (##car _%e123522123537%_))
                              (_%tl123524123542%_ (##cdr _%e123522123537%_)))
                          (if (gx#stx-pair? _%tl123524123542%_)
                              (let ((_%e123525123545%_
                                     (gx#syntax-e _%tl123524123542%_)))
                                (let ((_%hd123526123548%_
                                       (##car _%e123525123545%_))
                                      (_%tl123527123550%_
                                       (##cdr _%e123525123545%_)))
                                  (let* ((_%hd123553%_ _%hd123526123548%_)
                                         (_%body123555%_ _%tl123527123550%_))
                                    (if (gx#core-expand-let-bind? _%hd123553%_)
                                        (__call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _%hd123553%_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _%form123518%_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _%hd123553%_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _%hd123553%_))
                                                        (cons (gx#core-expand-local-block
                                                               _%stx123517%_
                                                               _%body123555%_)
                                                              '())))
                                            (gx#stx-source _%stx123517%_)))
                                         gx#current-expander-context
                                         (let ((__obj124721
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj124721)
                                           __obj124721))
                                        (_%E123521123533%_)))))
                              (_%E123521123533%_))))
                      (_%E123521123533%_)))))
          (_%E123520123558%_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_%stx123565%_)
        (let ((_%form123567%_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _%stx123565%_ _%form123567%_))))
    (define gx#core-expand-letrec-values%
      (lambda _g124731_
        (let ((_g124730_ (##length _g124731_)))
          (cond ((##fx= _g124730_ 1)
                 (apply gx#core-expand-letrec-values%__0 _g124731_))
                ((##fx= _g124730_ 2)
                 (apply gx#core-expand-letrec-values%__% _g124731_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g124731_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_%stx123514%_)
        (gx#core-expand-letrec-values%__% _%stx123514%_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_%stx123471%_)
        (if (gx#stx-list? _%stx123471%_)
            (gx#stx-andmap
             (lambda (_%bind123473%_)
               (let* ((_%e123474123484%_ _%bind123473%_)
                      (_%E123476123488%_ (lambda () '#f))
                      (_%E123475123510%_
                       (lambda ()
                         (if (gx#stx-pair? _%e123474123484%_)
                             (let ((_%e123477123492%_
                                    (gx#syntax-e _%e123474123484%_)))
                               (let ((_%hd123478123495%_
                                      (##car _%e123477123492%_))
                                     (_%tl123479123497%_
                                      (##cdr _%e123477123492%_)))
                                 (let ((_%hd123500%_ _%hd123478123495%_))
                                   (if (gx#stx-pair? _%tl123479123497%_)
                                       (let ((_%e123480123502%_
                                              (gx#syntax-e
                                               _%tl123479123497%_)))
                                         (let ((_%hd123481123505%_
                                                (##car _%e123480123502%_))
                                               (_%tl123482123507%_
                                                (##cdr _%e123480123502%_)))
                                           (if (gx#stx-null?
                                                _%tl123482123507%_)
                                               (gx#core-bind-values?
                                                _%hd123500%_)
                                               (_%E123476123488%_))))
                                       (_%E123476123488%_)))))
                             (_%E123476123488%_)))))
                 (_%E123475123510%_)))
             _%stx123471%_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_%bind123430%_)
        (let* ((_%e123431123441%_ _%bind123430%_)
               (_%E123433123445%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e123431123441%_)))
               (_%E123432123467%_
                (lambda ()
                  (if (gx#stx-pair? _%e123431123441%_)
                      (let ((_%e123434123449%_
                             (gx#syntax-e _%e123431123441%_)))
                        (let ((_%hd123435123452%_ (##car _%e123434123449%_))
                              (_%tl123436123454%_ (##cdr _%e123434123449%_)))
                          (if (gx#stx-pair? _%tl123436123454%_)
                              (let ((_%e123437123457%_
                                     (gx#syntax-e _%tl123436123454%_)))
                                (let ((_%hd123438123460%_
                                       (##car _%e123437123457%_))
                                      (_%tl123439123462%_
                                       (##cdr _%e123437123457%_)))
                                  (let ((_%expr123465%_ _%hd123438123460%_))
                                    (if (gx#stx-null? _%tl123439123462%_)
                                        (gx#core-expand-expression
                                         _%expr123465%_)
                                        (_%E123433123445%_)))))
                              (_%E123433123445%_))))
                      (_%E123433123445%_)))))
          (_%E123432123467%_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_%bind123389%_)
        (let* ((_%e123390123400%_ _%bind123389%_)
               (_%E123392123404%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e123390123400%_)))
               (_%E123391123426%_
                (lambda ()
                  (if (gx#stx-pair? _%e123390123400%_)
                      (let ((_%e123393123408%_
                             (gx#syntax-e _%e123390123400%_)))
                        (let ((_%hd123394123411%_ (##car _%e123393123408%_))
                              (_%tl123395123413%_ (##cdr _%e123393123408%_)))
                          (let ((_%hd123416%_ _%hd123394123411%_))
                            (if (gx#stx-pair? _%tl123395123413%_)
                                (let ((_%e123396123418%_
                                       (gx#syntax-e _%tl123395123413%_)))
                                  (let ((_%hd123397123421%_
                                         (##car _%e123396123418%_))
                                        (_%tl123398123423%_
                                         (##cdr _%e123396123418%_)))
                                    (if (gx#stx-null? _%tl123398123423%_)
                                        (gx#core-bind-values!__0 _%hd123416%_)
                                        (_%E123392123404%_))))
                                (_%E123392123404%_)))))
                      (_%E123392123404%_)))))
          (_%E123391123426%_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_%bind123347%_ _%expr123348%_)
        (let* ((_%e123349123359%_ _%bind123347%_)
               (_%E123351123363%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e123349123359%_)))
               (_%E123350123385%_
                (lambda ()
                  (if (gx#stx-pair? _%e123349123359%_)
                      (let ((_%e123352123367%_
                             (gx#syntax-e _%e123349123359%_)))
                        (let ((_%hd123353123370%_ (##car _%e123352123367%_))
                              (_%tl123354123372%_ (##cdr _%e123352123367%_)))
                          (let ((_%hd123375%_ _%hd123353123370%_))
                            (if (gx#stx-pair? _%tl123354123372%_)
                                (let ((_%e123355123377%_
                                       (gx#syntax-e _%tl123354123372%_)))
                                  (let ((_%hd123356123380%_
                                         (##car _%e123355123377%_))
                                        (_%tl123357123382%_
                                         (##cdr _%e123355123377%_)))
                                    (if (gx#stx-null? _%tl123357123382%_)
                                        (cons (gx#core-quote-bind-values
                                               _%hd123375%_)
                                              (cons _%expr123348%_ '()))
                                        (_%E123351123363%_))))
                                (_%E123351123363%_)))))
                      (_%E123351123363%_)))))
          (_%E123350123385%_))))
    (define gx#core-expand-let-syntax%
      (lambda (_%stx123301%_)
        (let* ((_%e123302123312%_ _%stx123301%_)
               (_%E123304123316%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e123302123312%_)))
               (_%E123303123343%_
                (lambda ()
                  (if (gx#stx-pair? _%e123302123312%_)
                      (let ((_%e123305123320%_
                             (gx#syntax-e _%e123302123312%_)))
                        (let ((_%hd123306123323%_ (##car _%e123305123320%_))
                              (_%tl123307123325%_ (##cdr _%e123305123320%_)))
                          (if (gx#stx-pair? _%tl123307123325%_)
                              (let ((_%e123308123328%_
                                     (gx#syntax-e _%tl123307123325%_)))
                                (let ((_%hd123309123331%_
                                       (##car _%e123308123328%_))
                                      (_%tl123310123333%_
                                       (##cdr _%e123308123328%_)))
                                  (let* ((_%hd123336%_ _%hd123309123331%_)
                                         (_%body123338%_ _%tl123310123333%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd123336%_)
                                        (let ((_%expanders123340%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _%hd123336%_)))
                                          (__call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _%hd123336%_
                                              _%expanders123340%_)
                                             (gx#core-expand-local-block
                                              _%stx123301%_
                                              _%body123338%_))
                                           gx#current-expander-context
                                           (let ((__obj124722
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!__0
                                              __obj124722)
                                             __obj124722)))
                                        (_%E123304123316%_)))))
                              (_%E123304123316%_))))
                      (_%E123304123316%_)))))
          (_%E123303123343%_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_%stx123250%_)
        (let* ((_%e123251123261%_ _%stx123250%_)
               (_%E123253123265%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e123251123261%_)))
               (_%E123252123297%_
                (lambda ()
                  (if (gx#stx-pair? _%e123251123261%_)
                      (let ((_%e123254123269%_
                             (gx#syntax-e _%e123251123261%_)))
                        (let ((_%hd123255123272%_ (##car _%e123254123269%_))
                              (_%tl123256123274%_ (##cdr _%e123254123269%_)))
                          (if (gx#stx-pair? _%tl123256123274%_)
                              (let ((_%e123257123277%_
                                     (gx#syntax-e _%tl123256123274%_)))
                                (let ((_%hd123258123280%_
                                       (##car _%e123257123277%_))
                                      (_%tl123259123282%_
                                       (##cdr _%e123257123277%_)))
                                  (let* ((_%hd123285%_ _%hd123258123280%_)
                                         (_%body123287%_ _%tl123259123282%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd123285%_)
                                        (__call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _%hd123285%_
                                            (make-list
                                             (gx#stx-length _%hd123285%_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_%g123289123292%_
                                                     _%g123290123294%_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _%g123289123292%_
                                               _%g123290123294%_
                                               '#t))
                                            _%hd123285%_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _%hd123285%_))
                                           (gx#core-expand-local-block
                                            _%stx123250%_
                                            _%body123287%_))
                                         gx#current-expander-context
                                         (let ((__obj124723
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj124723)
                                           __obj124723))
                                        (_%E123253123265%_)))))
                              (_%E123253123265%_))))
                      (_%E123253123265%_)))))
          (_%E123252123297%_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_%stx123207%_)
        (if (gx#stx-list? _%stx123207%_)
            (gx#stx-andmap
             (lambda (_%bind123209%_)
               (let* ((_%e123210123220%_ _%bind123209%_)
                      (_%E123212123224%_ (lambda () '#f))
                      (_%E123211123246%_
                       (lambda ()
                         (if (gx#stx-pair? _%e123210123220%_)
                             (let ((_%e123213123228%_
                                    (gx#syntax-e _%e123210123220%_)))
                               (let ((_%hd123214123231%_
                                      (##car _%e123213123228%_))
                                     (_%tl123215123233%_
                                      (##cdr _%e123213123228%_)))
                                 (let ((_%hd123236%_ _%hd123214123231%_))
                                   (if (gx#stx-pair? _%tl123215123233%_)
                                       (let ((_%e123216123238%_
                                              (gx#syntax-e
                                               _%tl123215123233%_)))
                                         (let ((_%hd123217123241%_
                                                (##car _%e123216123238%_))
                                               (_%tl123218123243%_
                                                (##cdr _%e123216123238%_)))
                                           (if (gx#stx-null?
                                                _%tl123218123243%_)
                                               (gx#identifier? _%hd123236%_)
                                               (_%E123212123224%_))))
                                       (_%E123212123224%_)))))
                             (_%E123212123224%_)))))
                 (_%E123211123246%_)))
             _%stx123207%_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_%bind123163%_)
        (let* ((_%e123164123174%_ _%bind123163%_)
               (_%E123166123178%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e123164123174%_)))
               (_%E123165123203%_
                (lambda ()
                  (if (gx#stx-pair? _%e123164123174%_)
                      (let ((_%e123167123182%_
                             (gx#syntax-e _%e123164123174%_)))
                        (let ((_%hd123168123185%_ (##car _%e123167123182%_))
                              (_%tl123169123187%_ (##cdr _%e123167123182%_)))
                          (if (gx#stx-pair? _%tl123169123187%_)
                              (let ((_%e123170123190%_
                                     (gx#syntax-e _%tl123169123187%_)))
                                (let ((_%hd123171123193%_
                                       (##car _%e123170123190%_))
                                      (_%tl123172123195%_
                                       (##cdr _%e123170123190%_)))
                                  (let ((_%expr123198%_ _%hd123171123193%_))
                                    (if (gx#stx-null? _%tl123172123195%_)
                                        (let ((_g124732_
                                               (gx#core-expand-expression+1
                                                _%expr123198%_)))
                                          (begin
                                            (let ((_g124733_
                                                   (if (##values? _g124732_)
                                                       (##vector-length
                                                        _g124732_)
                                                       1)))
                                              (if (not (##fx= _g124733_ 2))
                                                  (error "Context expects 2 values"
                                                         _g124733_)))
                                            (let ((_%_123200%_
                                                   (##vector-ref _g124732_ 0))
                                                  (_%e123201%_
                                                   (##vector-ref _g124732_ 1)))
                                              _%e123201%_)))
                                        (_%E123166123178%_)))))
                              (_%E123166123178%_))))
                      (_%E123166123178%_)))))
          (_%E123165123203%_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_%bind123108%_ _%e123109%_ _%rebind?123110%_)
        (let* ((_%e123111123121%_ _%bind123108%_)
               (_%E123113123125%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e123111123121%_)))
               (_%E123112123147%_
                (lambda ()
                  (if (gx#stx-pair? _%e123111123121%_)
                      (let ((_%e123114123129%_
                             (gx#syntax-e _%e123111123121%_)))
                        (let ((_%hd123115123132%_ (##car _%e123114123129%_))
                              (_%tl123116123134%_ (##cdr _%e123114123129%_)))
                          (let ((_%id123137%_ _%hd123115123132%_))
                            (if (gx#stx-pair? _%tl123116123134%_)
                                (let ((_%e123117123139%_
                                       (gx#syntax-e _%tl123116123134%_)))
                                  (let ((_%hd123118123142%_
                                         (##car _%e123117123139%_))
                                        (_%tl123119123144%_
                                         (##cdr _%e123117123139%_)))
                                    (if (gx#stx-null? _%tl123119123144%_)
                                        (gx#core-bind-syntax!__1
                                         _%id123137%_
                                         _%e123109%_
                                         _%rebind?123110%_)
                                        (_%E123113123125%_))))
                                (_%E123113123125%_)))))
                      (_%E123113123125%_)))))
          (_%E123112123147%_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_%bind123154%_ _%e123155%_)
        (let ((_%rebind?123157%_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _%bind123154%_
           _%e123155%_
           _%rebind?123157%_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g124735_
        (let ((_g124734_ (##length _g124735_)))
          (cond ((##fx= _g124734_ 2)
                 (apply gx#core-expand-let-bind-syntax!__0 _g124735_))
                ((##fx= _g124734_ 3)
                 (apply gx#core-expand-let-bind-syntax!__% _g124735_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g124735_))))))
    (define gx#core-expand-expression%
      (lambda (_%stx123066%_)
        (let* ((_%e123067123077%_ _%stx123066%_)
               (_%E123069123081%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e123067123077%_)))
               (_%E123068123103%_
                (lambda ()
                  (if (gx#stx-pair? _%e123067123077%_)
                      (let ((_%e123070123085%_
                             (gx#syntax-e _%e123067123077%_)))
                        (let ((_%hd123071123088%_ (##car _%e123070123085%_))
                              (_%tl123072123090%_ (##cdr _%e123070123085%_)))
                          (if (gx#stx-pair? _%tl123072123090%_)
                              (let ((_%e123073123093%_
                                     (gx#syntax-e _%tl123072123090%_)))
                                (let ((_%hd123074123096%_
                                       (##car _%e123073123093%_))
                                      (_%tl123075123098%_
                                       (##cdr _%e123073123093%_)))
                                  (let ((_%expr123101%_ _%hd123074123096%_))
                                    (if (gx#stx-null? _%tl123075123098%_)
                                        (gx#core-expand-expression
                                         _%expr123101%_)
                                        (_%E123069123081%_)))))
                              (_%E123069123081%_))))
                      (_%E123069123081%_)))))
          (_%E123068123103%_))))
    (define gx#core-expand-quote%
      (lambda (_%stx123025%_)
        (let* ((_%e123026123036%_ _%stx123025%_)
               (_%E123028123040%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e123026123036%_)))
               (_%E123027123062%_
                (lambda ()
                  (if (gx#stx-pair? _%e123026123036%_)
                      (let ((_%e123029123044%_
                             (gx#syntax-e _%e123026123036%_)))
                        (let ((_%hd123030123047%_ (##car _%e123029123044%_))
                              (_%tl123031123049%_ (##cdr _%e123029123044%_)))
                          (if (gx#stx-pair? _%tl123031123049%_)
                              (let ((_%e123032123052%_
                                     (gx#syntax-e _%tl123031123049%_)))
                                (let ((_%hd123033123055%_
                                       (##car _%e123032123052%_))
                                      (_%tl123034123057%_
                                       (##cdr _%e123032123052%_)))
                                  (let ((_%e123060%_ _%hd123033123055%_))
                                    (if (gx#stx-null? _%tl123034123057%_)
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#quote)
                                               (cons (gx#syntax->datum
                                                      _%e123060%_)
                                                     '()))
                                         (gx#stx-source _%stx123025%_))
                                        (_%E123028123040%_)))))
                              (_%E123028123040%_))))
                      (_%E123028123040%_)))))
          (_%E123027123062%_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_%stx122984%_)
        (let* ((_%e122985122995%_ _%stx122984%_)
               (_%E122987122999%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122985122995%_)))
               (_%E122986123021%_
                (lambda ()
                  (if (gx#stx-pair? _%e122985122995%_)
                      (let ((_%e122988123003%_
                             (gx#syntax-e _%e122985122995%_)))
                        (let ((_%hd122989123006%_ (##car _%e122988123003%_))
                              (_%tl122990123008%_ (##cdr _%e122988123003%_)))
                          (if (gx#stx-pair? _%tl122990123008%_)
                              (let ((_%e122991123011%_
                                     (gx#syntax-e _%tl122990123008%_)))
                                (let ((_%hd122992123014%_
                                       (##car _%e122991123011%_))
                                      (_%tl122993123016%_
                                       (##cdr _%e122991123011%_)))
                                  (let ((_%e123019%_ _%hd122992123014%_))
                                    (if (gx#stx-null? _%tl122993123016%_)
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#quote-syntax)
                                               (cons (gx#core-quote-syntax__0
                                                      _%e123019%_)
                                                     '()))
                                         (gx#stx-source _%stx122984%_))
                                        (_%E122987122999%_)))))
                              (_%E122987122999%_))))
                      (_%E122987122999%_)))))
          (_%E122986123021%_))))
    (define gx#core-expand-call%
      (lambda (_%stx122941%_)
        (let* ((_%e122942122952%_ _%stx122941%_)
               (_%E122944122956%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122942122952%_)))
               (_%E122943122980%_
                (lambda ()
                  (if (gx#stx-pair? _%e122942122952%_)
                      (let ((_%e122945122960%_
                             (gx#syntax-e _%e122942122952%_)))
                        (let ((_%hd122946122963%_ (##car _%e122945122960%_))
                              (_%tl122947122965%_ (##cdr _%e122945122960%_)))
                          (if (gx#stx-pair? _%tl122947122965%_)
                              (let ((_%e122948122968%_
                                     (gx#syntax-e _%tl122947122965%_)))
                                (let ((_%hd122949122971%_
                                       (##car _%e122948122968%_))
                                      (_%tl122950122973%_
                                       (##cdr _%e122948122968%_)))
                                  (let* ((_%rator122976%_ _%hd122949122971%_)
                                         (_%args122978%_ _%tl122950122973%_))
                                    (if (gx#stx-list? _%args122978%_)
                                        (gx#core-quote-syntax__1
                                         (gx#core-cons*
                                          '%#call
                                          (gx#core-expand-expression
                                           _%rator122976%_)
                                          (gx#stx-map1
                                           gx#core-expand-expression
                                           _%args122978%_))
                                         (gx#stx-source _%stx122941%_))
                                        (_%E122944122956%_)))))
                              (_%E122944122956%_))))
                      (_%E122944122956%_)))))
          (_%E122943122980%_))))
    (define gx#core-expand-if%
      (lambda (_%stx122874%_)
        (let* ((_%e122875122891%_ _%stx122874%_)
               (_%E122877122895%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122875122891%_)))
               (_%E122876122937%_
                (lambda ()
                  (if (gx#stx-pair? _%e122875122891%_)
                      (let ((_%e122878122899%_
                             (gx#syntax-e _%e122875122891%_)))
                        (let ((_%hd122879122902%_ (##car _%e122878122899%_))
                              (_%tl122880122904%_ (##cdr _%e122878122899%_)))
                          (if (gx#stx-pair? _%tl122880122904%_)
                              (let ((_%e122881122907%_
                                     (gx#syntax-e _%tl122880122904%_)))
                                (let ((_%hd122882122910%_
                                       (##car _%e122881122907%_))
                                      (_%tl122883122912%_
                                       (##cdr _%e122881122907%_)))
                                  (let ((_%test122915%_ _%hd122882122910%_))
                                    (if (gx#stx-pair? _%tl122883122912%_)
                                        (let ((_%e122884122917%_
                                               (gx#syntax-e
                                                _%tl122883122912%_)))
                                          (let ((_%hd122885122920%_
                                                 (##car _%e122884122917%_))
                                                (_%tl122886122922%_
                                                 (##cdr _%e122884122917%_)))
                                            (let ((_%K122925%_
                                                   _%hd122885122920%_))
                                              (if (gx#stx-pair?
                                                   _%tl122886122922%_)
                                                  (let ((_%e122887122927%_
                                                         (gx#syntax-e
                                                          _%tl122886122922%_)))
                                                    (let ((_%hd122888122930%_
                                                           (##car _%e122887122927%_))
                                                          (_%tl122889122932%_
                                                           (##cdr _%e122887122927%_)))
                                                      (let ((_%E122935%_
                                                             _%hd122888122930%_))
                                                        (if (gx#stx-null?
                                                             _%tl122889122932%_)
                                                            (gx#core-quote-syntax__1
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#if)
                           (cons (gx#core-expand-expression _%test122915%_)
                                 (cons (gx#core-expand-expression _%K122925%_)
                                       (cons (gx#core-expand-expression
                                              _%E122935%_)
                                             '()))))
                     (gx#stx-source _%stx122874%_))
                    (_%E122877122895%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E122877122895%_)))))
                                        (_%E122877122895%_)))))
                              (_%E122877122895%_))))
                      (_%E122877122895%_)))))
          (_%E122876122937%_))))
    (define gx#core-expand-ref%
      (lambda (_%stx122833%_)
        (let* ((_%e122834122844%_ _%stx122833%_)
               (_%E122836122848%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122834122844%_)))
               (_%E122835122870%_
                (lambda ()
                  (if (gx#stx-pair? _%e122834122844%_)
                      (let ((_%e122837122852%_
                             (gx#syntax-e _%e122834122844%_)))
                        (let ((_%hd122838122855%_ (##car _%e122837122852%_))
                              (_%tl122839122857%_ (##cdr _%e122837122852%_)))
                          (if (gx#stx-pair? _%tl122839122857%_)
                              (let ((_%e122840122860%_
                                     (gx#syntax-e _%tl122839122857%_)))
                                (let ((_%hd122841122863%_
                                       (##car _%e122840122860%_))
                                      (_%tl122842122865%_
                                       (##cdr _%e122840122860%_)))
                                  (let ((_%id122868%_ _%hd122841122863%_))
                                    (if (gx#stx-null? _%tl122842122865%_)
                                        (if (gx#identifier? _%id122868%_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _%id122868%_
                                                          _%stx122833%_)
                                                         '()))
                                             (gx#stx-source _%stx122833%_))
                                            (_%E122836122848%_))
                                        (_%E122836122848%_)))))
                              (_%E122836122848%_))))
                      (_%E122836122848%_)))))
          (_%E122835122870%_))))
    (define gx#core-expand-setq%
      (lambda (_%stx122779%_)
        (let* ((_%e122780122793%_ _%stx122779%_)
               (_%E122782122797%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122780122793%_)))
               (_%E122781122829%_
                (lambda ()
                  (if (gx#stx-pair? _%e122780122793%_)
                      (let ((_%e122783122801%_
                             (gx#syntax-e _%e122780122793%_)))
                        (let ((_%hd122784122804%_ (##car _%e122783122801%_))
                              (_%tl122785122806%_ (##cdr _%e122783122801%_)))
                          (if (gx#stx-pair? _%tl122785122806%_)
                              (let ((_%e122786122809%_
                                     (gx#syntax-e _%tl122785122806%_)))
                                (let ((_%hd122787122812%_
                                       (##car _%e122786122809%_))
                                      (_%tl122788122814%_
                                       (##cdr _%e122786122809%_)))
                                  (let ((_%id122817%_ _%hd122787122812%_))
                                    (if (gx#stx-pair? _%tl122788122814%_)
                                        (let ((_%e122789122819%_
                                               (gx#syntax-e
                                                _%tl122788122814%_)))
                                          (let ((_%hd122790122822%_
                                                 (##car _%e122789122819%_))
                                                (_%tl122791122824%_
                                                 (##cdr _%e122789122819%_)))
                                            (let ((_%expr122827%_
                                                   _%hd122790122822%_))
                                              (if (gx#stx-null?
                                                   _%tl122791122824%_)
                                                  (if (gx#identifier?
                                                       _%id122817%_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%id122817%_
                            _%stx122779%_)
                           (cons (gx#core-expand-expression _%expr122827%_)
                                 '())))
               (gx#stx-source _%stx122779%_))
              (_%E122782122797%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E122782122797%_)))))
                                        (_%E122782122797%_)))))
                              (_%E122782122797%_))))
                      (_%E122782122797%_)))))
          (_%E122781122829%_))))
    (define gx#macro-expand-extern
      (lambda (_%stx122624%_)
        (letrec ((_%generate122626%_
                  (lambda (_%body122656%_)
                    (let _%lp122658%_ ((_%rest122660%_ _%body122656%_)
                                       (_%ns122661%_
                                        (gx#core-context-namespace__0))
                                       (_%r122662%_ '()))
                      (let* ((_%e122663122678%_ _%rest122660%_)
                             (_%E122676122682%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _%e122663122678%_)))
                             (_%E122672122686%_
                              (lambda ()
                                (if (gx#stx-null? _%e122663122678%_)
                                    (reverse _%r122662%_)
                                    (_%E122676122682%_))))
                             (_%E122665122743%_
                              (lambda ()
                                (if (gx#stx-pair? _%e122663122678%_)
                                    (let ((_%e122673122690%_
                                           (gx#syntax-e _%e122663122678%_)))
                                      (let ((_%hd122674122693%_
                                             (##car _%e122673122690%_))
                                            (_%tl122675122695%_
                                             (##cdr _%e122673122690%_)))
                                        (let* ((_%hd122698%_
                                                _%hd122674122693%_)
                                               (_%rest122700%_
                                                _%tl122675122695%_))
                                          (if (gx#identifier? _%hd122698%_)
                                              (_%lp122658%_
                                               _%rest122700%_
                                               _%ns122661%_
                                               (cons (cons _%hd122698%_
                                                           (cons (if _%ns122661%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-identifier
                              _%hd122698%_
                              _%ns122661%_
                              '"#"
                              _%hd122698%_)
                             _%hd122698%_)
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r122662%_))
                                              (let* ((_%e122701122711%_
                                                      _%hd122698%_)
                                                     (_%E122703122715%_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid syntax-case clause"
                                                         _%e122701122711%_)))
                                                     (_%E122702122739%_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _%e122701122711%_)
                                                            (let ((_%e122704122719%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%e122701122711%_)))
                      (let ((_%hd122705122722%_ (##car _%e122704122719%_))
                            (_%tl122706122724%_ (##cdr _%e122704122719%_)))
                        (let ((_%id122727%_ _%hd122705122722%_))
                          (if (gx#stx-pair? _%tl122706122724%_)
                              (let ((_%e122707122729%_
                                     (gx#syntax-e _%tl122706122724%_)))
                                (let ((_%hd122708122732%_
                                       (##car _%e122707122729%_))
                                      (_%tl122709122734%_
                                       (##cdr _%e122707122729%_)))
                                  (let ((_%eid122737%_ _%hd122708122732%_))
                                    (if (gx#stx-null? _%tl122709122734%_)
                                        (if (and (gx#identifier? _%id122727%_)
                                                 (gx#identifier?
                                                  _%eid122737%_))
                                            (_%lp122658%_
                                             _%rest122700%_
                                             _%ns122661%_
                                             (cons (cons _%id122727%_
                                                         (cons _%eid122737%_
                                                               '()))
                                                   _%r122662%_))
                                            (_%E122703122715%_))
                                        (_%E122703122715%_)))))
                              (_%E122703122715%_)))))
                    (_%E122703122715%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E122702122739%_))))))
                                    (_%E122672122686%_))))
                             (_%E122664122775%_
                              (lambda ()
                                (if (gx#stx-pair? _%e122663122678%_)
                                    (let ((_%e122666122747%_
                                           (gx#syntax-e _%e122663122678%_)))
                                      (let ((_%hd122667122750%_
                                             (##car _%e122666122747%_))
                                            (_%tl122668122752%_
                                             (##cdr _%e122666122747%_)))
                                        (if (eq? (gx#stx-e _%hd122667122750%_)
                                                 'namespace:)
                                            (if (gx#stx-pair?
                                                 _%tl122668122752%_)
                                                (let ((_%e122669122755%_
                                                       (gx#syntax-e
                                                        _%tl122668122752%_)))
                                                  (let ((_%hd122670122758%_
                                                         (##car _%e122669122755%_))
                                                        (_%tl122671122760%_
                                                         (##cdr _%e122669122755%_)))
                                                    (let* ((_%ns122763%_
                                                            _%hd122670122758%_)
                                                           (_%rest122765%_
                                                            _%tl122671122760%_)
                                                           (_%ns122773%_
                                                            (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%ns122763%_)
                        (symbol->string (gx#stx-e _%ns122763%_))
                        (if (or (gx#stx-string? _%ns122763%_)
                                (gx#stx-false? _%ns122763%_))
                            (gx#stx-e _%ns122763%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; extern expects namespace identifier"
                             _%stx122624%_
                             _%ns122763%_)))))
              (_%lp122658%_ _%rest122765%_ _%ns122773%_ _%r122662%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E122665122743%_))
                                            (_%E122665122743%_))))
                                    (_%E122665122743%_)))))
                        (_%E122664122775%_))))))
          (let* ((_%e122627122634%_ _%stx122624%_)
                 (_%E122629122638%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e122627122634%_)))
                 (_%E122628122652%_
                  (lambda ()
                    (if (gx#stx-pair? _%e122627122634%_)
                        (let ((_%e122630122642%_
                               (gx#syntax-e _%e122627122634%_)))
                          (let ((_%hd122631122645%_ (##car _%e122630122642%_))
                                (_%tl122632122647%_ (##cdr _%e122630122642%_)))
                            (let ((_%body122650%_ _%tl122632122647%_))
                              (if (gx#stx-list? _%body122650%_)
                                  (gx#core-cons
                                   '%#extern
                                   (_%generate122626%_ _%body122650%_))
                                  (_%E122629122638%_)))))
                        (_%E122629122638%_)))))
            (_%E122628122652%_)))))
    (define gx#macro-expand-define-values
      (lambda (_%stx122570%_)
        (let* ((_%e122571122584%_ _%stx122570%_)
               (_%E122573122588%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122571122584%_)))
               (_%E122572122620%_
                (lambda ()
                  (if (gx#stx-pair? _%e122571122584%_)
                      (let ((_%e122574122592%_
                             (gx#syntax-e _%e122571122584%_)))
                        (let ((_%hd122575122595%_ (##car _%e122574122592%_))
                              (_%tl122576122597%_ (##cdr _%e122574122592%_)))
                          (if (gx#stx-pair? _%tl122576122597%_)
                              (let ((_%e122577122600%_
                                     (gx#syntax-e _%tl122576122597%_)))
                                (let ((_%hd122578122603%_
                                       (##car _%e122577122600%_))
                                      (_%tl122579122605%_
                                       (##cdr _%e122577122600%_)))
                                  (let ((_%hd122608%_ _%hd122578122603%_))
                                    (if (gx#stx-pair? _%tl122579122605%_)
                                        (let ((_%e122580122610%_
                                               (gx#syntax-e
                                                _%tl122579122605%_)))
                                          (let ((_%hd122581122613%_
                                                 (##car _%e122580122610%_))
                                                (_%tl122582122615%_
                                                 (##cdr _%e122580122610%_)))
                                            (let ((_%expr122618%_
                                                   _%hd122581122613%_))
                                              (if (gx#stx-null?
                                                   _%tl122582122615%_)
                                                  (if (gx#stx-andmap
                                                       gx#identifier?
                                                       _%hd122608%_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-values)
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           identity
                           _%hd122608%_)
                          (cons _%expr122618%_ '())))
              (_%E122573122588%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E122573122588%_)))))
                                        (_%E122573122588%_)))))
                              (_%E122573122588%_))))
                      (_%E122573122588%_)))))
          (_%E122572122620%_))))
    (define gx#macro-expand-define-syntax
      (lambda (_%stx122516%_)
        (let* ((_%e122517122530%_ _%stx122516%_)
               (_%E122519122534%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122517122530%_)))
               (_%E122518122566%_
                (lambda ()
                  (if (gx#stx-pair? _%e122517122530%_)
                      (let ((_%e122520122538%_
                             (gx#syntax-e _%e122517122530%_)))
                        (let ((_%hd122521122541%_ (##car _%e122520122538%_))
                              (_%tl122522122543%_ (##cdr _%e122520122538%_)))
                          (if (gx#stx-pair? _%tl122522122543%_)
                              (let ((_%e122523122546%_
                                     (gx#syntax-e _%tl122522122543%_)))
                                (let ((_%hd122524122549%_
                                       (##car _%e122523122546%_))
                                      (_%tl122525122551%_
                                       (##cdr _%e122523122546%_)))
                                  (let ((_%hd122554%_ _%hd122524122549%_))
                                    (if (gx#stx-pair? _%tl122525122551%_)
                                        (let ((_%e122526122556%_
                                               (gx#syntax-e
                                                _%tl122525122551%_)))
                                          (let ((_%hd122527122559%_
                                                 (##car _%e122526122556%_))
                                                (_%tl122528122561%_
                                                 (##cdr _%e122526122556%_)))
                                            (let ((_%expr122564%_
                                                   _%hd122527122559%_))
                                              (if (gx#stx-null?
                                                   _%tl122528122561%_)
                                                  (if (gx#identifier?
                                                       _%hd122554%_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-syntax)
                                                            (cons _%hd122554%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%expr122564%_ '())))
              (_%E122519122534%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E122519122534%_)))))
                                        (_%E122519122534%_)))))
                              (_%E122519122534%_))))
                      (_%E122519122534%_)))))
          (_%E122518122566%_))))
    (define gx#macro-expand-define-alias
      (lambda (_%stx122462%_)
        (let* ((_%e122463122476%_ _%stx122462%_)
               (_%E122465122480%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122463122476%_)))
               (_%E122464122512%_
                (lambda ()
                  (if (gx#stx-pair? _%e122463122476%_)
                      (let ((_%e122466122484%_
                             (gx#syntax-e _%e122463122476%_)))
                        (let ((_%hd122467122487%_ (##car _%e122466122484%_))
                              (_%tl122468122489%_ (##cdr _%e122466122484%_)))
                          (if (gx#stx-pair? _%tl122468122489%_)
                              (let ((_%e122469122492%_
                                     (gx#syntax-e _%tl122468122489%_)))
                                (let ((_%hd122470122495%_
                                       (##car _%e122469122492%_))
                                      (_%tl122471122497%_
                                       (##cdr _%e122469122492%_)))
                                  (let ((_%id122500%_ _%hd122470122495%_))
                                    (if (gx#stx-pair? _%tl122471122497%_)
                                        (let ((_%e122472122502%_
                                               (gx#syntax-e
                                                _%tl122471122497%_)))
                                          (let ((_%hd122473122505%_
                                                 (##car _%e122472122502%_))
                                                (_%tl122474122507%_
                                                 (##cdr _%e122472122502%_)))
                                            (let ((_%alias-id122510%_
                                                   _%hd122473122505%_))
                                              (if (gx#stx-null?
                                                   _%tl122474122507%_)
                                                  (if (and (gx#identifier?
                                                            _%id122500%_)
                                                           (gx#identifier?
                                                            _%alias-id122510%_))
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-alias)
                                                            (cons _%id122500%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%alias-id122510%_ '())))
              (_%E122465122480%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E122465122480%_)))))
                                        (_%E122465122480%_)))))
                              (_%E122465122480%_))))
                      (_%E122465122480%_)))))
          (_%E122464122512%_))))
    (define gx#macro-expand-lambda%
      (lambda (_%stx122419%_)
        (let* ((_%e122420122430%_ _%stx122419%_)
               (_%E122422122434%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122420122430%_)))
               (_%E122421122458%_
                (lambda ()
                  (if (gx#stx-pair? _%e122420122430%_)
                      (let ((_%e122423122438%_
                             (gx#syntax-e _%e122420122430%_)))
                        (let ((_%hd122424122441%_ (##car _%e122423122438%_))
                              (_%tl122425122443%_ (##cdr _%e122423122438%_)))
                          (if (gx#stx-pair? _%tl122425122443%_)
                              (let ((_%e122426122446%_
                                     (gx#syntax-e _%tl122425122443%_)))
                                (let ((_%hd122427122449%_
                                       (##car _%e122426122446%_))
                                      (_%tl122428122451%_
                                       (##cdr _%e122426122446%_)))
                                  (let* ((_%hd122454%_ _%hd122427122449%_)
                                         (_%body122456%_ _%tl122428122451%_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _%hd122454%_)
                                             (gx#stx-list? _%body122456%_)
                                             (not (gx#stx-null?
                                                   _%body122456%_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1 identity _%hd122454%_)
                                         _%body122456%_)
                                        (_%E122422122434%_)))))
                              (_%E122422122434%_))))
                      (_%E122422122434%_)))))
          (_%E122421122458%_))))
    (define gx#macro-expand-case-lambda
      (lambda (_%stx122355%_)
        (letrec ((_%generate122357%_
                  (lambda (_%clause122387%_)
                    (let* ((_%e122388122395%_ _%clause122387%_)
                           (_%E122390122399%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _%stx122355%_
                               _%clause122387%_)))
                           (_%E122389122415%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122388122395%_)
                                  (let ((_%e122391122403%_
                                         (gx#syntax-e _%e122388122395%_)))
                                    (let ((_%hd122392122406%_
                                           (##car _%e122391122403%_))
                                          (_%tl122393122408%_
                                           (##cdr _%e122391122403%_)))
                                      (let* ((_%hd122411%_ _%hd122392122406%_)
                                             (_%body122413%_
                                              _%tl122393122408%_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _%hd122411%_)
                                                 (gx#stx-list? _%body122413%_)
                                                 (not (gx#stx-null?
                                                       _%body122413%_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    identity
                                                    _%hd122411%_)
                                                   _%body122413%_)
                                             (gx#stx-source _%clause122387%_))
                                            (_%E122390122399%_)))))
                                  (_%E122390122399%_)))))
                      (_%E122389122415%_)))))
          (let* ((_%e122358122365%_ _%stx122355%_)
                 (_%E122360122369%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e122358122365%_)))
                 (_%E122359122383%_
                  (lambda ()
                    (if (gx#stx-pair? _%e122358122365%_)
                        (let ((_%e122361122373%_
                               (gx#syntax-e _%e122358122365%_)))
                          (let ((_%hd122362122376%_ (##car _%e122361122373%_))
                                (_%tl122363122378%_ (##cdr _%e122361122373%_)))
                            (let ((_%clauses122381%_ _%tl122363122378%_))
                              (if (gx#stx-list? _%clauses122381%_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _%generate122357%_
                                    _%clauses122381%_))
                                  (_%E122360122369%_)))))
                        (_%E122360122369%_)))))
            (_%E122359122383%_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_%stx122256%_ _%form122257%_)
        (letrec ((_%generate122259%_
                  (lambda (_%bind122302%_)
                    (let* ((_%e122303122313%_ _%bind122302%_)
                           (_%E122305122317%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _%stx122256%_
                               _%bind122302%_)))
                           (_%E122304122341%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122303122313%_)
                                  (let ((_%e122306122321%_
                                         (gx#syntax-e _%e122303122313%_)))
                                    (let ((_%hd122307122324%_
                                           (##car _%e122306122321%_))
                                          (_%tl122308122326%_
                                           (##cdr _%e122306122321%_)))
                                      (let ((_%ids122329%_ _%hd122307122324%_))
                                        (if (gx#stx-pair? _%tl122308122326%_)
                                            (let ((_%e122309122331%_
                                                   (gx#syntax-e
                                                    _%tl122308122326%_)))
                                              (let ((_%hd122310122334%_
                                                     (##car _%e122309122331%_))
                                                    (_%tl122311122336%_
                                                     (##cdr _%e122309122331%_)))
                                                (let ((_%expr122339%_
                                                       _%hd122310122334%_))
                                                  (if (gx#stx-null?
                                                       _%tl122311122336%_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _%ids122329%_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         identity
                         _%ids122329%_)
                        (cons _%expr122339%_ '()))
                  (_%E122305122317%_))
              (_%E122305122317%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E122305122317%_)))))
                                  (_%E122305122317%_)))))
                      (_%E122304122341%_)))))
          (let* ((_%e122260122270%_ _%stx122256%_)
                 (_%E122262122274%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e122260122270%_)))
                 (_%E122261122298%_
                  (lambda ()
                    (if (gx#stx-pair? _%e122260122270%_)
                        (let ((_%e122263122278%_
                               (gx#syntax-e _%e122260122270%_)))
                          (let ((_%hd122264122281%_ (##car _%e122263122278%_))
                                (_%tl122265122283%_ (##cdr _%e122263122278%_)))
                            (if (gx#stx-pair? _%tl122265122283%_)
                                (let ((_%e122266122286%_
                                       (gx#syntax-e _%tl122265122283%_)))
                                  (let ((_%hd122267122289%_
                                         (##car _%e122266122286%_))
                                        (_%tl122268122291%_
                                         (##cdr _%e122266122286%_)))
                                    (let* ((_%hd122294%_ _%hd122267122289%_)
                                           (_%body122296%_ _%tl122268122291%_))
                                      (if (and (gx#stx-list? _%hd122294%_)
                                               (gx#stx-list? _%body122296%_)
                                               (not (gx#stx-null?
                                                     _%body122296%_)))
                                          (gx#core-cons*
                                           _%form122257%_
                                           (gx#stx-map1
                                            _%generate122259%_
                                            _%hd122294%_)
                                           _%body122296%_)
                                          (_%E122262122274%_)))))
                                (_%E122262122274%_))))
                        (_%E122262122274%_)))))
            (_%E122261122298%_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_%stx122348%_)
        (let ((_%form122350%_ '%#let-values))
          (gx#macro-expand-let-values__% _%stx122348%_ _%form122350%_))))
    (define gx#macro-expand-let-values
      (lambda _g124737_
        (let ((_g124736_ (##length _g124737_)))
          (cond ((##fx= _g124736_ 1)
                 (apply gx#macro-expand-let-values__0 _g124737_))
                ((##fx= _g124736_ 2)
                 (apply gx#macro-expand-let-values__% _g124737_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g124737_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_%stx122253%_)
        (gx#macro-expand-let-values__% _%stx122253%_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_%stx122251%_)
        (gx#macro-expand-let-values__% _%stx122251%_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_%stx122142%_)
        (let* ((_%e122143122169%_ _%stx122142%_)
               (_%E122155122173%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122143122169%_)))
               (_%E122145122215%_
                (lambda ()
                  (if (gx#stx-pair? _%e122143122169%_)
                      (let ((_%e122156122177%_
                             (gx#syntax-e _%e122143122169%_)))
                        (let ((_%hd122157122180%_ (##car _%e122156122177%_))
                              (_%tl122158122182%_ (##cdr _%e122156122177%_)))
                          (if (gx#stx-pair? _%tl122158122182%_)
                              (let ((_%e122159122185%_
                                     (gx#syntax-e _%tl122158122182%_)))
                                (let ((_%hd122160122188%_
                                       (##car _%e122159122185%_))
                                      (_%tl122161122190%_
                                       (##cdr _%e122159122185%_)))
                                  (let ((_%test122193%_ _%hd122160122188%_))
                                    (if (gx#stx-pair? _%tl122161122190%_)
                                        (let ((_%e122162122195%_
                                               (gx#syntax-e
                                                _%tl122161122190%_)))
                                          (let ((_%hd122163122198%_
                                                 (##car _%e122162122195%_))
                                                (_%tl122164122200%_
                                                 (##cdr _%e122162122195%_)))
                                            (let ((_%K122203%_
                                                   _%hd122163122198%_))
                                              (if (gx#stx-pair?
                                                   _%tl122164122200%_)
                                                  (let ((_%e122165122205%_
                                                         (gx#syntax-e
                                                          _%tl122164122200%_)))
                                                    (let ((_%hd122166122208%_
                                                           (##car _%e122165122205%_))
                                                          (_%tl122167122210%_
                                                           (##cdr _%e122165122205%_)))
                                                      (let ((_%E122213%_
                                                             _%hd122166122208%_))
                                                        (if (gx#stx-null?
                                                             _%tl122167122210%_)
                                                            (gx#core-list
                                                             '%#if
                                                             _%test122193%_
                                                             _%K122203%_
                                                             _%E122213%_)
                                                            (_%E122155122173%_)))))
                                                  (_%E122155122173%_)))))
                                        (_%E122155122173%_)))))
                              (_%E122155122173%_))))
                      (_%E122155122173%_))))
               (_%E122144122247%_
                (lambda ()
                  (if (gx#stx-pair? _%e122143122169%_)
                      (let ((_%e122146122219%_
                             (gx#syntax-e _%e122143122169%_)))
                        (let ((_%hd122147122222%_ (##car _%e122146122219%_))
                              (_%tl122148122224%_ (##cdr _%e122146122219%_)))
                          (if (gx#stx-pair? _%tl122148122224%_)
                              (let ((_%e122149122227%_
                                     (gx#syntax-e _%tl122148122224%_)))
                                (let ((_%hd122150122230%_
                                       (##car _%e122149122227%_))
                                      (_%tl122151122232%_
                                       (##cdr _%e122149122227%_)))
                                  (let ((_%test122235%_ _%hd122150122230%_))
                                    (if (gx#stx-pair? _%tl122151122232%_)
                                        (let ((_%e122152122237%_
                                               (gx#syntax-e
                                                _%tl122151122232%_)))
                                          (let ((_%hd122153122240%_
                                                 (##car _%e122152122237%_))
                                                (_%tl122154122242%_
                                                 (##cdr _%e122152122237%_)))
                                            (let ((_%K122245%_
                                                   _%hd122153122240%_))
                                              (if (gx#stx-null?
                                                   _%tl122154122242%_)
                                                  (gx#core-list
                                                   '%#if
                                                   _%test122235%_
                                                   _%K122245%_
                                                   '#!void)
                                                  (_%E122145122215%_)))))
                                        (_%E122145122215%_)))))
                              (_%E122145122215%_))))
                      (_%E122145122215%_)))))
          (_%E122144122247%_))))
    (define gx#free-identifier=?
      (lambda (_%xid122127%_ _%yid122128%_)
        (let ((_%xe122130%_ (gx#resolve-identifier__0 _%xid122127%_))
              (_%ye122131%_ (gx#resolve-identifier__0 _%yid122128%_)))
          (if (and _%xe122130%_ _%ye122131%_)
              (let ((_%$e122134%_ (eq? _%xe122130%_ _%ye122131%_)))
                (if _%$e122134%_
                    _%$e122134%_
                    (if (##structure-instance-of? _%xe122130%_ 'gx#binding::t)
                        (if (##structure-instance-of?
                             _%ye122131%_
                             'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _%xe122130%_
                                  '1
                                  '#f
                                  '#f)
                                 (##unchecked-structure-ref
                                  _%ye122131%_
                                  '1
                                  '#f
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _%xe122130%_ _%ye122131%_)
                  '#f
                  (gx#stx-eq? _%xid122127%_ _%yid122128%_))))))
    (define gx#bound-identifier=?
      (lambda (_%xid122108%_ _%yid122109%_)
        (letrec ((_%context122111%_
                  (lambda (_%e122125%_)
                    (if (##structure-direct-instance-of?
                         _%e122125%_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref _%e122125%_ '3 '#f '#f)
                        (gx#current-expander-context))))
                 (_%marks122112%_
                  (lambda (_%e122120%_)
                    (if (symbol? _%e122120%_)
                        '()
                        (if (##structure-direct-instance-of?
                             _%e122120%_
                             'gx#identifier-wrap::t)
                            (##unchecked-structure-ref _%e122120%_ '3 '#f '#f)
                            (##unchecked-structure-ref
                             _%e122120%_
                             '4
                             '#f
                             '#f)))))
                 (_%unwrap122113%_
                  (lambda (_%e122118%_)
                    (if (symbol? _%e122118%_)
                        _%e122118%_
                        (gx#syntax-local-unwrap _%e122118%_)))))
          (let ((_%x122115%_ (_%unwrap122113%_ _%xid122108%_))
                (_%y122116%_ (_%unwrap122113%_ _%yid122109%_)))
            (if (gx#stx-eq? _%x122115%_ _%y122116%_)
                (if (eq? (_%context122111%_ _%x122115%_)
                         (_%context122111%_ _%y122116%_))
                    (equal? (_%marks122112%_ _%x122115%_)
                            (_%marks122112%_ _%y122116%_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_%stx122106%_)
        (if (gx#identifier? _%stx122106%_)
            (gx#core-identifier=? _%stx122106%_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_%stx122104%_)
        (if (gx#identifier? _%stx122104%_)
            (gx#core-identifier=? _%stx122104%_ '...)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_%stx122047%_ _%where122048%_)
        (let _%lp122050%_ ((_%rest122052%_ (gx#syntax->list _%stx122047%_)))
          (let* ((_%rest122053122061%_ _%rest122052%_)
                 (_%else122055122069%_ (lambda () '#t))
                 (_%K122057122082%_
                  (lambda (_%rest122072%_ _%hd122073%_)
                    (if (gx#identifier? _%hd122073%_)
                        (if (__find (lambda (_%g122075122077%_)
                                      (gx#bound-identifier=?
                                       _%g122075122077%_
                                       _%hd122073%_))
                                    _%rest122072%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _%where122048%_
                             _%hd122073%_)
                            (_%lp122050%_ _%rest122072%_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _%where122048%_
                         _%hd122073%_)))))
            (if (##pair? _%rest122053122061%_)
                (let ((_%hd122058122085%_ (##car _%rest122053122061%_))
                      (_%tl122059122087%_ (##cdr _%rest122053122061%_)))
                  (let* ((_%hd122090%_ _%hd122058122085%_)
                         (_%rest122092%_ _%tl122059122087%_))
                    (_%K122057122082%_ _%rest122092%_ _%hd122090%_)))
                (_%else122055122069%_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_%stx122097%_)
        (let ((_%where122099%_ _%stx122097%_))
          (gx#check-duplicate-identifiers__% _%stx122097%_ _%where122099%_))))
    (define gx#check-duplicate-identifiers
      (lambda _g124739_
        (let ((_g124738_ (##length _g124739_)))
          (cond ((##fx= _g124738_ 1)
                 (apply gx#check-duplicate-identifiers__0 _g124739_))
                ((##fx= _g124738_ 2)
                 (apply gx#check-duplicate-identifiers__% _g124739_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g124739_))))))
    (define gx#core-bind-values?
      (lambda (_%stx122039%_)
        (gx#stx-andmap
         (lambda (_%x122041%_)
           (let ((_%$e122043%_ (gx#identifier? _%x122041%_)))
             (if _%$e122043%_ _%$e122043%_ (gx#stx-false? _%x122041%_))))
         _%stx122039%_)))
    (define gx#core-bind-values!__%
      (lambda (_%stx122003%_ _%rebind?122004%_ _%phi122005%_ _%ctx122006%_)
        (gx#stx-for-each1
         (lambda (_%id122008%_)
           (if (gx#identifier? _%id122008%_)
               (gx#core-bind-runtime!__%
                _%id122008%_
                _%rebind?122004%_
                _%phi122005%_
                _%ctx122006%_)
               '#!void))
         _%stx122003%_)))
    (define gx#core-bind-values!__0
      (lambda (_%stx122013%_)
        (let* ((_%rebind?122015%_ '#f)
               (_%phi122017%_ (gx#current-expander-phi))
               (_%ctx122019%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx122013%_
           _%rebind?122015%_
           _%phi122017%_
           _%ctx122019%_))))
    (define gx#core-bind-values!__1
      (lambda (_%stx122021%_ _%rebind?122022%_)
        (let* ((_%phi122024%_ (gx#current-expander-phi))
               (_%ctx122026%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx122021%_
           _%rebind?122022%_
           _%phi122024%_
           _%ctx122026%_))))
    (define gx#core-bind-values!__2
      (lambda (_%stx122028%_ _%rebind?122029%_ _%phi122030%_)
        (let ((_%ctx122032%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx122028%_
           _%rebind?122029%_
           _%phi122030%_
           _%ctx122032%_))))
    (define gx#core-bind-values!
      (lambda _g124741_
        (let ((_g124740_ (##length _g124741_)))
          (cond ((##fx= _g124740_ 1) (apply gx#core-bind-values!__0 _g124741_))
                ((##fx= _g124740_ 2) (apply gx#core-bind-values!__1 _g124741_))
                ((##fx= _g124740_ 3) (apply gx#core-bind-values!__2 _g124741_))
                ((##fx= _g124740_ 4) (apply gx#core-bind-values!__% _g124741_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g124741_))))))
    (define gx#core-quote-bind-values
      (lambda (_%stx121998%_)
        (gx#stx-map1
         (lambda (_%x122000%_)
           (if (gx#identifier? _%x122000%_)
               (gx#core-quote-syntax__0 _%x122000%_)
               '#f))
         _%stx121998%_)))
    (define gx#core-runtime-ref?
      (lambda (_%stx121991%_)
        (if (gx#identifier? _%stx121991%_)
            (let* ((_%bind121993%_ (gx#resolve-identifier__0 _%stx121991%_))
                   (_%$e121995%_ (not _%bind121993%_)))
              (if _%$e121995%_
                  _%$e121995%_
                  (##structure-instance-of?
                   _%bind121993%_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_%id121980%_ _%form121981%_)
        (let ((_%bind121983%_ (gx#resolve-identifier__0 _%id121980%_)))
          (if (##structure-instance-of? _%bind121983%_ 'gx#runtime-binding::t)
              (gx#core-quote-syntax__0 _%id121980%_)
              (if (not _%bind121983%_)
                  (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                          (gx#core-extern-symbol? (gx#stx-e _%id121980%_)))
                      (gx#core-quote-syntax__0 _%id121980%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Reference to unbound identifier"
                       _%form121981%_
                       _%id121980%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; not a runtime binding"
                   _%form121981%_
                   _%id121980%_))))))
    (define gx#core-bind-runtime!__%
      (lambda (_%id121935%_ _%rebind?121936%_ _%phi121937%_ _%ctx121938%_)
        (let* ((_%key121940%_ (gx#core-identifier-key _%id121935%_))
               (_%eid121942%_
                (gx#make-binding-id__%
                 _%key121940%_
                 '#f
                 _%phi121937%_
                 _%ctx121938%_))
               (_%bind121948%_
                (if (##structure-instance-of?
                     _%ctx121938%_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _%eid121942%_
                     _%key121940%_
                     _%phi121937%_
                     _%ctx121938%_)
                    (if (##structure-instance-of?
                         _%ctx121938%_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _%eid121942%_
                         _%key121940%_
                         _%phi121937%_)
                        (if (##structure-instance-of?
                             _%ctx121938%_
                             'gx#local-context::t)
                            (##structure
                             gx#local-binding::t
                             _%eid121942%_
                             _%key121940%_
                             _%phi121937%_)
                            (##structure
                             gx#runtime-binding::t
                             _%eid121942%_
                             _%key121940%_
                             _%phi121937%_))))))
          (gx#bind-identifier!__%
           _%id121935%_
           _%bind121948%_
           _%rebind?121936%_
           _%phi121937%_
           _%ctx121938%_))))
    (define gx#core-bind-runtime!__0
      (lambda (_%id121954%_)
        (let* ((_%rebind?121956%_ '#f)
               (_%phi121958%_ (gx#current-expander-phi))
               (_%ctx121960%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id121954%_
           _%rebind?121956%_
           _%phi121958%_
           _%ctx121960%_))))
    (define gx#core-bind-runtime!__1
      (lambda (_%id121962%_ _%rebind?121963%_)
        (let* ((_%phi121965%_ (gx#current-expander-phi))
               (_%ctx121967%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id121962%_
           _%rebind?121963%_
           _%phi121965%_
           _%ctx121967%_))))
    (define gx#core-bind-runtime!__2
      (lambda (_%id121969%_ _%rebind?121970%_ _%phi121971%_)
        (let ((_%ctx121973%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id121969%_
           _%rebind?121970%_
           _%phi121971%_
           _%ctx121973%_))))
    (define gx#core-bind-runtime!
      (lambda _g124743_
        (let ((_g124742_ (##length _g124743_)))
          (cond ((##fx= _g124742_ 1)
                 (apply gx#core-bind-runtime!__0 _g124743_))
                ((##fx= _g124742_ 2)
                 (apply gx#core-bind-runtime!__1 _g124743_))
                ((##fx= _g124742_ 3)
                 (apply gx#core-bind-runtime!__2 _g124743_))
                ((##fx= _g124742_ 4)
                 (apply gx#core-bind-runtime!__% _g124743_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g124743_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_%id121887%_
               _%eid121888%_
               _%rebind?121889%_
               _%phi121890%_
               _%ctx121891%_)
        (let* ((_%key121893%_ (gx#core-identifier-key _%id121887%_))
               (_%bind121898%_
                (if (##structure-instance-of?
                     _%ctx121891%_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _%eid121888%_
                     _%key121893%_
                     _%phi121890%_
                     _%ctx121891%_)
                    (if (##structure-instance-of?
                         _%ctx121891%_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _%eid121888%_
                         _%key121893%_
                         _%phi121890%_)
                        (##structure
                         gx#runtime-binding::t
                         _%eid121888%_
                         _%key121893%_
                         _%phi121890%_)))))
          (gx#bind-identifier!__%
           _%id121887%_
           _%bind121898%_
           _%rebind?121889%_
           _%phi121890%_
           _%ctx121891%_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_%id121904%_ _%eid121905%_)
        (let* ((_%rebind?121907%_ '#f)
               (_%phi121909%_ (gx#current-expander-phi))
               (_%ctx121911%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id121904%_
           _%eid121905%_
           _%rebind?121907%_
           _%phi121909%_
           _%ctx121911%_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_%id121913%_ _%eid121914%_ _%rebind?121915%_)
        (let* ((_%phi121917%_ (gx#current-expander-phi))
               (_%ctx121919%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id121913%_
           _%eid121914%_
           _%rebind?121915%_
           _%phi121917%_
           _%ctx121919%_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_%id121921%_ _%eid121922%_ _%rebind?121923%_ _%phi121924%_)
        (let ((_%ctx121926%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id121921%_
           _%eid121922%_
           _%rebind?121923%_
           _%phi121924%_
           _%ctx121926%_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g124745_
        (let ((_g124744_ (##length _g124745_)))
          (cond ((##fx= _g124744_ 2)
                 (apply gx#core-bind-runtime-reference!__0 _g124745_))
                ((##fx= _g124744_ 3)
                 (apply gx#core-bind-runtime-reference!__1 _g124745_))
                ((##fx= _g124744_ 4)
                 (apply gx#core-bind-runtime-reference!__2 _g124745_))
                ((##fx= _g124744_ 5)
                 (apply gx#core-bind-runtime-reference!__% _g124745_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g124745_))))))
    (define gx#core-bind-extern!__%
      (lambda (_%id121847%_
               _%eid121848%_
               _%rebind?121849%_
               _%phi121850%_
               _%ctx121851%_)
        (gx#bind-identifier!__%
         _%id121847%_
         (##structure
          gx#extern-binding::t
          _%eid121848%_
          (gx#core-identifier-key _%id121847%_)
          _%phi121850%_)
         _%rebind?121849%_
         _%phi121850%_
         _%ctx121851%_)))
    (define gx#core-bind-extern!__0
      (lambda (_%id121856%_ _%eid121857%_)
        (let* ((_%rebind?121859%_ '#f)
               (_%phi121861%_ (gx#current-expander-phi))
               (_%ctx121863%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id121856%_
           _%eid121857%_
           _%rebind?121859%_
           _%phi121861%_
           _%ctx121863%_))))
    (define gx#core-bind-extern!__1
      (lambda (_%id121865%_ _%eid121866%_ _%rebind?121867%_)
        (let* ((_%phi121869%_ (gx#current-expander-phi))
               (_%ctx121871%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id121865%_
           _%eid121866%_
           _%rebind?121867%_
           _%phi121869%_
           _%ctx121871%_))))
    (define gx#core-bind-extern!__2
      (lambda (_%id121873%_ _%eid121874%_ _%rebind?121875%_ _%phi121876%_)
        (let ((_%ctx121878%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id121873%_
           _%eid121874%_
           _%rebind?121875%_
           _%phi121876%_
           _%ctx121878%_))))
    (define gx#core-bind-extern!
      (lambda _g124747_
        (let ((_g124746_ (##length _g124747_)))
          (cond ((##fx= _g124746_ 2) (apply gx#core-bind-extern!__0 _g124747_))
                ((##fx= _g124746_ 3) (apply gx#core-bind-extern!__1 _g124747_))
                ((##fx= _g124746_ 4) (apply gx#core-bind-extern!__2 _g124747_))
                ((##fx= _g124746_ 5) (apply gx#core-bind-extern!__% _g124747_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g124747_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_%id121801%_
               _%e121802%_
               _%rebind?121803%_
               _%phi121804%_
               _%ctx121805%_)
        (gx#bind-identifier!__%
         _%id121801%_
         (let ((_%key121810%_ (gx#core-identifier-key _%id121801%_))
               (_%e121811%_
                (if (or (##structure-instance-of? _%e121802%_ 'gx#expander::t)
                        (##structure-instance-of?
                         _%e121802%_
                         'gx#expander-context::t))
                    _%e121802%_
                    (##structure
                     gx#user-expander::t
                     _%e121802%_
                     _%ctx121805%_
                     _%phi121804%_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__%
             _%key121810%_
             '#t
             _%phi121804%_
             _%ctx121805%_)
            _%key121810%_
            _%phi121804%_
            _%e121811%_))
         _%rebind?121803%_
         _%phi121804%_
         _%ctx121805%_)))
    (define gx#core-bind-syntax!__0
      (lambda (_%id121816%_ _%e121817%_)
        (let* ((_%rebind?121819%_ '#f)
               (_%phi121821%_ (gx#current-expander-phi))
               (_%ctx121823%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id121816%_
           _%e121817%_
           _%rebind?121819%_
           _%phi121821%_
           _%ctx121823%_))))
    (define gx#core-bind-syntax!__1
      (lambda (_%id121825%_ _%e121826%_ _%rebind?121827%_)
        (let* ((_%phi121829%_ (gx#current-expander-phi))
               (_%ctx121831%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id121825%_
           _%e121826%_
           _%rebind?121827%_
           _%phi121829%_
           _%ctx121831%_))))
    (define gx#core-bind-syntax!__2
      (lambda (_%id121833%_ _%e121834%_ _%rebind?121835%_ _%phi121836%_)
        (let ((_%ctx121838%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id121833%_
           _%e121834%_
           _%rebind?121835%_
           _%phi121836%_
           _%ctx121838%_))))
    (define gx#core-bind-syntax!
      (lambda _g124749_
        (let ((_g124748_ (##length _g124749_)))
          (cond ((##fx= _g124748_ 2) (apply gx#core-bind-syntax!__0 _g124749_))
                ((##fx= _g124748_ 3) (apply gx#core-bind-syntax!__1 _g124749_))
                ((##fx= _g124748_ 4) (apply gx#core-bind-syntax!__2 _g124749_))
                ((##fx= _g124748_ 5) (apply gx#core-bind-syntax!__% _g124749_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g124749_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_%id121784%_ _%e121785%_ _%rebind?121786%_)
        (gx#core-bind-syntax!__%
         _%id121784%_
         _%e121785%_
         _%rebind?121786%_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_%id121791%_ _%e121792%_)
        (let ((_%rebind?121794%_ '#f))
          (gx#core-bind-root-syntax!__%
           _%id121791%_
           _%e121792%_
           _%rebind?121794%_))))
    (define gx#core-bind-root-syntax!
      (lambda _g124751_
        (let ((_g124750_ (##length _g124751_)))
          (cond ((##fx= _g124750_ 2)
                 (apply gx#core-bind-root-syntax!__0 _g124751_))
                ((##fx= _g124750_ 3)
                 (apply gx#core-bind-root-syntax!__% _g124751_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g124751_))))))
    (define gx#core-bind-alias!__%
      (lambda (_%id121742%_
               _%alias-id121743%_
               _%rebind?121744%_
               _%phi121745%_
               _%ctx121746%_)
        (gx#bind-identifier!__%
         _%id121742%_
         (let ((_%key121748%_ (gx#core-identifier-key _%id121742%_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__%
             _%key121748%_
             '#t
             _%phi121745%_
             _%ctx121746%_)
            _%key121748%_
            _%phi121745%_
            _%alias-id121743%_))
         _%rebind?121744%_
         _%phi121745%_
         _%ctx121746%_)))
    (define gx#core-bind-alias!__0
      (lambda (_%id121753%_ _%alias-id121754%_)
        (let* ((_%rebind?121756%_ '#f)
               (_%phi121758%_ (gx#current-expander-phi))
               (_%ctx121760%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id121753%_
           _%alias-id121754%_
           _%rebind?121756%_
           _%phi121758%_
           _%ctx121760%_))))
    (define gx#core-bind-alias!__1
      (lambda (_%id121762%_ _%alias-id121763%_ _%rebind?121764%_)
        (let* ((_%phi121766%_ (gx#current-expander-phi))
               (_%ctx121768%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id121762%_
           _%alias-id121763%_
           _%rebind?121764%_
           _%phi121766%_
           _%ctx121768%_))))
    (define gx#core-bind-alias!__2
      (lambda (_%id121770%_ _%alias-id121771%_ _%rebind?121772%_ _%phi121773%_)
        (let ((_%ctx121775%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id121770%_
           _%alias-id121771%_
           _%rebind?121772%_
           _%phi121773%_
           _%ctx121775%_))))
    (define gx#core-bind-alias!
      (lambda _g124753_
        (let ((_g124752_ (##length _g124753_)))
          (cond ((##fx= _g124752_ 2) (apply gx#core-bind-alias!__0 _g124753_))
                ((##fx= _g124752_ 3) (apply gx#core-bind-alias!__1 _g124753_))
                ((##fx= _g124752_ 4) (apply gx#core-bind-alias!__2 _g124753_))
                ((##fx= _g124752_ 5) (apply gx#core-bind-alias!__% _g124753_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g124753_))))))
    (define gx#make-binding-id__%
      (lambda (_%key121692%_ _%syntax?121693%_ _%phi121694%_ _%ctx121695%_)
        (if (uninterned-symbol? _%key121692%_)
            (##gensym 'L)
            (if (pair? _%key121692%_)
                (gensym (##car _%key121692%_))
                (if (##structure-instance-of? _%ctx121695%_ 'gx#top-context::t)
                    (let ((_%ns121700%_
                           (gx#core-context-namespace__% _%ctx121695%_)))
                      (if (and (fxzero? _%phi121694%_) (not _%syntax?121693%_))
                          (if _%ns121700%_
                              (make-symbol__1 _%ns121700%_ '"#" _%key121692%_)
                              _%key121692%_)
                          (if _%syntax?121693%_
                              (make-symbol__1
                               (let ((_%$e121704%_ _%ns121700%_))
                                 (if _%$e121704%_ _%$e121704%_ '""))
                               '"[:"
                               (number->string _%phi121694%_)
                               '":]#"
                               _%key121692%_)
                              (make-symbol__1
                               (let ((_%$e121708%_ _%ns121700%_))
                                 (if _%$e121708%_ _%$e121708%_ '""))
                               '"["
                               (number->string _%phi121694%_)
                               '"]#"
                               _%key121692%_))))
                    (gensym _%key121692%_))))))
    (define gx#make-binding-id__0
      (lambda (_%key121715%_)
        (let* ((_%syntax?121717%_ '#f)
               (_%phi121719%_ (gx#current-expander-phi))
               (_%ctx121721%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key121715%_
           _%syntax?121717%_
           _%phi121719%_
           _%ctx121721%_))))
    (define gx#make-binding-id__1
      (lambda (_%key121723%_ _%syntax?121724%_)
        (let* ((_%phi121726%_ (gx#current-expander-phi))
               (_%ctx121728%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key121723%_
           _%syntax?121724%_
           _%phi121726%_
           _%ctx121728%_))))
    (define gx#make-binding-id__2
      (lambda (_%key121730%_ _%syntax?121731%_ _%phi121732%_)
        (let ((_%ctx121734%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key121730%_
           _%syntax?121731%_
           _%phi121732%_
           _%ctx121734%_))))
    (define gx#make-binding-id
      (lambda _g124755_
        (let ((_g124754_ (##length _g124755_)))
          (cond ((##fx= _g124754_ 1) (apply gx#make-binding-id__0 _g124755_))
                ((##fx= _g124754_ 2) (apply gx#make-binding-id__1 _g124755_))
                ((##fx= _g124754_ 3) (apply gx#make-binding-id__2 _g124755_))
                ((##fx= _g124754_ 4) (apply gx#make-binding-id__% _g124755_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g124755_))))))))
