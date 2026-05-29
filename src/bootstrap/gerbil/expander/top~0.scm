(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1779967243)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_%stx184060%_)
        (letrec ((_%expand-special184062%_
                  (lambda (_%hd184064%_ _%K184065%_ _%rest184066%_ _%r184067%_)
                    (_%K184065%_
                     _%rest184066%_
                     (cons (gx#core-expand-top _%hd184064%_) _%r184067%_)))))
          (gx#core-expand-block__0 _%stx184060%_ _%expand-special184062%_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_%stx183714%_)
        (letrec ((_%expand-special183716%_
                  (lambda (_%hd183836%_ _%K183837%_ _%rest183838%_ _%r183839%_)
                    (let* ((_%K*183843%_
                            (lambda (_%e183841%_)
                              (_%K183837%_
                               _%rest183838%_
                               (cons _%e183841%_ _%r183839%_))))
                           (_%e183844183896%_ _%hd183836%_)
                           (_%E183882183900%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e183844183896%_)))
                           (_%E183878183942%_
                            (lambda ()
                              (if (gx#stx-pair? _%e183844183896%_)
                                  (let ((_%e183883183904%_
                                         (gx#syntax-e _%e183844183896%_)))
                                    (let ((_%hd183884183907%_
                                           (##car _%e183883183904%_))
                                          (_%tl183885183909%_
                                           (##cdr _%e183883183904%_)))
                                      (if (and (gx#identifier?
                                                _%hd183884183907%_)
                                               (gx#core-identifier=?
                                                _%hd183884183907%_
                                                '%#bind-runtime-properties!))
                                          (if (gx#stx-pair? _%tl183885183909%_)
                                              (let ((_%e183886183912%_
                                                     (gx#syntax-e
                                                      _%tl183885183909%_)))
                                                (let ((_%hd183887183915%_
                                                       (##car _%e183886183912%_))
                                                      (_%tl183888183917%_
                                                       (##cdr _%e183886183912%_)))
                                                  (if (gx#stx-pair?
                                                       _%hd183887183915%_)
                                                      (let ((_%e183892183920%_
                                                             (gx#syntax-e
                                                              _%hd183887183915%_)))
                                                        (let ((_%hd183893183923%_
                                                               (##car _%e183892183920%_))
                                                              (_%tl183894183925%_
                                                               (##cdr _%e183892183920%_)))
                                                          (let ((_%id183928%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd183893183923%_))
                    (if (gx#stx-null? _%tl183894183925%_)
                        (if (gx#stx-pair? _%tl183888183917%_)
                            (let ((_%e183889183930%_
                                   (gx#syntax-e _%tl183888183917%_)))
                              (let ((_%hd183890183933%_
                                     (##car _%e183889183930%_))
                                    (_%tl183891183935%_
                                     (##cdr _%e183889183930%_)))
                                (let ((_%props183938%_ _%hd183890183933%_))
                                  (if (gx#stx-null? _%tl183891183935%_)
                                      (let ((_%bind183940%_
                                             (gx#resolve-identifier__0
                                              _%id183928%_)))
                                        (gx#core-bind-runtime-properties!
                                         _%bind183940%_
                                         _%props183938%_)
                                        (_%K183837%_
                                         _%rest183838%_
                                         _%r183839%_))
                                      (_%E183882183900%_)))))
                            (_%E183882183900%_))
                        (_%E183882183900%_)))))
              (_%E183882183900%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E183882183900%_))
                                          (_%E183882183900%_))))
                                  (_%E183882183900%_))))
                           (_%E183874183954%_
                            (lambda ()
                              (if (gx#stx-pair? _%e183844183896%_)
                                  (let ((_%e183879183946%_
                                         (gx#syntax-e _%e183844183896%_)))
                                    (let ((_%hd183880183949%_
                                           (##car _%e183879183946%_))
                                          (_%tl183881183951%_
                                           (##cdr _%e183879183946%_)))
                                      (if (and (gx#identifier?
                                                _%hd183880183949%_)
                                               (gx#core-identifier=?
                                                _%hd183880183949%_
                                                '%#define-runtime))
                                          (_%K*183843%_
                                           (gx#core-expand-define-runtime%
                                            _%hd183836%_))
                                          (_%E183878183942%_))))
                                  (_%E183878183942%_))))
                           (_%E183870183966%_
                            (lambda ()
                              (if (gx#stx-pair? _%e183844183896%_)
                                  (let ((_%e183875183958%_
                                         (gx#syntax-e _%e183844183896%_)))
                                    (let ((_%hd183876183961%_
                                           (##car _%e183875183958%_))
                                          (_%tl183877183963%_
                                           (##cdr _%e183875183958%_)))
                                      (if (and (gx#identifier?
                                                _%hd183876183961%_)
                                               (gx#core-identifier=?
                                                _%hd183876183961%_
                                                '%#define-alias))
                                          (_%K*183843%_
                                           (gx#core-expand-define-alias%
                                            _%hd183836%_))
                                          (_%E183874183954%_))))
                                  (_%E183874183954%_))))
                           (_%E183860183978%_
                            (lambda ()
                              (if (gx#stx-pair? _%e183844183896%_)
                                  (let ((_%e183871183970%_
                                         (gx#syntax-e _%e183844183896%_)))
                                    (let ((_%hd183872183973%_
                                           (##car _%e183871183970%_))
                                          (_%tl183873183975%_
                                           (##cdr _%e183871183970%_)))
                                      (if (and (gx#identifier?
                                                _%hd183872183973%_)
                                               (gx#core-identifier=?
                                                _%hd183872183973%_
                                                '%#define-syntax))
                                          (_%K*183843%_
                                           (gx#core-expand-define-syntax%
                                            _%hd183836%_))
                                          (_%E183870183966%_))))
                                  (_%E183870183966%_))))
                           (_%E183850184010%_
                            (lambda ()
                              (if (gx#stx-pair? _%e183844183896%_)
                                  (let ((_%e183861183982%_
                                         (gx#syntax-e _%e183844183896%_)))
                                    (let ((_%hd183862183985%_
                                           (##car _%e183861183982%_))
                                          (_%tl183863183987%_
                                           (##cdr _%e183861183982%_)))
                                      (if (and (gx#identifier?
                                                _%hd183862183985%_)
                                               (gx#core-identifier=?
                                                _%hd183862183985%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl183863183987%_)
                                              (let ((_%e183864183990%_
                                                     (gx#syntax-e
                                                      _%tl183863183987%_)))
                                                (let ((_%hd183865183993%_
                                                       (##car _%e183864183990%_))
                                                      (_%tl183866183995%_
                                                       (##cdr _%e183864183990%_)))
                                                  (let ((_%hd-bind183998%_
                                                         _%hd183865183993%_))
                                                    (if (gx#stx-pair?
                                                         _%tl183866183995%_)
                                                        (let ((_%e183867184000%_
                                                               (gx#syntax-e
                                                                _%tl183866183995%_)))
                                                          (let ((_%hd183868184003%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e183867184000%_))
                        (_%tl183869184005%_ (##cdr _%e183867184000%_)))
                    (let ((_%expr184008%_ _%hd183868184003%_))
                      (if (gx#stx-null? _%tl183869184005%_)
                          (if (gx#core-bind-values? _%hd-bind183998%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind183998%_)
                                (_%K*183843%_ _%hd183836%_))
                              (_%E183860183978%_))
                          (_%E183860183978%_)))))
                (_%E183860183978%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E183860183978%_))
                                          (_%E183860183978%_))))
                                  (_%E183860183978%_))))
                           (_%E183846184044%_
                            (lambda ()
                              (if (gx#stx-pair? _%e183844183896%_)
                                  (let ((_%e183851184014%_
                                         (gx#syntax-e _%e183844183896%_)))
                                    (let ((_%hd183852184017%_
                                           (##car _%e183851184014%_))
                                          (_%tl183853184019%_
                                           (##cdr _%e183851184014%_)))
                                      (if (and (gx#identifier?
                                                _%hd183852184017%_)
                                               (gx#core-identifier=?
                                                _%hd183852184017%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl183853184019%_)
                                              (let ((_%e183854184022%_
                                                     (gx#syntax-e
                                                      _%tl183853184019%_)))
                                                (let ((_%hd183855184025%_
                                                       (##car _%e183854184022%_))
                                                      (_%tl183856184027%_
                                                       (##cdr _%e183854184022%_)))
                                                  (let ((_%hd-bind184030%_
                                                         _%hd183855184025%_))
                                                    (if (gx#stx-pair?
                                                         _%tl183856184027%_)
                                                        (let ((_%e183857184032%_
                                                               (gx#syntax-e
                                                                _%tl183856184027%_)))
                                                          (let ((_%hd183858184035%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e183857184032%_))
                        (_%tl183859184037%_ (##cdr _%e183857184032%_)))
                    (let* ((_%expr184040%_ _%hd183858184035%_)
                           (_%props184042%_ _%tl183859184037%_))
                      (if (and (gx#core-bind-values? _%hd-bind184030%_)
                               (gx#stx-list? _%props184042%_)
                               (not (gx#stx-null? _%props184042%_)))
                          (begin
                            (gx#core-bind-values!__0 _%hd-bind184030%_)
                            (_%K183837%_
                             (cons (gx#core-cons
                                    '%#bind-runtime-properties!
                                    (cons _%hd-bind184030%_
                                          (cons _%props184042%_ '())))
                                   _%rest183838%_)
                             (cons (gx#core-cons
                                    '%#define-values
                                    (cons _%hd-bind184030%_
                                          (cons _%expr184040%_ '())))
                                   _%r183839%_)))
                          (_%E183850184010%_)))))
                (_%E183850184010%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E183850184010%_))
                                          (_%E183850184010%_))))
                                  (_%E183850184010%_))))
                           (_%E183845184056%_
                            (lambda ()
                              (if (gx#stx-pair? _%e183844183896%_)
                                  (let ((_%e183847184048%_
                                         (gx#syntax-e _%e183844183896%_)))
                                    (let ((_%hd183848184051%_
                                           (##car _%e183847184048%_))
                                          (_%tl183849184053%_
                                           (##cdr _%e183847184048%_)))
                                      (if (and (gx#identifier?
                                                _%hd183848184051%_)
                                               (gx#core-identifier=?
                                                _%hd183848184051%_
                                                '%#begin-syntax))
                                          (_%K*183843%_
                                           (gx#core-expand-begin-syntax%
                                            _%hd183836%_))
                                          (_%E183846184044%_))))
                                  (_%E183846184044%_)))))
                      (_%E183845184056%_))))
                 (_%eval-body183717%_
                  (lambda (_%rbody183725%_)
                    (let _%lp183727%_ ((_%rest183729%_ _%rbody183725%_)
                                       (_%body183730%_ '())
                                       (_%ebody183731%_ '()))
                      (let* ((_%rest183732183740%_ _%rest183729%_)
                             (_%else183734183748%_
                              (lambda ()
                                (values _%body183730%_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons
                                           '%#begin
                                           _%ebody183731%_)
                                          (gx#stx-source _%stx183714%_))))))
                             (_%K183736183824%_
                              (lambda (_%rest183751%_ _%hd183752%_)
                                (let* ((_%e183753183770%_ _%hd183752%_)
                                       (_%E183765183774%_
                                        (lambda ()
                                          (_%lp183727%_
                                           _%rest183751%_
                                           (cons _%hd183752%_ _%body183730%_)
                                           (cons _%hd183752%_
                                                 _%ebody183731%_))))
                                       (_%E183755183786%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e183753183770%_)
                                              (let ((_%e183766183778%_
                                                     (gx#syntax-e
                                                      _%e183753183770%_)))
                                                (let ((_%hd183767183781%_
                                                       (##car _%e183766183778%_))
                                                      (_%tl183768183783%_
                                                       (##cdr _%e183766183778%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd183767183781%_)
                                                           (gx#core-identifier=?
                                                            _%hd183767183781%_
                                                            '%#begin-syntax))
                                                      (_%lp183727%_
                                                       _%rest183751%_
                                                       (cons _%hd183752%_
                                                             _%body183730%_)
                                                       _%ebody183731%_)
                                                      (_%E183765183774%_))))
                                              (_%E183765183774%_))))
                                       (_%E183754183820%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e183753183770%_)
                                              (let ((_%e183756183790%_
                                                     (gx#syntax-e
                                                      _%e183753183770%_)))
                                                (let ((_%hd183757183793%_
                                                       (##car _%e183756183790%_))
                                                      (_%tl183758183795%_
                                                       (##cdr _%e183756183790%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd183757183793%_)
                                                           (gx#core-identifier=?
                                                            _%hd183757183793%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl183758183795%_)
                                                          (let ((_%e183759183798%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl183758183795%_)))
                    (let ((_%hd183760183801%_ (##car _%e183759183798%_))
                          (_%tl183761183803%_ (##cdr _%e183759183798%_)))
                      (let ((_%hd-bind183806%_ _%hd183760183801%_))
                        (if (gx#stx-pair? _%tl183761183803%_)
                            (let ((_%e183762183808%_
                                   (gx#syntax-e _%tl183761183803%_)))
                              (let ((_%hd183763183811%_
                                     (##car _%e183762183808%_))
                                    (_%tl183764183813%_
                                     (##cdr _%e183762183808%_)))
                                (let ((_%expr183816%_ _%hd183763183811%_))
                                  (if (gx#stx-null? _%tl183764183813%_)
                                      (let ((_%ehd183818%_
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#define-values)
                                                    (cons (gx#core-quote-bind-values
                                                           _%hd-bind183806%_)
                                                          (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%expr183816%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _%hd183752%_))))
                                        (_%lp183727%_
                                         _%rest183751%_
                                         (cons _%ehd183818%_ _%body183730%_)
                                         (cons _%ehd183818%_ _%ebody183731%_)))
                                      (_%E183755183786%_)))))
                            (_%E183755183786%_)))))
                  (_%E183755183786%_))
              (_%E183755183786%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E183755183786%_)))))
                                  (_%E183754183820%_)))))
                        (if (pair? _%rest183732183740%_)
                            (let ((_%hd183737183827%_
                                   (##car _%rest183732183740%_))
                                  (_%tl183738183829%_
                                   (##cdr _%rest183732183740%_)))
                              (let* ((_%hd183832%_ _%hd183737183827%_)
                                     (_%rest183834%_ _%tl183738183829%_))
                                (_%K183736183824%_
                                 _%rest183834%_
                                 _%hd183832%_)))
                            (_%else183734183748%_)))))))
          (call-with-parameters__1
           (lambda ()
             (let* ((_%rbody183720%_
                     (gx#core-expand-block__1
                      _%stx183714%_
                      _%expand-special183716%_
                      '#f))
                    (_g184093_ (_%eval-body183717%_ _%rbody183720%_)))
               (begin
                 (let ((_g184094_
                        (if (##values? _g184093_)
                            (##values-length _g184093_)
                            1)))
                   (if (not (##fx= _g184094_ 2))
                       (error "Context expects 2 values" _g184094_)))
                 (let ((_%expanded-body183722%_ (##values-ref _g184093_ 0))
                       (_%value183723%_ (##values-ref _g184093_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _%expanded-body183722%_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _%value183723%_ '())))
                    (gx#stx-source _%stx183714%_))))))
           gx#current-expander-phi
           (##fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_%stx183684%_)
        (let* ((_%e183685183692%_ _%stx183684%_)
               (_%E183687183696%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e183685183692%_)))
               (_%E183686183710%_
                (lambda ()
                  (if (gx#stx-pair? _%e183685183692%_)
                      (let ((_%e183688183700%_
                             (gx#syntax-e _%e183685183692%_)))
                        (let ((_%hd183689183703%_ (##car _%e183688183700%_))
                              (_%tl183690183705%_ (##cdr _%e183688183700%_)))
                          (let ((_%body183708%_ _%tl183690183705%_))
                            (if (gx#stx-list? _%body183708%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _%body183708%_)
                                 (gx#stx-source _%stx183684%_))
                                (_%E183687183696%_)))))
                      (_%E183687183696%_)))))
          (_%E183686183710%_))))
    (define gx#core-expand-begin-module%
      (lambda (_%stx183682%_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _%stx183682%_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_%stx183628%_)
        (let* ((_%e183629183642%_ _%stx183628%_)
               (_%E183631183646%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e183629183642%_)))
               (_%E183630183678%_
                (lambda ()
                  (if (gx#stx-pair? _%e183629183642%_)
                      (let ((_%e183632183650%_
                             (gx#syntax-e _%e183629183642%_)))
                        (let ((_%hd183633183653%_ (##car _%e183632183650%_))
                              (_%tl183634183655%_ (##cdr _%e183632183650%_)))
                          (if (gx#stx-pair? _%tl183634183655%_)
                              (let ((_%e183635183658%_
                                     (gx#syntax-e _%tl183634183655%_)))
                                (let ((_%hd183636183661%_
                                       (##car _%e183635183658%_))
                                      (_%tl183637183663%_
                                       (##cdr _%e183635183658%_)))
                                  (let ((_%ann183666%_ _%hd183636183661%_))
                                    (if (gx#stx-pair? _%tl183637183663%_)
                                        (let ((_%e183638183668%_
                                               (gx#syntax-e
                                                _%tl183637183663%_)))
                                          (let ((_%hd183639183671%_
                                                 (##car _%e183638183668%_))
                                                (_%tl183640183673%_
                                                 (##cdr _%e183638183668%_)))
                                            (let ((_%expr183676%_
                                                   _%hd183639183671%_))
                                              (if (gx#stx-null?
                                                   _%tl183640183673%_)
                                                  (gx#core-quote-syntax__1
                                                   (cons (gx#core-quote-syntax__0
                                                          '%#begin-annotation)
                                                         (cons _%ann183666%_
                                                               (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%expr183676%_)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (gx#stx-source
                                                    _%stx183628%_))
                                                  (_%E183631183646%_)))))
                                        (_%E183631183646%_)))))
                              (_%E183631183646%_))))
                      (_%E183631183646%_)))))
          (_%E183630183678%_))))
    (define gx#core-expand-local-block
      (lambda (_%stx183253%_ _%body183254%_)
        (letrec ((_%expand-special183256%_
                  (lambda (_%hd183623%_ _%K183624%_ _%rest183625%_ _%r183626%_)
                    (_%K183624%_
                     '()
                     (cons (_%expand-internal183257%_
                            _%hd183623%_
                            _%rest183625%_)
                           _%r183626%_))))
                 (_%expand-internal183257%_
                  (lambda (_%hd183619%_ _%rest183620%_)
                    (call-with-parameters__1
                     (lambda ()
                       (_%wrap-internal183259%_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _%hd183619%_ _%rest183620%_))
                          (gx#stx-source _%stx183253%_))
                         _%expand-internal-special183258%_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj184077
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init!__0 __obj184077)
                       __obj184077))))
                 (_%expand-internal-special183258%_
                  (lambda (_%hd183415%_ _%K183416%_ _%rest183417%_ _%r183418%_)
                    (let* ((_%e183419183467%_ _%hd183415%_)
                           (_%E183462183471%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e183419183467%_)))
                           (_%E183449183483%_
                            (lambda ()
                              (if (gx#stx-pair? _%e183419183467%_)
                                  (let ((_%e183463183475%_
                                         (gx#syntax-e _%e183419183467%_)))
                                    (let ((_%hd183464183478%_
                                           (##car _%e183463183475%_))
                                          (_%tl183465183480%_
                                           (##cdr _%e183463183475%_)))
                                      (if (and (gx#identifier?
                                                _%hd183464183478%_)
                                               (gx#core-identifier=?
                                                _%hd183464183478%_
                                                '%#declare))
                                          (_%K183416%_
                                           _%rest183417%_
                                           (cons (gx#core-expand-declare%
                                                  _%hd183415%_)
                                                 _%r183418%_))
                                          (_%E183462183471%_))))
                                  (_%E183462183471%_))))
                           (_%E183445183525%_
                            (lambda ()
                              (if (gx#stx-pair? _%e183419183467%_)
                                  (let ((_%e183450183487%_
                                         (gx#syntax-e _%e183419183467%_)))
                                    (let ((_%hd183451183490%_
                                           (##car _%e183450183487%_))
                                          (_%tl183452183492%_
                                           (##cdr _%e183450183487%_)))
                                      (if (and (gx#identifier?
                                                _%hd183451183490%_)
                                               (gx#core-identifier=?
                                                _%hd183451183490%_
                                                '%#bind-runtime-properties!))
                                          (if (gx#stx-pair? _%tl183452183492%_)
                                              (let ((_%e183453183495%_
                                                     (gx#syntax-e
                                                      _%tl183452183492%_)))
                                                (let ((_%hd183454183498%_
                                                       (##car _%e183453183495%_))
                                                      (_%tl183455183500%_
                                                       (##cdr _%e183453183495%_)))
                                                  (if (gx#stx-pair?
                                                       _%hd183454183498%_)
                                                      (let ((_%e183459183503%_
                                                             (gx#syntax-e
                                                              _%hd183454183498%_)))
                                                        (let ((_%hd183460183506%_
                                                               (##car _%e183459183503%_))
                                                              (_%tl183461183508%_
                                                               (##cdr _%e183459183503%_)))
                                                          (let ((_%id183511%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd183460183506%_))
                    (if (gx#stx-null? _%tl183461183508%_)
                        (if (gx#stx-pair? _%tl183455183500%_)
                            (let ((_%e183456183513%_
                                   (gx#syntax-e _%tl183455183500%_)))
                              (let ((_%hd183457183516%_
                                     (##car _%e183456183513%_))
                                    (_%tl183458183518%_
                                     (##cdr _%e183456183513%_)))
                                (let ((_%props183521%_ _%hd183457183516%_))
                                  (if (gx#stx-null? _%tl183458183518%_)
                                      (let ((_%bind183523%_
                                             (gx#resolve-identifier__0
                                              _%id183511%_)))
                                        (gx#core-bind-runtime-properties!
                                         _%bind183523%_
                                         _%props183521%_)
                                        (_%K183416%_
                                         _%rest183417%_
                                         _%r183418%_))
                                      (_%E183449183483%_)))))
                            (_%E183449183483%_))
                        (_%E183449183483%_)))))
              (_%E183449183483%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E183449183483%_))
                                          (_%E183449183483%_))))
                                  (_%E183449183483%_))))
                           (_%E183441183537%_
                            (lambda ()
                              (if (gx#stx-pair? _%e183419183467%_)
                                  (let ((_%e183446183529%_
                                         (gx#syntax-e _%e183419183467%_)))
                                    (let ((_%hd183447183532%_
                                           (##car _%e183446183529%_))
                                          (_%tl183448183534%_
                                           (##cdr _%e183446183529%_)))
                                      (if (and (gx#identifier?
                                                _%hd183447183532%_)
                                               (gx#core-identifier=?
                                                _%hd183447183532%_
                                                '%#define-alias))
                                          (begin
                                            (gx#core-expand-define-alias%
                                             _%hd183415%_)
                                            (_%K183416%_
                                             _%rest183417%_
                                             _%r183418%_))
                                          (_%E183445183525%_))))
                                  (_%E183445183525%_))))
                           (_%E183431183549%_
                            (lambda ()
                              (if (gx#stx-pair? _%e183419183467%_)
                                  (let ((_%e183442183541%_
                                         (gx#syntax-e _%e183419183467%_)))
                                    (let ((_%hd183443183544%_
                                           (##car _%e183442183541%_))
                                          (_%tl183444183546%_
                                           (##cdr _%e183442183541%_)))
                                      (if (and (gx#identifier?
                                                _%hd183443183544%_)
                                               (gx#core-identifier=?
                                                _%hd183443183544%_
                                                '%#define-syntax))
                                          (begin
                                            (gx#core-expand-define-syntax%
                                             _%hd183415%_)
                                            (_%K183416%_
                                             _%rest183417%_
                                             _%r183418%_))
                                          (_%E183441183537%_))))
                                  (_%E183441183537%_))))
                           (_%E183421183581%_
                            (lambda ()
                              (if (gx#stx-pair? _%e183419183467%_)
                                  (let ((_%e183432183553%_
                                         (gx#syntax-e _%e183419183467%_)))
                                    (let ((_%hd183433183556%_
                                           (##car _%e183432183553%_))
                                          (_%tl183434183558%_
                                           (##cdr _%e183432183553%_)))
                                      (if (and (gx#identifier?
                                                _%hd183433183556%_)
                                               (gx#core-identifier=?
                                                _%hd183433183556%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl183434183558%_)
                                              (let ((_%e183435183561%_
                                                     (gx#syntax-e
                                                      _%tl183434183558%_)))
                                                (let ((_%hd183436183564%_
                                                       (##car _%e183435183561%_))
                                                      (_%tl183437183566%_
                                                       (##cdr _%e183435183561%_)))
                                                  (let ((_%hd-bind183569%_
                                                         _%hd183436183564%_))
                                                    (if (gx#stx-pair?
                                                         _%tl183437183566%_)
                                                        (let ((_%e183438183571%_
                                                               (gx#syntax-e
                                                                _%tl183437183566%_)))
                                                          (let ((_%hd183439183574%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e183438183571%_))
                        (_%tl183440183576%_ (##cdr _%e183438183571%_)))
                    (let ((_%expr183579%_ _%hd183439183574%_))
                      (if (gx#stx-null? _%tl183440183576%_)
                          (if (gx#core-bind-values? _%hd-bind183569%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind183569%_)
                                (_%K183416%_
                                 _%rest183417%_
                                 (cons _%hd183415%_ _%r183418%_)))
                              (_%E183431183549%_))
                          (_%E183431183549%_)))))
                (_%E183431183549%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E183431183549%_))
                                          (_%E183431183549%_))))
                                  (_%E183431183549%_))))
                           (_%E183420183615%_
                            (lambda ()
                              (if (gx#stx-pair? _%e183419183467%_)
                                  (let ((_%e183422183585%_
                                         (gx#syntax-e _%e183419183467%_)))
                                    (let ((_%hd183423183588%_
                                           (##car _%e183422183585%_))
                                          (_%tl183424183590%_
                                           (##cdr _%e183422183585%_)))
                                      (if (and (gx#identifier?
                                                _%hd183423183588%_)
                                               (gx#core-identifier=?
                                                _%hd183423183588%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl183424183590%_)
                                              (let ((_%e183425183593%_
                                                     (gx#syntax-e
                                                      _%tl183424183590%_)))
                                                (let ((_%hd183426183596%_
                                                       (##car _%e183425183593%_))
                                                      (_%tl183427183598%_
                                                       (##cdr _%e183425183593%_)))
                                                  (let ((_%hd-bind183601%_
                                                         _%hd183426183596%_))
                                                    (if (gx#stx-pair?
                                                         _%tl183427183598%_)
                                                        (let ((_%e183428183603%_
                                                               (gx#syntax-e
                                                                _%tl183427183598%_)))
                                                          (let ((_%hd183429183606%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e183428183603%_))
                        (_%tl183430183608%_ (##cdr _%e183428183603%_)))
                    (let* ((_%expr183611%_ _%hd183429183606%_)
                           (_%props183613%_ _%tl183430183608%_))
                      (if (and (gx#core-bind-values? _%hd-bind183601%_)
                               (gx#stx-list? _%props183613%_)
                               (not (gx#stx-null? _%props183613%_)))
                          (begin
                            (gx#core-bind-values!__0 _%hd-bind183601%_)
                            (_%K183416%_
                             (cons (gx#core-cons
                                    '%#bind-runtime-properties!
                                    (cons _%hd-bind183601%_
                                          (cons _%props183613%_ '())))
                                   _%rest183417%_)
                             (cons (gx#core-cons
                                    '%#define-values
                                    (cons _%hd-bind183601%_
                                          (cons _%expr183611%_ '())))
                                   _%r183418%_)))
                          (_%E183421183581%_)))))
                (_%E183421183581%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E183421183581%_))
                                          (_%E183421183581%_))))
                                  (_%E183421183581%_)))))
                      (_%E183420183615%_))))
                 (_%wrap-internal183259%_
                  (lambda (_%rbody183261%_)
                    (let _%lp183263%_ ((_%rest183265%_ _%rbody183261%_)
                                       (_%decls183266%_ '())
                                       (_%bind183267%_ '())
                                       (_%body183268%_ '()))
                      (let* ((_%e183269183276%_ _%rest183265%_)
                             (_%E183271183325%_
                              (lambda ()
                                (let* ((_%body183320%_
                                        (let* ((_%body183279183289%_
                                                _%body183268%_)
                                               (_%else183282183297%_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _%body183268%_)
                                                   (gx#stx-source
                                                    _%stx183253%_)))))
                                          (let ((_%K183287183317%_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _%stx183253%_)))
                                                (_%K183284183303%_
                                                 (lambda (_%expr183301%_)
                                                   _%expr183301%_)))
                                            (let ((_%try-match183281183313%_
                                                   (lambda ()
                                                     (if (pair? _%body183279183289%_)
                                                         (let ((_%tl183286183308%_
                                                                (##cdr _%body183279183289%_))
                                                               (_%hd183285183306%_
                                                                (##car _%body183279183289%_)))
                                                           (if (null? _%tl183286183308%_)
                                                               (let ((_%expr183311%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd183285183306%_))
                         (_%K183284183303%_ _%expr183311%_))
                       (_%else183282183297%_)))
                 (_%else183282183297%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (null? _%body183279183289%_)
                                                  (_%K183287183317%_)
                                                  (_%try-match183281183313%_))))))
                                       (_%body183322%_
                                        (if (null? _%bind183267%_)
                                            _%body183320%_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _%bind183267%_
                                                         (cons _%body183320%_
                                                               '())))
                                             (gx#stx-source _%stx183253%_)))))
                                  (if (null? _%decls183266%_)
                                      _%body183322%_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _%decls183266%_
                                                   (cons _%body183322%_ '())))
                                       (gx#stx-source _%stx183253%_))))))
                             (_%E183270183411%_
                              (lambda ()
                                (if (gx#stx-pair? _%e183269183276%_)
                                    (let ((_%e183272183329%_
                                           (gx#syntax-e _%e183269183276%_)))
                                      (let ((_%hd183273183332%_
                                             (##car _%e183272183329%_))
                                            (_%tl183274183334%_
                                             (##cdr _%e183272183329%_)))
                                        (let* ((_%hd183337%_
                                                _%hd183273183332%_)
                                               (_%rest183339%_
                                                _%tl183274183334%_)
                                               (_%e183340183357%_ _%hd183337%_)
                                               (_%E183352183361%_
                                                (lambda ()
                                                  (if (null? _%bind183267%_)
                                                      (_%lp183263%_
                                                       _%rest183339%_
                                                       _%decls183266%_
                                                       _%bind183267%_
                                                       (cons _%hd183337%_
                                                             _%body183268%_))
                                                      (_%lp183263%_
                                                       _%rest183339%_
                                                       _%decls183266%_
                                                       (cons (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%hd183337%_ '()))
                     _%bind183267%_)
               _%body183268%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E183342183375%_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _%e183340183357%_)
                                                      (let ((_%e183353183365%_
                                                             (gx#syntax-e
                                                              _%e183340183357%_)))
                                                        (let ((_%hd183354183368%_
                                                               (##car _%e183353183365%_))
                                                              (_%tl183355183370%_
                                                               (##cdr _%e183353183365%_)))
                                                          (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%hd183354183368%_)
                           (gx#core-identifier=?
                            _%hd183354183368%_
                            '%#declare))
                      (let ((_%xdecls183373%_ _%tl183355183370%_))
                        (_%lp183263%_
                         _%rest183339%_
                         (gx#stx-foldr cons _%decls183266%_ _%xdecls183373%_)
                         _%bind183267%_
                         _%body183268%_))
                      (_%E183352183361%_))))
              (_%E183352183361%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E183341183407%_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _%e183340183357%_)
                                                      (let ((_%e183343183379%_
                                                             (gx#syntax-e
                                                              _%e183340183357%_)))
                                                        (let ((_%hd183344183382%_
                                                               (##car _%e183343183379%_))
                                                              (_%tl183345183384%_
                                                               (##cdr _%e183343183379%_)))
                                                          (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%hd183344183382%_)
                           (gx#core-identifier=?
                            _%hd183344183382%_
                            '%#define-values))
                      (if (gx#stx-pair? _%tl183345183384%_)
                          (let ((_%e183346183387%_
                                 (gx#syntax-e _%tl183345183384%_)))
                            (let ((_%hd183347183390%_
                                   (##car _%e183346183387%_))
                                  (_%tl183348183392%_
                                   (##cdr _%e183346183387%_)))
                              (let ((_%hd-bind183395%_ _%hd183347183390%_))
                                (if (gx#stx-pair? _%tl183348183392%_)
                                    (let ((_%e183349183397%_
                                           (gx#syntax-e _%tl183348183392%_)))
                                      (let ((_%hd183350183400%_
                                             (##car _%e183349183397%_))
                                            (_%tl183351183402%_
                                             (##cdr _%e183349183397%_)))
                                        (let ((_%expr183405%_
                                               _%hd183350183400%_))
                                          (if (gx#stx-null? _%tl183351183402%_)
                                              (_%lp183263%_
                                               _%rest183339%_
                                               _%decls183266%_
                                               (cons (cons (gx#core-quote-bind-values
                                                            _%hd-bind183395%_)
                                                           (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%expr183405%_)
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind183267%_)
                                               _%body183268%_)
                                              (_%E183342183375%_)))))
                                    (_%E183342183375%_)))))
                          (_%E183342183375%_))
                      (_%E183342183375%_))))
              (_%E183342183375%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%E183341183407%_))))
                                    (_%E183271183325%_)))))
                        (_%E183270183411%_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _%body183254%_)
            (gx#stx-source _%stx183253%_))
           _%expand-special183256%_))))
    (define gx#core-expand-declare%
      (lambda (_%stx183191%_)
        (let* ((_%e183192183199%_ _%stx183191%_)
               (_%E183194183203%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e183192183199%_)))
               (_%E183193183249%_
                (lambda ()
                  (if (gx#stx-pair? _%e183192183199%_)
                      (let ((_%e183195183207%_
                             (gx#syntax-e _%e183192183199%_)))
                        (let ((_%hd183196183210%_ (##car _%e183195183207%_))
                              (_%tl183197183212%_ (##cdr _%e183195183207%_)))
                          (let ((_%body183215%_ _%tl183197183212%_))
                            (if (gx#stx-list? _%body183215%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_%decl183217%_)
                                     (let* ((_%e183218183225%_ _%decl183217%_)
                                            (_%E183220183229%_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _%e183218183225%_)))
                                            (_%E183219183245%_
                                             (lambda ()
                                               (if (gx#stx-pair?
                                                    _%e183218183225%_)
                                                   (let ((_%e183221183233%_
                                                          (gx#syntax-e
                                                           _%e183218183225%_)))
                                                     (let ((_%hd183222183236%_
                                                            (##car _%e183221183233%_))
                                                           (_%tl183223183238%_
                                                            (##cdr _%e183221183233%_)))
                                                       (let* ((_%head183241%_
                                                               _%hd183222183236%_)
                                                              (_%args183243%_
                                                               _%tl183223183238%_))
                                                         (if (gx#stx-list?
                                                              _%args183243%_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _%decl183217%_)
                                                             (_%E183220183229%_)))))
                                                   (_%E183220183229%_)))))
                                       (_%E183219183245%_)))
                                   _%body183215%_))
                                 (gx#stx-source _%stx183191%_))
                                (_%E183194183203%_)))))
                      (_%E183194183203%_)))))
          (_%E183193183249%_))))
    (define gx#core-expand-extern%
      (lambda (_%stx183095%_)
        (let* ((_%e183096183103%_ _%stx183095%_)
               (_%E183098183107%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e183096183103%_)))
               (_%E183097183187%_
                (lambda ()
                  (if (gx#stx-pair? _%e183096183103%_)
                      (let ((_%e183099183111%_
                             (gx#syntax-e _%e183096183103%_)))
                        (let ((_%hd183100183114%_ (##car _%e183099183111%_))
                              (_%tl183101183116%_ (##cdr _%e183099183111%_)))
                          (let ((_%body183119%_ _%tl183101183116%_))
                            (let _%lp183121%_ ((_%rest183123%_ _%body183119%_)
                                               (_%r183124%_ '()))
                              (let* ((_%e183125183139%_ _%rest183123%_)
                                     (_%E183137183143%_
                                      (lambda ()
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                         _%stx183095%_)))
                                     (_%E183127183147%_
                                      (lambda ()
                                        (if (gx#stx-null? _%e183125183139%_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-cons
                                              '%#extern
                                              (reverse _%r183124%_))
                                             (gx#stx-source _%stx183095%_))
                                            (_%E183137183143%_))))
                                     (_%E183126183183%_
                                      (lambda ()
                                        (if (gx#stx-pair? _%e183125183139%_)
                                            (let ((_%e183128183151%_
                                                   (gx#syntax-e
                                                    _%e183125183139%_)))
                                              (let ((_%hd183129183154%_
                                                     (##car _%e183128183151%_))
                                                    (_%tl183130183156%_
                                                     (##cdr _%e183128183151%_)))
                                                (if (gx#stx-pair?
                                                     _%hd183129183154%_)
                                                    (let ((_%e183131183159%_
                                                           (gx#syntax-e
                                                            _%hd183129183154%_)))
                                                      (let ((_%hd183132183162%_
                                                             (##car _%e183131183159%_))
                                                            (_%tl183133183164%_
                                                             (##cdr _%e183131183159%_)))
                                                        (let ((_%id183167%_
                                                               _%hd183132183162%_))
                                                          (if (gx#stx-pair?
                                                               _%tl183133183164%_)
                                                              (let ((_%e183134183169%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl183133183164%_)))
                        (let ((_%hd183135183172%_ (##car _%e183134183169%_))
                              (_%tl183136183174%_ (##cdr _%e183134183169%_)))
                          (let ((_%eid183177%_ _%hd183135183172%_))
                            (if (gx#stx-null? _%tl183136183174%_)
                                (let ((_%rest183179%_ _%tl183130183156%_))
                                  (if (and (gx#identifier? _%id183167%_)
                                           (gx#identifier? _%eid183177%_))
                                      (let ((_%eid183181%_
                                             (gx#stx-e _%eid183177%_)))
                                        (gx#core-bind-extern!__0
                                         _%id183167%_
                                         _%eid183181%_)
                                        (_%lp183121%_
                                         _%rest183179%_
                                         (cons (cons (gx#core-quote-syntax__0
                                                      _%id183167%_)
                                                     (cons _%eid183181%_ '()))
                                               _%r183124%_)))
                                      (_%E183127183147%_)))
                                (_%E183127183147%_)))))
                      (_%E183127183147%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E183127183147%_))))
                                            (_%E183127183147%_)))))
                                (_%E183126183183%_))))))
                      (_%E183098183107%_)))))
          (_%E183097183187%_))))
    (define gx#core-expand-define-values%
      (lambda (_%stx182997%_)
        (let* ((_%e182998183021%_ _%stx182997%_)
               (_%E183010183025%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e182998183021%_)))
               (_%E183000183057%_
                (lambda ()
                  (if (gx#stx-pair? _%e182998183021%_)
                      (let ((_%e183011183029%_
                             (gx#syntax-e _%e182998183021%_)))
                        (let ((_%hd183012183032%_ (##car _%e183011183029%_))
                              (_%tl183013183034%_ (##cdr _%e183011183029%_)))
                          (if (gx#stx-pair? _%tl183013183034%_)
                              (let ((_%e183014183037%_
                                     (gx#syntax-e _%tl183013183034%_)))
                                (let ((_%hd183015183040%_
                                       (##car _%e183014183037%_))
                                      (_%tl183016183042%_
                                       (##cdr _%e183014183037%_)))
                                  (let ((_%hd183045%_ _%hd183015183040%_))
                                    (if (gx#stx-pair? _%tl183016183042%_)
                                        (let ((_%e183017183047%_
                                               (gx#syntax-e
                                                _%tl183016183042%_)))
                                          (let ((_%hd183018183050%_
                                                 (##car _%e183017183047%_))
                                                (_%tl183019183052%_
                                                 (##cdr _%e183017183047%_)))
                                            (let ((_%expr183055%_
                                                   _%hd183018183050%_))
                                              (if (gx#stx-null?
                                                   _%tl183019183052%_)
                                                  (if (gx#core-bind-values?
                                                       _%hd183045%_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _%hd183045%_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd183045%_)
                             (cons (gx#core-expand-expression _%expr183055%_)
                                   '())))
                 (gx#stx-source _%stx182997%_)))
              (_%E183010183025%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E183010183025%_)))))
                                        (_%E183010183025%_)))))
                              (_%E183010183025%_))))
                      (_%E183010183025%_))))
               (_%E182999183091%_
                (lambda ()
                  (if (gx#stx-pair? _%e182998183021%_)
                      (let ((_%e183001183061%_
                             (gx#syntax-e _%e182998183021%_)))
                        (let ((_%hd183002183064%_ (##car _%e183001183061%_))
                              (_%tl183003183066%_ (##cdr _%e183001183061%_)))
                          (if (gx#stx-pair? _%tl183003183066%_)
                              (let ((_%e183004183069%_
                                     (gx#syntax-e _%tl183003183066%_)))
                                (let ((_%hd183005183072%_
                                       (##car _%e183004183069%_))
                                      (_%tl183006183074%_
                                       (##cdr _%e183004183069%_)))
                                  (let ((_%hd183077%_ _%hd183005183072%_))
                                    (if (gx#stx-pair? _%tl183006183074%_)
                                        (let ((_%e183007183079%_
                                               (gx#syntax-e
                                                _%tl183006183074%_)))
                                          (let ((_%hd183008183082%_
                                                 (##car _%e183007183079%_))
                                                (_%tl183009183084%_
                                                 (##cdr _%e183007183079%_)))
                                            (let* ((_%expr183087%_
                                                    _%hd183008183082%_)
                                                   (_%props183089%_
                                                    _%tl183009183084%_))
                                              (if (and (gx#stx-list?
                                                        _%props183089%_)
                                                       (not (gx#stx-null?
                                                             _%props183089%_)))
                                                  (gx#core-cons
                                                   '%#begin
                                                   (cons (gx#core-cons
                                                          '%#define-values
                                                          (cons _%hd183077%_
                                                                (cons _%expr183087%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
                 (cons (gx#core-cons
                        '%#bind-runtime-properties!
                        (cons _%hd183077%_ (cons _%props183089%_ '())))
                       '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E183000183057%_)))))
                                        (_%E183000183057%_)))))
                              (_%E183000183057%_))))
                      (_%E183000183057%_)))))
          (_%E182999183091%_))))
    (define gx#core-expand-define-runtime%
      (lambda (_%stx182936%_)
        (let* ((_%e182937182950%_ _%stx182936%_)
               (_%E182939182954%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e182937182950%_)))
               (_%E182938182993%_
                (lambda ()
                  (if (gx#stx-pair? _%e182937182950%_)
                      (let ((_%e182940182958%_
                             (gx#syntax-e _%e182937182950%_)))
                        (let ((_%hd182941182961%_ (##car _%e182940182958%_))
                              (_%tl182942182963%_ (##cdr _%e182940182958%_)))
                          (if (gx#stx-pair? _%tl182942182963%_)
                              (let ((_%e182943182966%_
                                     (gx#syntax-e _%tl182942182963%_)))
                                (let ((_%hd182944182969%_
                                       (##car _%e182943182966%_))
                                      (_%tl182945182971%_
                                       (##cdr _%e182943182966%_)))
                                  (let ((_%id182974%_ _%hd182944182969%_))
                                    (if (gx#stx-pair? _%tl182945182971%_)
                                        (let ((_%e182946182976%_
                                               (gx#syntax-e
                                                _%tl182945182971%_)))
                                          (let ((_%hd182947182979%_
                                                 (##car _%e182946182976%_))
                                                (_%tl182948182981%_
                                                 (##cdr _%e182946182976%_)))
                                            (let* ((_%binding-id182984%_
                                                    _%hd182947182979%_)
                                                   (_%props182986%_
                                                    _%tl182948182981%_))
                                              (if (and (gx#identifier?
                                                        _%id182974%_)
                                                       (gx#identifier?
                                                        _%binding-id182984%_)
                                                       (gx#stx-list?
                                                        _%props182986%_))
                                                  (let* ((_%eid182988%_
                                                          (gx#stx-e
                                                           _%binding-id182984%_))
                                                         (_%bind182990%_
                                                          (gx#core-bind-runtime-reference!__0
                                                           _%id182974%_
                                                           _%eid182988%_)))
                                                    (gx#core-bind-runtime-properties!
                                                     _%bind182990%_
                                                     _%props182986%_)
                                                    (gx#core-quote-syntax__0
                                                     (cons (gx#core-quote-syntax__0
                                                            '%#define-runtime)
                                                           (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id182974%_)
                         (cons _%eid182988%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E182939182954%_)))))
                                        (_%E182939182954%_)))))
                              (_%E182939182954%_))))
                      (_%E182939182954%_)))))
          (_%E182938182993%_))))
    (define gx#core-expand-bind-runtime-properties%
      (lambda (_%stx182869%_)
        (let* ((_%e182870182886%_ _%stx182869%_)
               (_%E182872182890%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e182870182886%_)))
               (_%E182871182932%_
                (lambda ()
                  (if (gx#stx-pair? _%e182870182886%_)
                      (let ((_%e182873182894%_
                             (gx#syntax-e _%e182870182886%_)))
                        (let ((_%hd182874182897%_ (##car _%e182873182894%_))
                              (_%tl182875182899%_ (##cdr _%e182873182894%_)))
                          (if (gx#stx-pair? _%tl182875182899%_)
                              (let ((_%e182876182902%_
                                     (gx#syntax-e _%tl182875182899%_)))
                                (let ((_%hd182877182905%_
                                       (##car _%e182876182902%_))
                                      (_%tl182878182907%_
                                       (##cdr _%e182876182902%_)))
                                  (if (gx#stx-pair? _%hd182877182905%_)
                                      (let ((_%e182882182910%_
                                             (gx#syntax-e _%hd182877182905%_)))
                                        (let ((_%hd182883182913%_
                                               (##car _%e182882182910%_))
                                              (_%tl182884182915%_
                                               (##cdr _%e182882182910%_)))
                                          (let ((_%id182918%_
                                                 _%hd182883182913%_))
                                            (if (gx#stx-null?
                                                 _%tl182884182915%_)
                                                (if (gx#stx-pair?
                                                     _%tl182878182907%_)
                                                    (let ((_%e182879182920%_
                                                           (gx#syntax-e
                                                            _%tl182878182907%_)))
                                                      (let ((_%hd182880182923%_
                                                             (##car _%e182879182920%_))
                                                            (_%tl182881182925%_
                                                             (##cdr _%e182879182920%_)))
                                                        (let ((_%props182928%_
                                                               _%hd182880182923%_))
                                                          (if (gx#stx-null?
                                                               _%tl182881182925%_)
                                                              (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%id182918%_)
                               (gx#stx-list? _%props182928%_))
                          (let ((_%bind182930%_
                                 (gx#resolve-identifier__0 _%id182918%_)))
                            (if (##structure-instance-of?
                                 _%bind182930%_
                                 'gx#runtime-binding::t)
                                '#!void
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; expected runtime binding"
                                 _%stx182869%_
                                 _%id182918%_
                                 _%bind182930%_))
                            (gx#core-bind-runtime-properties!
                             _%bind182930%_
                             _%props182928%_)
                            (gx#core-cons '%#begin '()))
                          (_%E182872182890%_))
                      (_%E182872182890%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E182872182890%_))
                                                (_%E182872182890%_)))))
                                      (_%E182872182890%_))))
                              (_%E182872182890%_))))
                      (_%E182872182890%_)))))
          (_%E182871182932%_))))
    (define gx#core-bind-runtime-properties!
      (lambda (_%bind182804%_ _%props182805%_)
        (letrec ((_%eval-prop182807%_
                  (lambda (_%prop182867%_)
                    (gx#eval-expression+1 _%prop182867%_))))
          (let _%loop182809%_ ((_%rest182811%_ _%props182805%_)
                               (_%props182812%_ '()))
            (let* ((_%e182813182824%_ _%rest182811%_)
                   (_%E182822182828%_
                    (lambda ()
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _%e182813182824%_)))
                   (_%E182815182832%_
                    (lambda ()
                      (if (gx#stx-null? _%e182813182824%_)
                          (if (null? _%props182812%_)
                              '#!void
                              (##structure-set!
                               _%bind182804%_
                               (reverse! _%props182812%_)
                               '4
                               gx#binding::t
                               '#f))
                          (_%E182822182828%_))))
                   (_%E182814182863%_
                    (lambda ()
                      (if (gx#stx-pair? _%e182813182824%_)
                          (let ((_%e182816182836%_
                                 (gx#syntax-e _%e182813182824%_)))
                            (let ((_%hd182817182839%_
                                   (##car _%e182816182836%_))
                                  (_%tl182818182841%_
                                   (##cdr _%e182816182836%_)))
                              (let ((_%key182844%_ _%hd182817182839%_))
                                (if (gx#stx-pair? _%tl182818182841%_)
                                    (let ((_%e182819182846%_
                                           (gx#syntax-e _%tl182818182841%_)))
                                      (let ((_%hd182820182849%_
                                             (##car _%e182819182846%_))
                                            (_%tl182821182851%_
                                             (##cdr _%e182819182846%_)))
                                        (let* ((_%prop182854%_
                                                _%hd182820182849%_)
                                               (_%rest182856%_
                                                _%tl182821182851%_))
                                          (if (gx#stx-keyword? _%key182844%_)
                                              (let* ((_%key182858%_
                                                      (gx#stx-e _%key182844%_))
                                                     (_%$e182860%_
                                                      _%key182858%_))
                                                (if (eq? 'macro: _%$e182860%_)
                                                    (begin
                                                      (##structure-set!
                                                       _%bind182804%_
                                                       (if (gx#identifier?
                                                            _%prop182854%_)
                                                           (gx#core-quote-syntax__0
                                                            _%prop182854%_)
                                                           (gx#eval-expression+1
                                                            _%prop182854%_))
                                                       '6
                                                       gx#runtime-binding::t
                                                       '#f)
                                                      (_%loop182809%_
                                                       _%rest182856%_
                                                       _%props182812%_))
                                                    (if (eq? 'type:
                                                             _%$e182860%_)
                                                        (begin
                                                          (##structure-set!
                                                           _%bind182804%_
                                                           (gx#eval-expression+1
                                                            _%prop182854%_)
                                                           '5
                                                           gx#runtime-binding::t
                                                           '#f)
                                                          (_%loop182809%_
                                                           _%rest182856%_
                                                           _%props182812%_))
                                                        (_%loop182809%_
                                                         _%rest182856%_
                                                         (cons (gx#eval-expression+1
                                                                _%prop182854%_)
                                                               (cons _%key182858%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%props182812%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E182815182832%_)))))
                                    (_%E182815182832%_)))))
                          (_%E182815182832%_)))))
              (_%E182814182863%_))))))
    (define gx#core-expand-define-syntax%
      (lambda (_%stx182747%_)
        (let* ((_%e182748182761%_ _%stx182747%_)
               (_%E182750182765%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e182748182761%_)))
               (_%E182749182800%_
                (lambda ()
                  (if (gx#stx-pair? _%e182748182761%_)
                      (let ((_%e182751182769%_
                             (gx#syntax-e _%e182748182761%_)))
                        (let ((_%hd182752182772%_ (##car _%e182751182769%_))
                              (_%tl182753182774%_ (##cdr _%e182751182769%_)))
                          (if (gx#stx-pair? _%tl182753182774%_)
                              (let ((_%e182754182777%_
                                     (gx#syntax-e _%tl182753182774%_)))
                                (let ((_%hd182755182780%_
                                       (##car _%e182754182777%_))
                                      (_%tl182756182782%_
                                       (##cdr _%e182754182777%_)))
                                  (let ((_%id182785%_ _%hd182755182780%_))
                                    (if (gx#stx-pair? _%tl182756182782%_)
                                        (let ((_%e182757182787%_
                                               (gx#syntax-e
                                                _%tl182756182782%_)))
                                          (let ((_%hd182758182790%_
                                                 (##car _%e182757182787%_))
                                                (_%tl182759182792%_
                                                 (##cdr _%e182757182787%_)))
                                            (let ((_%expr182795%_
                                                   _%hd182758182790%_))
                                              (if (gx#stx-null?
                                                   _%tl182759182792%_)
                                                  (if (gx#identifier?
                                                       _%id182785%_)
                                                      (let ((_g184095_
                                                             (gx#core-expand-expression+1
                                                              _%expr182795%_)))
                                                        (begin
                                                          (let ((_g184096_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g184095_)
                             (##values-length _g184095_)
                             1)))
                    (if (not (##fx= _g184096_ 2))
                        (error "Context expects 2 values" _g184096_)))
                  (let ((_%e-stx182797%_ (##values-ref _g184095_ 0))
                        (_%e182798%_ (##values-ref _g184095_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _%id182785%_ _%e182798%_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _%id182785%_)
                                   (cons _%e-stx182797%_ '())))
                       (gx#stx-source _%stx182747%_))))))
              (_%E182750182765%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E182750182765%_)))))
                                        (_%E182750182765%_)))))
                              (_%E182750182765%_))))
                      (_%E182750182765%_)))))
          (_%E182749182800%_))))
    (define gx#core-expand-define-alias%
      (lambda (_%stx182691%_)
        (let* ((_%e182692182705%_ _%stx182691%_)
               (_%E182694182709%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e182692182705%_)))
               (_%E182693182743%_
                (lambda ()
                  (if (gx#stx-pair? _%e182692182705%_)
                      (let ((_%e182695182713%_
                             (gx#syntax-e _%e182692182705%_)))
                        (let ((_%hd182696182716%_ (##car _%e182695182713%_))
                              (_%tl182697182718%_ (##cdr _%e182695182713%_)))
                          (if (gx#stx-pair? _%tl182697182718%_)
                              (let ((_%e182698182721%_
                                     (gx#syntax-e _%tl182697182718%_)))
                                (let ((_%hd182699182724%_
                                       (##car _%e182698182721%_))
                                      (_%tl182700182726%_
                                       (##cdr _%e182698182721%_)))
                                  (let ((_%id182729%_ _%hd182699182724%_))
                                    (if (gx#stx-pair? _%tl182700182726%_)
                                        (let ((_%e182701182731%_
                                               (gx#syntax-e
                                                _%tl182700182726%_)))
                                          (let ((_%hd182702182734%_
                                                 (##car _%e182701182731%_))
                                                (_%tl182703182736%_
                                                 (##cdr _%e182701182731%_)))
                                            (let ((_%alias-id182739%_
                                                   _%hd182702182734%_))
                                              (if (gx#stx-null?
                                                   _%tl182703182736%_)
                                                  (if (and (gx#identifier?
                                                            _%id182729%_)
                                                           (gx#identifier?
                                                            _%alias-id182739%_))
                                                      (let ((_%alias-id182741%_
                                                             (gx#core-quote-syntax__0
                                                              _%alias-id182739%_)))
                                                        (gx#core-bind-alias!__0
                                                         _%id182729%_
                                                         _%alias-id182741%_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id182729%_)
                             (cons _%alias-id182741%_ '())))))
              (_%E182694182709%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E182694182709%_)))))
                                        (_%E182694182709%_)))))
                              (_%E182694182709%_))))
                      (_%E182694182709%_)))))
          (_%E182693182743%_))))
    (define gx#core-expand-lambda%__%
      (lambda (_%stx182634%_ _%wrap?182635%_)
        (let* ((_%e182636182646%_ _%stx182634%_)
               (_%E182638182650%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e182636182646%_)))
               (_%E182637182677%_
                (lambda ()
                  (if (gx#stx-pair? _%e182636182646%_)
                      (let ((_%e182639182654%_
                             (gx#syntax-e _%e182636182646%_)))
                        (let ((_%hd182640182657%_ (##car _%e182639182654%_))
                              (_%tl182641182659%_ (##cdr _%e182639182654%_)))
                          (if (gx#stx-pair? _%tl182641182659%_)
                              (let ((_%e182642182662%_
                                     (gx#syntax-e _%tl182641182659%_)))
                                (let ((_%hd182643182665%_
                                       (##car _%e182642182662%_))
                                      (_%tl182644182667%_
                                       (##cdr _%e182642182662%_)))
                                  (let* ((_%hd182670%_ _%hd182643182665%_)
                                         (_%body182672%_ _%tl182644182667%_))
                                    (if (gx#core-bind-values? _%hd182670%_)
                                        (call-with-parameters__1
                                         (lambda ()
                                           (gx#core-bind-values!__0
                                            _%hd182670%_)
                                           (let ((_%body182675%_
                                                  (cons (gx#core-quote-bind-values
                                                         _%hd182670%_)
                                                        (cons (gx#core-expand-local-block
                                                               _%stx182634%_
                                                               _%body182672%_)
                                                              '()))))
                                             (if _%wrap?182635%_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _%body182675%_)
                                                  (gx#stx-source
                                                   _%stx182634%_))
                                                 _%body182675%_)))
                                         gx#current-expander-context
                                         (let ((__obj184078
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj184078)
                                           __obj184078))
                                        (_%E182638182650%_)))))
                              (_%E182638182650%_))))
                      (_%E182638182650%_)))))
          (_%E182637182677%_))))
    (define gx#core-expand-lambda%__0
      (lambda (_%stx182684%_)
        (let ((_%wrap?182686%_ '#t))
          (gx#core-expand-lambda%__% _%stx182684%_ _%wrap?182686%_))))
    (define gx#core-expand-lambda%
      (lambda _g184097_
        (let ((_g184098_ (##length _g184097_)))
          (cond ((##fx= _g184098_ 1)
                 (apply gx#core-expand-lambda%__0 _g184097_))
                ((##fx= _g184098_ 2)
                 (apply gx#core-expand-lambda%__% _g184097_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g184097_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_%stx182598%_)
        (let* ((_%e182599182606%_ _%stx182598%_)
               (_%E182601182610%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e182599182606%_)))
               (_%E182600182629%_
                (lambda ()
                  (if (gx#stx-pair? _%e182599182606%_)
                      (let ((_%e182602182614%_
                             (gx#syntax-e _%e182599182606%_)))
                        (let ((_%hd182603182617%_ (##car _%e182602182614%_))
                              (_%tl182604182619%_ (##cdr _%e182602182614%_)))
                          (let ((_%clauses182622%_ _%tl182604182619%_))
                            (if (gx#stx-list? _%clauses182622%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_%clause182624%_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _%clause182624%_)
                                       (let ((_%$e182626%_
                                              (gx#stx-source
                                               _%clause182624%_)))
                                         (if _%$e182626%_
                                             _%$e182626%_
                                             (gx#stx-source _%stx182598%_))))
                                      '#f))
                                   _%clauses182622%_))
                                 (gx#stx-source _%stx182598%_))
                                (_%E182601182610%_)))))
                      (_%E182601182610%_)))))
          (_%E182600182629%_))))
    (define gx#core-expand-let-values%
      (lambda (_%stx182552%_)
        (let* ((_%e182553182563%_ _%stx182552%_)
               (_%E182555182567%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e182553182563%_)))
               (_%E182554182594%_
                (lambda ()
                  (if (gx#stx-pair? _%e182553182563%_)
                      (let ((_%e182556182571%_
                             (gx#syntax-e _%e182553182563%_)))
                        (let ((_%hd182557182574%_ (##car _%e182556182571%_))
                              (_%tl182558182576%_ (##cdr _%e182556182571%_)))
                          (if (gx#stx-pair? _%tl182558182576%_)
                              (let ((_%e182559182579%_
                                     (gx#syntax-e _%tl182558182576%_)))
                                (let ((_%hd182560182582%_
                                       (##car _%e182559182579%_))
                                      (_%tl182561182584%_
                                       (##cdr _%e182559182579%_)))
                                  (let* ((_%hd182587%_ _%hd182560182582%_)
                                         (_%body182589%_ _%tl182561182584%_))
                                    (if (gx#core-expand-let-bind? _%hd182587%_)
                                        (let ((_%expressions182591%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _%hd182587%_)))
                                          (call-with-parameters__1
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _%hd182587%_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _%hd182587%_
                                                           _%expressions182591%_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%stx182552%_
                         _%body182589%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _%stx182552%_)))
                                           gx#current-expander-context
                                           (let ((__obj184079
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!__0
                                              __obj184079)
                                             __obj184079)))
                                        (_%E182555182567%_)))))
                              (_%E182555182567%_))))
                      (_%E182555182567%_)))))
          (_%E182554182594%_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_%stx182497%_ _%form182498%_)
        (let* ((_%e182499182509%_ _%stx182497%_)
               (_%E182501182513%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e182499182509%_)))
               (_%E182500182538%_
                (lambda ()
                  (if (gx#stx-pair? _%e182499182509%_)
                      (let ((_%e182502182517%_
                             (gx#syntax-e _%e182499182509%_)))
                        (let ((_%hd182503182520%_ (##car _%e182502182517%_))
                              (_%tl182504182522%_ (##cdr _%e182502182517%_)))
                          (if (gx#stx-pair? _%tl182504182522%_)
                              (let ((_%e182505182525%_
                                     (gx#syntax-e _%tl182504182522%_)))
                                (let ((_%hd182506182528%_
                                       (##car _%e182505182525%_))
                                      (_%tl182507182530%_
                                       (##cdr _%e182505182525%_)))
                                  (let* ((_%hd182533%_ _%hd182506182528%_)
                                         (_%body182535%_ _%tl182507182530%_))
                                    (if (gx#core-expand-let-bind? _%hd182533%_)
                                        (call-with-parameters__1
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _%hd182533%_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _%form182498%_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _%hd182533%_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _%hd182533%_))
                                                        (cons (gx#core-expand-local-block
                                                               _%stx182497%_
                                                               _%body182535%_)
                                                              '())))
                                            (gx#stx-source _%stx182497%_)))
                                         gx#current-expander-context
                                         (let ((__obj184080
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj184080)
                                           __obj184080))
                                        (_%E182501182513%_)))))
                              (_%E182501182513%_))))
                      (_%E182501182513%_)))))
          (_%E182500182538%_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_%stx182545%_)
        (let ((_%form182547%_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _%stx182545%_ _%form182547%_))))
    (define gx#core-expand-letrec-values%
      (lambda _g184099_
        (let ((_g184100_ (##length _g184099_)))
          (cond ((##fx= _g184100_ 1)
                 (apply gx#core-expand-letrec-values%__0 _g184099_))
                ((##fx= _g184100_ 2)
                 (apply gx#core-expand-letrec-values%__% _g184099_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g184099_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_%stx182494%_)
        (gx#core-expand-letrec-values%__% _%stx182494%_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_%stx182451%_)
        (if (gx#stx-list? _%stx182451%_)
            (gx#stx-andmap
             (lambda (_%bind182453%_)
               (let* ((_%e182454182464%_ _%bind182453%_)
                      (_%E182456182468%_ (lambda () '#f))
                      (_%E182455182490%_
                       (lambda ()
                         (if (gx#stx-pair? _%e182454182464%_)
                             (let ((_%e182457182472%_
                                    (gx#syntax-e _%e182454182464%_)))
                               (let ((_%hd182458182475%_
                                      (##car _%e182457182472%_))
                                     (_%tl182459182477%_
                                      (##cdr _%e182457182472%_)))
                                 (let ((_%hd182480%_ _%hd182458182475%_))
                                   (if (gx#stx-pair? _%tl182459182477%_)
                                       (let ((_%e182460182482%_
                                              (gx#syntax-e
                                               _%tl182459182477%_)))
                                         (let ((_%hd182461182485%_
                                                (##car _%e182460182482%_))
                                               (_%tl182462182487%_
                                                (##cdr _%e182460182482%_)))
                                           (if (gx#stx-null?
                                                _%tl182462182487%_)
                                               (gx#core-bind-values?
                                                _%hd182480%_)
                                               (_%E182456182468%_))))
                                       (_%E182456182468%_)))))
                             (_%E182456182468%_)))))
                 (_%E182455182490%_)))
             _%stx182451%_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_%bind182410%_)
        (let* ((_%e182411182421%_ _%bind182410%_)
               (_%E182413182425%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e182411182421%_)))
               (_%E182412182447%_
                (lambda ()
                  (if (gx#stx-pair? _%e182411182421%_)
                      (let ((_%e182414182429%_
                             (gx#syntax-e _%e182411182421%_)))
                        (let ((_%hd182415182432%_ (##car _%e182414182429%_))
                              (_%tl182416182434%_ (##cdr _%e182414182429%_)))
                          (if (gx#stx-pair? _%tl182416182434%_)
                              (let ((_%e182417182437%_
                                     (gx#syntax-e _%tl182416182434%_)))
                                (let ((_%hd182418182440%_
                                       (##car _%e182417182437%_))
                                      (_%tl182419182442%_
                                       (##cdr _%e182417182437%_)))
                                  (let ((_%expr182445%_ _%hd182418182440%_))
                                    (if (gx#stx-null? _%tl182419182442%_)
                                        (gx#core-expand-expression
                                         _%expr182445%_)
                                        (_%E182413182425%_)))))
                              (_%E182413182425%_))))
                      (_%E182413182425%_)))))
          (_%E182412182447%_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_%bind182369%_)
        (let* ((_%e182370182380%_ _%bind182369%_)
               (_%E182372182384%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e182370182380%_)))
               (_%E182371182406%_
                (lambda ()
                  (if (gx#stx-pair? _%e182370182380%_)
                      (let ((_%e182373182388%_
                             (gx#syntax-e _%e182370182380%_)))
                        (let ((_%hd182374182391%_ (##car _%e182373182388%_))
                              (_%tl182375182393%_ (##cdr _%e182373182388%_)))
                          (let ((_%hd182396%_ _%hd182374182391%_))
                            (if (gx#stx-pair? _%tl182375182393%_)
                                (let ((_%e182376182398%_
                                       (gx#syntax-e _%tl182375182393%_)))
                                  (let ((_%hd182377182401%_
                                         (##car _%e182376182398%_))
                                        (_%tl182378182403%_
                                         (##cdr _%e182376182398%_)))
                                    (if (gx#stx-null? _%tl182378182403%_)
                                        (gx#core-bind-values!__0 _%hd182396%_)
                                        (_%E182372182384%_))))
                                (_%E182372182384%_)))))
                      (_%E182372182384%_)))))
          (_%E182371182406%_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_%bind182327%_ _%expr182328%_)
        (let* ((_%e182329182339%_ _%bind182327%_)
               (_%E182331182343%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e182329182339%_)))
               (_%E182330182365%_
                (lambda ()
                  (if (gx#stx-pair? _%e182329182339%_)
                      (let ((_%e182332182347%_
                             (gx#syntax-e _%e182329182339%_)))
                        (let ((_%hd182333182350%_ (##car _%e182332182347%_))
                              (_%tl182334182352%_ (##cdr _%e182332182347%_)))
                          (let ((_%hd182355%_ _%hd182333182350%_))
                            (if (gx#stx-pair? _%tl182334182352%_)
                                (let ((_%e182335182357%_
                                       (gx#syntax-e _%tl182334182352%_)))
                                  (let ((_%hd182336182360%_
                                         (##car _%e182335182357%_))
                                        (_%tl182337182362%_
                                         (##cdr _%e182335182357%_)))
                                    (if (gx#stx-null? _%tl182337182362%_)
                                        (cons (gx#core-quote-bind-values
                                               _%hd182355%_)
                                              (cons _%expr182328%_ '()))
                                        (_%E182331182343%_))))
                                (_%E182331182343%_)))))
                      (_%E182331182343%_)))))
          (_%E182330182365%_))))
    (define gx#core-expand-let-syntax%
      (lambda (_%stx182281%_)
        (let* ((_%e182282182292%_ _%stx182281%_)
               (_%E182284182296%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e182282182292%_)))
               (_%E182283182323%_
                (lambda ()
                  (if (gx#stx-pair? _%e182282182292%_)
                      (let ((_%e182285182300%_
                             (gx#syntax-e _%e182282182292%_)))
                        (let ((_%hd182286182303%_ (##car _%e182285182300%_))
                              (_%tl182287182305%_ (##cdr _%e182285182300%_)))
                          (if (gx#stx-pair? _%tl182287182305%_)
                              (let ((_%e182288182308%_
                                     (gx#syntax-e _%tl182287182305%_)))
                                (let ((_%hd182289182311%_
                                       (##car _%e182288182308%_))
                                      (_%tl182290182313%_
                                       (##cdr _%e182288182308%_)))
                                  (let* ((_%hd182316%_ _%hd182289182311%_)
                                         (_%body182318%_ _%tl182290182313%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd182316%_)
                                        (let ((_%expanders182320%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _%hd182316%_)))
                                          (call-with-parameters__1
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _%hd182316%_
                                              _%expanders182320%_)
                                             (gx#core-expand-local-block
                                              _%stx182281%_
                                              _%body182318%_))
                                           gx#current-expander-context
                                           (let ((__obj184081
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!__0
                                              __obj184081)
                                             __obj184081)))
                                        (_%E182284182296%_)))))
                              (_%E182284182296%_))))
                      (_%E182284182296%_)))))
          (_%E182283182323%_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_%stx182230%_)
        (let* ((_%e182231182241%_ _%stx182230%_)
               (_%E182233182245%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e182231182241%_)))
               (_%E182232182277%_
                (lambda ()
                  (if (gx#stx-pair? _%e182231182241%_)
                      (let ((_%e182234182249%_
                             (gx#syntax-e _%e182231182241%_)))
                        (let ((_%hd182235182252%_ (##car _%e182234182249%_))
                              (_%tl182236182254%_ (##cdr _%e182234182249%_)))
                          (if (gx#stx-pair? _%tl182236182254%_)
                              (let ((_%e182237182257%_
                                     (gx#syntax-e _%tl182236182254%_)))
                                (let ((_%hd182238182260%_
                                       (##car _%e182237182257%_))
                                      (_%tl182239182262%_
                                       (##cdr _%e182237182257%_)))
                                  (let* ((_%hd182265%_ _%hd182238182260%_)
                                         (_%body182267%_ _%tl182239182262%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd182265%_)
                                        (call-with-parameters__1
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _%hd182265%_
                                            (make-list
                                             (gx#stx-length _%hd182265%_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_%g182269182272%_
                                                     _%g182270182274%_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _%g182269182272%_
                                               _%g182270182274%_
                                               '#t))
                                            _%hd182265%_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _%hd182265%_))
                                           (gx#core-expand-local-block
                                            _%stx182230%_
                                            _%body182267%_))
                                         gx#current-expander-context
                                         (let ((__obj184082
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj184082)
                                           __obj184082))
                                        (_%E182233182245%_)))))
                              (_%E182233182245%_))))
                      (_%E182233182245%_)))))
          (_%E182232182277%_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_%stx182187%_)
        (if (gx#stx-list? _%stx182187%_)
            (gx#stx-andmap
             (lambda (_%bind182189%_)
               (let* ((_%e182190182200%_ _%bind182189%_)
                      (_%E182192182204%_ (lambda () '#f))
                      (_%E182191182226%_
                       (lambda ()
                         (if (gx#stx-pair? _%e182190182200%_)
                             (let ((_%e182193182208%_
                                    (gx#syntax-e _%e182190182200%_)))
                               (let ((_%hd182194182211%_
                                      (##car _%e182193182208%_))
                                     (_%tl182195182213%_
                                      (##cdr _%e182193182208%_)))
                                 (let ((_%hd182216%_ _%hd182194182211%_))
                                   (if (gx#stx-pair? _%tl182195182213%_)
                                       (let ((_%e182196182218%_
                                              (gx#syntax-e
                                               _%tl182195182213%_)))
                                         (let ((_%hd182197182221%_
                                                (##car _%e182196182218%_))
                                               (_%tl182198182223%_
                                                (##cdr _%e182196182218%_)))
                                           (if (gx#stx-null?
                                                _%tl182198182223%_)
                                               (gx#identifier? _%hd182216%_)
                                               (_%E182192182204%_))))
                                       (_%E182192182204%_)))))
                             (_%E182192182204%_)))))
                 (_%E182191182226%_)))
             _%stx182187%_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_%bind182143%_)
        (let* ((_%e182144182154%_ _%bind182143%_)
               (_%E182146182158%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e182144182154%_)))
               (_%E182145182183%_
                (lambda ()
                  (if (gx#stx-pair? _%e182144182154%_)
                      (let ((_%e182147182162%_
                             (gx#syntax-e _%e182144182154%_)))
                        (let ((_%hd182148182165%_ (##car _%e182147182162%_))
                              (_%tl182149182167%_ (##cdr _%e182147182162%_)))
                          (if (gx#stx-pair? _%tl182149182167%_)
                              (let ((_%e182150182170%_
                                     (gx#syntax-e _%tl182149182167%_)))
                                (let ((_%hd182151182173%_
                                       (##car _%e182150182170%_))
                                      (_%tl182152182175%_
                                       (##cdr _%e182150182170%_)))
                                  (let ((_%expr182178%_ _%hd182151182173%_))
                                    (if (gx#stx-null? _%tl182152182175%_)
                                        (let ((_g184101_
                                               (gx#core-expand-expression+1
                                                _%expr182178%_)))
                                          (begin
                                            (let ((_g184102_
                                                   (if (##values? _g184101_)
                                                       (##values-length
                                                        _g184101_)
                                                       1)))
                                              (if (not (##fx= _g184102_ 2))
                                                  (error "Context expects 2 values"
                                                         _g184102_)))
                                            (let ((_%_182180%_
                                                   (##values-ref _g184101_ 0))
                                                  (_%e182181%_
                                                   (##values-ref _g184101_ 1)))
                                              _%e182181%_)))
                                        (_%E182146182158%_)))))
                              (_%E182146182158%_))))
                      (_%E182146182158%_)))))
          (_%E182145182183%_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_%bind182088%_ _%e182089%_ _%rebind?182090%_)
        (let* ((_%e182091182101%_ _%bind182088%_)
               (_%E182093182105%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e182091182101%_)))
               (_%E182092182127%_
                (lambda ()
                  (if (gx#stx-pair? _%e182091182101%_)
                      (let ((_%e182094182109%_
                             (gx#syntax-e _%e182091182101%_)))
                        (let ((_%hd182095182112%_ (##car _%e182094182109%_))
                              (_%tl182096182114%_ (##cdr _%e182094182109%_)))
                          (let ((_%id182117%_ _%hd182095182112%_))
                            (if (gx#stx-pair? _%tl182096182114%_)
                                (let ((_%e182097182119%_
                                       (gx#syntax-e _%tl182096182114%_)))
                                  (let ((_%hd182098182122%_
                                         (##car _%e182097182119%_))
                                        (_%tl182099182124%_
                                         (##cdr _%e182097182119%_)))
                                    (if (gx#stx-null? _%tl182099182124%_)
                                        (gx#core-bind-syntax!__1
                                         _%id182117%_
                                         _%e182089%_
                                         _%rebind?182090%_)
                                        (_%E182093182105%_))))
                                (_%E182093182105%_)))))
                      (_%E182093182105%_)))))
          (_%E182092182127%_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_%bind182134%_ _%e182135%_)
        (let ((_%rebind?182137%_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _%bind182134%_
           _%e182135%_
           _%rebind?182137%_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g184103_
        (let ((_g184104_ (##length _g184103_)))
          (cond ((##fx= _g184104_ 2)
                 (apply gx#core-expand-let-bind-syntax!__0 _g184103_))
                ((##fx= _g184104_ 3)
                 (apply gx#core-expand-let-bind-syntax!__% _g184103_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g184103_))))))
    (define gx#core-expand-expression%
      (lambda (_%stx182046%_)
        (let* ((_%e182047182057%_ _%stx182046%_)
               (_%E182049182061%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e182047182057%_)))
               (_%E182048182083%_
                (lambda ()
                  (if (gx#stx-pair? _%e182047182057%_)
                      (let ((_%e182050182065%_
                             (gx#syntax-e _%e182047182057%_)))
                        (let ((_%hd182051182068%_ (##car _%e182050182065%_))
                              (_%tl182052182070%_ (##cdr _%e182050182065%_)))
                          (if (gx#stx-pair? _%tl182052182070%_)
                              (let ((_%e182053182073%_
                                     (gx#syntax-e _%tl182052182070%_)))
                                (let ((_%hd182054182076%_
                                       (##car _%e182053182073%_))
                                      (_%tl182055182078%_
                                       (##cdr _%e182053182073%_)))
                                  (let ((_%expr182081%_ _%hd182054182076%_))
                                    (if (gx#stx-null? _%tl182055182078%_)
                                        (gx#core-expand-expression
                                         _%expr182081%_)
                                        (_%E182049182061%_)))))
                              (_%E182049182061%_))))
                      (_%E182049182061%_)))))
          (_%E182048182083%_))))
    (define gx#core-expand-quote%
      (lambda (_%stx182005%_)
        (let* ((_%e182006182016%_ _%stx182005%_)
               (_%E182008182020%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e182006182016%_)))
               (_%E182007182042%_
                (lambda ()
                  (if (gx#stx-pair? _%e182006182016%_)
                      (let ((_%e182009182024%_
                             (gx#syntax-e _%e182006182016%_)))
                        (let ((_%hd182010182027%_ (##car _%e182009182024%_))
                              (_%tl182011182029%_ (##cdr _%e182009182024%_)))
                          (if (gx#stx-pair? _%tl182011182029%_)
                              (let ((_%e182012182032%_
                                     (gx#syntax-e _%tl182011182029%_)))
                                (let ((_%hd182013182035%_
                                       (##car _%e182012182032%_))
                                      (_%tl182014182037%_
                                       (##cdr _%e182012182032%_)))
                                  (let ((_%e182040%_ _%hd182013182035%_))
                                    (if (gx#stx-null? _%tl182014182037%_)
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#quote)
                                               (cons (gx#syntax->datum
                                                      _%e182040%_)
                                                     '()))
                                         (gx#stx-source _%stx182005%_))
                                        (_%E182008182020%_)))))
                              (_%E182008182020%_))))
                      (_%E182008182020%_)))))
          (_%E182007182042%_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_%stx181964%_)
        (let* ((_%e181965181975%_ _%stx181964%_)
               (_%E181967181979%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e181965181975%_)))
               (_%E181966182001%_
                (lambda ()
                  (if (gx#stx-pair? _%e181965181975%_)
                      (let ((_%e181968181983%_
                             (gx#syntax-e _%e181965181975%_)))
                        (let ((_%hd181969181986%_ (##car _%e181968181983%_))
                              (_%tl181970181988%_ (##cdr _%e181968181983%_)))
                          (if (gx#stx-pair? _%tl181970181988%_)
                              (let ((_%e181971181991%_
                                     (gx#syntax-e _%tl181970181988%_)))
                                (let ((_%hd181972181994%_
                                       (##car _%e181971181991%_))
                                      (_%tl181973181996%_
                                       (##cdr _%e181971181991%_)))
                                  (let ((_%e181999%_ _%hd181972181994%_))
                                    (if (gx#stx-null? _%tl181973181996%_)
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#quote-syntax)
                                               (cons (gx#core-quote-syntax__0
                                                      _%e181999%_)
                                                     '()))
                                         (gx#stx-source _%stx181964%_))
                                        (_%E181967181979%_)))))
                              (_%E181967181979%_))))
                      (_%E181967181979%_)))))
          (_%E181966182001%_))))
    (define gx#core-expand-call%
      (lambda (_%stx181858%_)
        (letrec ((_%expand-runtime-call181860%_
                  (lambda (_%rator-expr181961%_ _%args181962%_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons*
                      '%#call
                      _%rator-expr181961%_
                      (gx#stx-map1 gx#core-expand-expression _%args181962%_))
                     (gx#stx-source _%stx181858%_)))))
          (let* ((_%e181861181871%_ _%stx181858%_)
                 (_%E181863181875%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e181861181871%_)))
                 (_%E181862181957%_
                  (lambda ()
                    (if (gx#stx-pair? _%e181861181871%_)
                        (let ((_%e181864181879%_
                               (gx#syntax-e _%e181861181871%_)))
                          (let ((_%hd181865181882%_ (##car _%e181864181879%_))
                                (_%tl181866181884%_ (##cdr _%e181864181879%_)))
                            (if (gx#stx-pair? _%tl181866181884%_)
                                (let ((_%e181867181887%_
                                       (gx#syntax-e _%tl181866181884%_)))
                                  (let ((_%hd181868181890%_
                                         (##car _%e181867181887%_))
                                        (_%tl181869181892%_
                                         (##cdr _%e181867181887%_)))
                                    (let* ((_%rator181895%_ _%hd181868181890%_)
                                           (_%args181897%_ _%tl181869181892%_))
                                      (if (gx#stx-list? _%args181897%_)
                                          (let* ((_%rator-expr181899%_
                                                  (gx#core-expand-expression
                                                   _%rator181895%_))
                                                 (_%e181900181910%_
                                                  _%rator-expr181899%_)
                                                 (_%E181902181914%_
                                                  (lambda ()
                                                    (_%expand-runtime-call181860%_
                                                     _%rator-expr181899%_
                                                     _%args181897%_)))
                                                 (_%E181901181953%_
                                                  (lambda ()
                                                    (if (gx#stx-pair?
                                                         _%e181900181910%_)
                                                        (let ((_%e181903181918%_
                                                               (gx#syntax-e
                                                                _%e181900181910%_)))
                                                          (let ((_%hd181904181921%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e181903181918%_))
                        (_%tl181905181923%_ (##cdr _%e181903181918%_)))
                    (if (and (gx#identifier? _%hd181904181921%_)
                             (gx#core-identifier=? _%hd181904181921%_ '%#ref))
                        (if (gx#stx-pair? _%tl181905181923%_)
                            (let ((_%e181906181926%_
                                   (gx#syntax-e _%tl181905181923%_)))
                              (let ((_%hd181907181929%_
                                     (##car _%e181906181926%_))
                                    (_%tl181908181931%_
                                     (##cdr _%e181906181926%_)))
                                (let ((_%id181934%_ _%hd181907181929%_))
                                  (if (gx#stx-null? _%tl181908181931%_)
                                      (let ((_%$e181936%_
                                             (gx#resolve-identifier__0
                                              _%id181934%_)))
                                        (if _%$e181936%_
                                            (let _%again181941%_ ((_%bind181943%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e181936%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_%$e181945%_
                                                     (if (##structure-instance-of?
                                                          _%bind181943%_
                                                          'gx#runtime-binding::t)
                                                         (##unchecked-structure-ref
                                                          _%bind181943%_
                                                          '6
                                                          '#f
                                                          '#f)
                                                         '#f)))
                                                (if _%$e181945%_
                                                    (gx#core-expand-expression
                                                     (gx#stx-wrap-source
                                                      (cons _%$e181945%_
                                                            _%args181897%_)
                                                      (gx#stx-source
                                                       _%stx181858%_)))
                                                    (if (##structure-direct-instance-of?
                                                         _%bind181943%_
                                                         'gx#import-binding::t)
                                                        (_%again181941%_
                                                         (##unchecked-structure-ref
                                                          _%bind181943%_
                                                          '5
                                                          '#f
                                                          '#f))
                                                        (_%expand-runtime-call181860%_
                                                         _%rator-expr181899%_
                                                         _%args181897%_)))))
                                            (_%expand-runtime-call181860%_
                                             _%rator-expr181899%_
                                             _%args181897%_)))
                                      (_%E181902181914%_)))))
                            (_%E181902181914%_))
                        (_%E181902181914%_))))
                (_%E181902181914%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E181901181953%_))
                                          (_%E181863181875%_)))))
                                (_%E181863181875%_))))
                        (_%E181863181875%_)))))
            (_%E181862181957%_)))))
    (define gx#core-expand-if%
      (lambda (_%stx181791%_)
        (let* ((_%e181792181808%_ _%stx181791%_)
               (_%E181794181812%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e181792181808%_)))
               (_%E181793181854%_
                (lambda ()
                  (if (gx#stx-pair? _%e181792181808%_)
                      (let ((_%e181795181816%_
                             (gx#syntax-e _%e181792181808%_)))
                        (let ((_%hd181796181819%_ (##car _%e181795181816%_))
                              (_%tl181797181821%_ (##cdr _%e181795181816%_)))
                          (if (gx#stx-pair? _%tl181797181821%_)
                              (let ((_%e181798181824%_
                                     (gx#syntax-e _%tl181797181821%_)))
                                (let ((_%hd181799181827%_
                                       (##car _%e181798181824%_))
                                      (_%tl181800181829%_
                                       (##cdr _%e181798181824%_)))
                                  (let ((_%test181832%_ _%hd181799181827%_))
                                    (if (gx#stx-pair? _%tl181800181829%_)
                                        (let ((_%e181801181834%_
                                               (gx#syntax-e
                                                _%tl181800181829%_)))
                                          (let ((_%hd181802181837%_
                                                 (##car _%e181801181834%_))
                                                (_%tl181803181839%_
                                                 (##cdr _%e181801181834%_)))
                                            (let ((_%K181842%_
                                                   _%hd181802181837%_))
                                              (if (gx#stx-pair?
                                                   _%tl181803181839%_)
                                                  (let ((_%e181804181844%_
                                                         (gx#syntax-e
                                                          _%tl181803181839%_)))
                                                    (let ((_%hd181805181847%_
                                                           (##car _%e181804181844%_))
                                                          (_%tl181806181849%_
                                                           (##cdr _%e181804181844%_)))
                                                      (let ((_%E181852%_
                                                             _%hd181805181847%_))
                                                        (if (gx#stx-null?
                                                             _%tl181806181849%_)
                                                            (gx#core-quote-syntax__1
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#if)
                           (cons (gx#core-expand-expression _%test181832%_)
                                 (cons (gx#core-expand-expression _%K181842%_)
                                       (cons (gx#core-expand-expression
                                              _%E181852%_)
                                             '()))))
                     (gx#stx-source _%stx181791%_))
                    (_%E181794181812%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E181794181812%_)))))
                                        (_%E181794181812%_)))))
                              (_%E181794181812%_))))
                      (_%E181794181812%_)))))
          (_%E181793181854%_))))
    (define gx#core-expand-ref%
      (lambda (_%stx181750%_)
        (let* ((_%e181751181761%_ _%stx181750%_)
               (_%E181753181765%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e181751181761%_)))
               (_%E181752181787%_
                (lambda ()
                  (if (gx#stx-pair? _%e181751181761%_)
                      (let ((_%e181754181769%_
                             (gx#syntax-e _%e181751181761%_)))
                        (let ((_%hd181755181772%_ (##car _%e181754181769%_))
                              (_%tl181756181774%_ (##cdr _%e181754181769%_)))
                          (if (gx#stx-pair? _%tl181756181774%_)
                              (let ((_%e181757181777%_
                                     (gx#syntax-e _%tl181756181774%_)))
                                (let ((_%hd181758181780%_
                                       (##car _%e181757181777%_))
                                      (_%tl181759181782%_
                                       (##cdr _%e181757181777%_)))
                                  (let ((_%id181785%_ _%hd181758181780%_))
                                    (if (gx#stx-null? _%tl181759181782%_)
                                        (if (gx#identifier? _%id181785%_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _%id181785%_
                                                          _%stx181750%_)
                                                         '()))
                                             (gx#stx-source _%stx181750%_))
                                            (_%E181753181765%_))
                                        (_%E181753181765%_)))))
                              (_%E181753181765%_))))
                      (_%E181753181765%_)))))
          (_%E181752181787%_))))
    (define gx#core-expand-setq%
      (lambda (_%stx181696%_)
        (let* ((_%e181697181710%_ _%stx181696%_)
               (_%E181699181714%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e181697181710%_)))
               (_%E181698181746%_
                (lambda ()
                  (if (gx#stx-pair? _%e181697181710%_)
                      (let ((_%e181700181718%_
                             (gx#syntax-e _%e181697181710%_)))
                        (let ((_%hd181701181721%_ (##car _%e181700181718%_))
                              (_%tl181702181723%_ (##cdr _%e181700181718%_)))
                          (if (gx#stx-pair? _%tl181702181723%_)
                              (let ((_%e181703181726%_
                                     (gx#syntax-e _%tl181702181723%_)))
                                (let ((_%hd181704181729%_
                                       (##car _%e181703181726%_))
                                      (_%tl181705181731%_
                                       (##cdr _%e181703181726%_)))
                                  (let ((_%id181734%_ _%hd181704181729%_))
                                    (if (gx#stx-pair? _%tl181705181731%_)
                                        (let ((_%e181706181736%_
                                               (gx#syntax-e
                                                _%tl181705181731%_)))
                                          (let ((_%hd181707181739%_
                                                 (##car _%e181706181736%_))
                                                (_%tl181708181741%_
                                                 (##cdr _%e181706181736%_)))
                                            (let ((_%expr181744%_
                                                   _%hd181707181739%_))
                                              (if (gx#stx-null?
                                                   _%tl181708181741%_)
                                                  (if (gx#identifier?
                                                       _%id181734%_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%id181734%_
                            _%stx181696%_)
                           (cons (gx#core-expand-expression _%expr181744%_)
                                 '())))
               (gx#stx-source _%stx181696%_))
              (_%E181699181714%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E181699181714%_)))))
                                        (_%E181699181714%_)))))
                              (_%E181699181714%_))))
                      (_%E181699181714%_)))))
          (_%E181698181746%_))))
    (define gx#macro-expand-extern
      (lambda (_%stx181541%_)
        (letrec ((_%generate181543%_
                  (lambda (_%body181573%_)
                    (let _%lp181575%_ ((_%rest181577%_ _%body181573%_)
                                       (_%ns181578%_
                                        (gx#core-context-namespace__0))
                                       (_%r181579%_ '()))
                      (let* ((_%e181580181595%_ _%rest181577%_)
                             (_%E181593181599%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _%e181580181595%_)))
                             (_%E181589181603%_
                              (lambda ()
                                (if (gx#stx-null? _%e181580181595%_)
                                    (reverse _%r181579%_)
                                    (_%E181593181599%_))))
                             (_%E181582181660%_
                              (lambda ()
                                (if (gx#stx-pair? _%e181580181595%_)
                                    (let ((_%e181590181607%_
                                           (gx#syntax-e _%e181580181595%_)))
                                      (let ((_%hd181591181610%_
                                             (##car _%e181590181607%_))
                                            (_%tl181592181612%_
                                             (##cdr _%e181590181607%_)))
                                        (let* ((_%hd181615%_
                                                _%hd181591181610%_)
                                               (_%rest181617%_
                                                _%tl181592181612%_))
                                          (if (gx#identifier? _%hd181615%_)
                                              (_%lp181575%_
                                               _%rest181617%_
                                               _%ns181578%_
                                               (cons (cons _%hd181615%_
                                                           (cons (if _%ns181578%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-identifier
                              _%hd181615%_
                              _%ns181578%_
                              '"#"
                              _%hd181615%_)
                             _%hd181615%_)
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r181579%_))
                                              (let* ((_%e181618181628%_
                                                      _%hd181615%_)
                                                     (_%E181620181632%_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid syntax-case clause"
                                                         _%e181618181628%_)))
                                                     (_%E181619181656%_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _%e181618181628%_)
                                                            (let ((_%e181621181636%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%e181618181628%_)))
                      (let ((_%hd181622181639%_ (##car _%e181621181636%_))
                            (_%tl181623181641%_ (##cdr _%e181621181636%_)))
                        (let ((_%id181644%_ _%hd181622181639%_))
                          (if (gx#stx-pair? _%tl181623181641%_)
                              (let ((_%e181624181646%_
                                     (gx#syntax-e _%tl181623181641%_)))
                                (let ((_%hd181625181649%_
                                       (##car _%e181624181646%_))
                                      (_%tl181626181651%_
                                       (##cdr _%e181624181646%_)))
                                  (let ((_%eid181654%_ _%hd181625181649%_))
                                    (if (gx#stx-null? _%tl181626181651%_)
                                        (if (and (gx#identifier? _%id181644%_)
                                                 (gx#identifier?
                                                  _%eid181654%_))
                                            (_%lp181575%_
                                             _%rest181617%_
                                             _%ns181578%_
                                             (cons (cons _%id181644%_
                                                         (cons _%eid181654%_
                                                               '()))
                                                   _%r181579%_))
                                            (_%E181620181632%_))
                                        (_%E181620181632%_)))))
                              (_%E181620181632%_)))))
                    (_%E181620181632%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E181619181656%_))))))
                                    (_%E181589181603%_))))
                             (_%E181581181692%_
                              (lambda ()
                                (if (gx#stx-pair? _%e181580181595%_)
                                    (let ((_%e181583181664%_
                                           (gx#syntax-e _%e181580181595%_)))
                                      (let ((_%hd181584181667%_
                                             (##car _%e181583181664%_))
                                            (_%tl181585181669%_
                                             (##cdr _%e181583181664%_)))
                                        (if (eq? (gx#stx-e _%hd181584181667%_)
                                                 'namespace:)
                                            (if (gx#stx-pair?
                                                 _%tl181585181669%_)
                                                (let ((_%e181586181672%_
                                                       (gx#syntax-e
                                                        _%tl181585181669%_)))
                                                  (let ((_%hd181587181675%_
                                                         (##car _%e181586181672%_))
                                                        (_%tl181588181677%_
                                                         (##cdr _%e181586181672%_)))
                                                    (let* ((_%ns181680%_
                                                            _%hd181587181675%_)
                                                           (_%rest181682%_
                                                            _%tl181588181677%_)
                                                           (_%ns181690%_
                                                            (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%ns181680%_)
                        (symbol->string (gx#stx-e _%ns181680%_))
                        (if (or (gx#stx-string? _%ns181680%_)
                                (gx#stx-false? _%ns181680%_))
                            (gx#stx-e _%ns181680%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; extern expects namespace identifier"
                             _%stx181541%_
                             _%ns181680%_)))))
              (_%lp181575%_ _%rest181682%_ _%ns181690%_ _%r181579%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E181582181660%_))
                                            (_%E181582181660%_))))
                                    (_%E181582181660%_)))))
                        (_%E181581181692%_))))))
          (let* ((_%e181544181551%_ _%stx181541%_)
                 (_%E181546181555%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e181544181551%_)))
                 (_%E181545181569%_
                  (lambda ()
                    (if (gx#stx-pair? _%e181544181551%_)
                        (let ((_%e181547181559%_
                               (gx#syntax-e _%e181544181551%_)))
                          (let ((_%hd181548181562%_ (##car _%e181547181559%_))
                                (_%tl181549181564%_ (##cdr _%e181547181559%_)))
                            (let ((_%body181567%_ _%tl181549181564%_))
                              (if (gx#stx-list? _%body181567%_)
                                  (gx#core-cons
                                   '%#extern
                                   (_%generate181543%_ _%body181567%_))
                                  (_%E181546181555%_)))))
                        (_%E181546181555%_)))))
            (_%E181545181569%_)))))
    (define gx#macro-expand-lambda%
      (lambda (_%stx181498%_)
        (let* ((_%e181499181509%_ _%stx181498%_)
               (_%E181501181513%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e181499181509%_)))
               (_%E181500181537%_
                (lambda ()
                  (if (gx#stx-pair? _%e181499181509%_)
                      (let ((_%e181502181517%_
                             (gx#syntax-e _%e181499181509%_)))
                        (let ((_%hd181503181520%_ (##car _%e181502181517%_))
                              (_%tl181504181522%_ (##cdr _%e181502181517%_)))
                          (if (gx#stx-pair? _%tl181504181522%_)
                              (let ((_%e181505181525%_
                                     (gx#syntax-e _%tl181504181522%_)))
                                (let ((_%hd181506181528%_
                                       (##car _%e181505181525%_))
                                      (_%tl181507181530%_
                                       (##cdr _%e181505181525%_)))
                                  (let* ((_%hd181533%_ _%hd181506181528%_)
                                         (_%body181535%_ _%tl181507181530%_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _%hd181533%_)
                                             (gx#stx-list? _%body181535%_)
                                             (not (gx#stx-null?
                                                   _%body181535%_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1 identity _%hd181533%_)
                                         _%body181535%_)
                                        (_%E181501181513%_)))))
                              (_%E181501181513%_))))
                      (_%E181501181513%_)))))
          (_%E181500181537%_))))
    (define gx#macro-expand-case-lambda
      (lambda (_%stx181434%_)
        (letrec ((_%generate181436%_
                  (lambda (_%clause181466%_)
                    (let* ((_%e181467181474%_ _%clause181466%_)
                           (_%E181469181478%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _%stx181434%_
                               _%clause181466%_)))
                           (_%E181468181494%_
                            (lambda ()
                              (if (gx#stx-pair? _%e181467181474%_)
                                  (let ((_%e181470181482%_
                                         (gx#syntax-e _%e181467181474%_)))
                                    (let ((_%hd181471181485%_
                                           (##car _%e181470181482%_))
                                          (_%tl181472181487%_
                                           (##cdr _%e181470181482%_)))
                                      (let* ((_%hd181490%_ _%hd181471181485%_)
                                             (_%body181492%_
                                              _%tl181472181487%_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _%hd181490%_)
                                                 (gx#stx-list? _%body181492%_)
                                                 (not (gx#stx-null?
                                                       _%body181492%_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    identity
                                                    _%hd181490%_)
                                                   _%body181492%_)
                                             (gx#stx-source _%clause181466%_))
                                            (_%E181469181478%_)))))
                                  (_%E181469181478%_)))))
                      (_%E181468181494%_)))))
          (let* ((_%e181437181444%_ _%stx181434%_)
                 (_%E181439181448%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e181437181444%_)))
                 (_%E181438181462%_
                  (lambda ()
                    (if (gx#stx-pair? _%e181437181444%_)
                        (let ((_%e181440181452%_
                               (gx#syntax-e _%e181437181444%_)))
                          (let ((_%hd181441181455%_ (##car _%e181440181452%_))
                                (_%tl181442181457%_ (##cdr _%e181440181452%_)))
                            (let ((_%clauses181460%_ _%tl181442181457%_))
                              (if (gx#stx-list? _%clauses181460%_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _%generate181436%_
                                    _%clauses181460%_))
                                  (_%E181439181448%_)))))
                        (_%E181439181448%_)))))
            (_%E181438181462%_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_%stx181335%_ _%form181336%_)
        (letrec ((_%generate181338%_
                  (lambda (_%bind181381%_)
                    (let* ((_%e181382181392%_ _%bind181381%_)
                           (_%E181384181396%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _%stx181335%_
                               _%bind181381%_)))
                           (_%E181383181420%_
                            (lambda ()
                              (if (gx#stx-pair? _%e181382181392%_)
                                  (let ((_%e181385181400%_
                                         (gx#syntax-e _%e181382181392%_)))
                                    (let ((_%hd181386181403%_
                                           (##car _%e181385181400%_))
                                          (_%tl181387181405%_
                                           (##cdr _%e181385181400%_)))
                                      (let ((_%ids181408%_ _%hd181386181403%_))
                                        (if (gx#stx-pair? _%tl181387181405%_)
                                            (let ((_%e181388181410%_
                                                   (gx#syntax-e
                                                    _%tl181387181405%_)))
                                              (let ((_%hd181389181413%_
                                                     (##car _%e181388181410%_))
                                                    (_%tl181390181415%_
                                                     (##cdr _%e181388181410%_)))
                                                (let ((_%expr181418%_
                                                       _%hd181389181413%_))
                                                  (if (gx#stx-null?
                                                       _%tl181390181415%_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _%ids181408%_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         identity
                         _%ids181408%_)
                        (cons _%expr181418%_ '()))
                  (_%E181384181396%_))
              (_%E181384181396%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E181384181396%_)))))
                                  (_%E181384181396%_)))))
                      (_%E181383181420%_)))))
          (let* ((_%e181339181349%_ _%stx181335%_)
                 (_%E181341181353%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e181339181349%_)))
                 (_%E181340181377%_
                  (lambda ()
                    (if (gx#stx-pair? _%e181339181349%_)
                        (let ((_%e181342181357%_
                               (gx#syntax-e _%e181339181349%_)))
                          (let ((_%hd181343181360%_ (##car _%e181342181357%_))
                                (_%tl181344181362%_ (##cdr _%e181342181357%_)))
                            (if (gx#stx-pair? _%tl181344181362%_)
                                (let ((_%e181345181365%_
                                       (gx#syntax-e _%tl181344181362%_)))
                                  (let ((_%hd181346181368%_
                                         (##car _%e181345181365%_))
                                        (_%tl181347181370%_
                                         (##cdr _%e181345181365%_)))
                                    (let* ((_%hd181373%_ _%hd181346181368%_)
                                           (_%body181375%_ _%tl181347181370%_))
                                      (if (and (gx#stx-list? _%hd181373%_)
                                               (gx#stx-list? _%body181375%_)
                                               (not (gx#stx-null?
                                                     _%body181375%_)))
                                          (gx#core-cons*
                                           _%form181336%_
                                           (gx#stx-map1
                                            _%generate181338%_
                                            _%hd181373%_)
                                           _%body181375%_)
                                          (_%E181341181353%_)))))
                                (_%E181341181353%_))))
                        (_%E181341181353%_)))))
            (_%E181340181377%_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_%stx181427%_)
        (let ((_%form181429%_ '%#let-values))
          (gx#macro-expand-let-values__% _%stx181427%_ _%form181429%_))))
    (define gx#macro-expand-let-values
      (lambda _g184105_
        (let ((_g184106_ (##length _g184105_)))
          (cond ((##fx= _g184106_ 1)
                 (apply gx#macro-expand-let-values__0 _g184105_))
                ((##fx= _g184106_ 2)
                 (apply gx#macro-expand-let-values__% _g184105_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g184105_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_%stx181332%_)
        (gx#macro-expand-let-values__% _%stx181332%_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_%stx181330%_)
        (gx#macro-expand-let-values__% _%stx181330%_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_%stx181221%_)
        (let* ((_%e181222181248%_ _%stx181221%_)
               (_%E181234181252%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e181222181248%_)))
               (_%E181224181294%_
                (lambda ()
                  (if (gx#stx-pair? _%e181222181248%_)
                      (let ((_%e181235181256%_
                             (gx#syntax-e _%e181222181248%_)))
                        (let ((_%hd181236181259%_ (##car _%e181235181256%_))
                              (_%tl181237181261%_ (##cdr _%e181235181256%_)))
                          (if (gx#stx-pair? _%tl181237181261%_)
                              (let ((_%e181238181264%_
                                     (gx#syntax-e _%tl181237181261%_)))
                                (let ((_%hd181239181267%_
                                       (##car _%e181238181264%_))
                                      (_%tl181240181269%_
                                       (##cdr _%e181238181264%_)))
                                  (let ((_%test181272%_ _%hd181239181267%_))
                                    (if (gx#stx-pair? _%tl181240181269%_)
                                        (let ((_%e181241181274%_
                                               (gx#syntax-e
                                                _%tl181240181269%_)))
                                          (let ((_%hd181242181277%_
                                                 (##car _%e181241181274%_))
                                                (_%tl181243181279%_
                                                 (##cdr _%e181241181274%_)))
                                            (let ((_%K181282%_
                                                   _%hd181242181277%_))
                                              (if (gx#stx-pair?
                                                   _%tl181243181279%_)
                                                  (let ((_%e181244181284%_
                                                         (gx#syntax-e
                                                          _%tl181243181279%_)))
                                                    (let ((_%hd181245181287%_
                                                           (##car _%e181244181284%_))
                                                          (_%tl181246181289%_
                                                           (##cdr _%e181244181284%_)))
                                                      (let ((_%E181292%_
                                                             _%hd181245181287%_))
                                                        (if (gx#stx-null?
                                                             _%tl181246181289%_)
                                                            (gx#core-list
                                                             '%#if
                                                             _%test181272%_
                                                             _%K181282%_
                                                             _%E181292%_)
                                                            (_%E181234181252%_)))))
                                                  (_%E181234181252%_)))))
                                        (_%E181234181252%_)))))
                              (_%E181234181252%_))))
                      (_%E181234181252%_))))
               (_%E181223181326%_
                (lambda ()
                  (if (gx#stx-pair? _%e181222181248%_)
                      (let ((_%e181225181298%_
                             (gx#syntax-e _%e181222181248%_)))
                        (let ((_%hd181226181301%_ (##car _%e181225181298%_))
                              (_%tl181227181303%_ (##cdr _%e181225181298%_)))
                          (if (gx#stx-pair? _%tl181227181303%_)
                              (let ((_%e181228181306%_
                                     (gx#syntax-e _%tl181227181303%_)))
                                (let ((_%hd181229181309%_
                                       (##car _%e181228181306%_))
                                      (_%tl181230181311%_
                                       (##cdr _%e181228181306%_)))
                                  (let ((_%test181314%_ _%hd181229181309%_))
                                    (if (gx#stx-pair? _%tl181230181311%_)
                                        (let ((_%e181231181316%_
                                               (gx#syntax-e
                                                _%tl181230181311%_)))
                                          (let ((_%hd181232181319%_
                                                 (##car _%e181231181316%_))
                                                (_%tl181233181321%_
                                                 (##cdr _%e181231181316%_)))
                                            (let ((_%K181324%_
                                                   _%hd181232181319%_))
                                              (if (gx#stx-null?
                                                   _%tl181233181321%_)
                                                  (gx#core-list
                                                   '%#if
                                                   _%test181314%_
                                                   _%K181324%_
                                                   '#!void)
                                                  (_%E181224181294%_)))))
                                        (_%E181224181294%_)))))
                              (_%E181224181294%_))))
                      (_%E181224181294%_)))))
          (_%E181223181326%_))))
    (define gx#free-identifier=?
      (lambda (_%xid181206%_ _%yid181207%_)
        (let ((_%xe181209%_ (gx#resolve-identifier__0 _%xid181206%_))
              (_%ye181210%_ (gx#resolve-identifier__0 _%yid181207%_)))
          (if (and _%xe181209%_ _%ye181210%_)
              (let ((_%$e181213%_ (eq? _%xe181209%_ _%ye181210%_)))
                (if _%$e181213%_
                    _%$e181213%_
                    (if (##structure-instance-of? _%xe181209%_ 'gx#binding::t)
                        (if (##structure-instance-of?
                             _%ye181210%_
                             'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _%xe181209%_
                                  '1
                                  '#f
                                  '#f)
                                 (##unchecked-structure-ref
                                  _%ye181210%_
                                  '1
                                  '#f
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _%xe181209%_ _%ye181210%_)
                  '#f
                  (gx#stx-eq? _%xid181206%_ _%yid181207%_))))))
    (define gx#bound-identifier=?
      (lambda (_%xid181187%_ _%yid181188%_)
        (letrec ((_%context181190%_
                  (lambda (_%e181204%_)
                    (if (##structure-direct-instance-of?
                         _%e181204%_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref _%e181204%_ '3 '#f '#f)
                        (gx#current-expander-context))))
                 (_%marks181191%_
                  (lambda (_%e181199%_)
                    (if (symbol? _%e181199%_)
                        '()
                        (if (##structure-direct-instance-of?
                             _%e181199%_
                             'gx#identifier-wrap::t)
                            (##unchecked-structure-ref _%e181199%_ '3 '#f '#f)
                            (##unchecked-structure-ref
                             _%e181199%_
                             '4
                             '#f
                             '#f)))))
                 (_%unwrap181192%_
                  (lambda (_%e181197%_)
                    (if (symbol? _%e181197%_)
                        _%e181197%_
                        (gx#syntax-local-unwrap _%e181197%_)))))
          (let ((_%x181194%_ (_%unwrap181192%_ _%xid181187%_))
                (_%y181195%_ (_%unwrap181192%_ _%yid181188%_)))
            (if (gx#stx-eq? _%x181194%_ _%y181195%_)
                (if (eq? (_%context181190%_ _%x181194%_)
                         (_%context181190%_ _%y181195%_))
                    (equal? (_%marks181191%_ _%x181194%_)
                            (_%marks181191%_ _%y181195%_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_%stx181185%_)
        (if (gx#identifier? _%stx181185%_)
            (gx#core-identifier=? _%stx181185%_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_%stx181183%_)
        (if (gx#identifier? _%stx181183%_)
            (gx#core-identifier=? _%stx181183%_ '...)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_%stx181126%_ _%where181127%_)
        (let _%lp181129%_ ((_%rest181131%_ (gx#syntax->list _%stx181126%_)))
          (let* ((_%rest181132181140%_ _%rest181131%_)
                 (_%else181134181148%_ (lambda () '#t))
                 (_%K181136181161%_
                  (lambda (_%rest181151%_ _%hd181152%_)
                    (if (gx#identifier? _%hd181152%_)
                        (if (__find (lambda (_%g181154181156%_)
                                      (gx#bound-identifier=?
                                       _%g181154181156%_
                                       _%hd181152%_))
                                    _%rest181151%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _%where181127%_
                             _%hd181152%_)
                            (_%lp181129%_ _%rest181151%_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _%where181127%_
                         _%hd181152%_)))))
            (if (pair? _%rest181132181140%_)
                (let ((_%hd181137181164%_ (##car _%rest181132181140%_))
                      (_%tl181138181166%_ (##cdr _%rest181132181140%_)))
                  (let* ((_%hd181169%_ _%hd181137181164%_)
                         (_%rest181171%_ _%tl181138181166%_))
                    (_%K181136181161%_ _%rest181171%_ _%hd181169%_)))
                (_%else181134181148%_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_%stx181176%_)
        (let ((_%where181178%_ _%stx181176%_))
          (gx#check-duplicate-identifiers__% _%stx181176%_ _%where181178%_))))
    (define gx#check-duplicate-identifiers
      (lambda _g184107_
        (let ((_g184108_ (##length _g184107_)))
          (cond ((##fx= _g184108_ 1)
                 (apply gx#check-duplicate-identifiers__0 _g184107_))
                ((##fx= _g184108_ 2)
                 (apply gx#check-duplicate-identifiers__% _g184107_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g184107_))))))
    (define gx#core-bind-values?
      (lambda (_%stx181118%_)
        (gx#stx-andmap
         (lambda (_%x181120%_)
           (let ((_%$e181122%_ (gx#identifier? _%x181120%_)))
             (if _%$e181122%_ _%$e181122%_ (gx#stx-false? _%x181120%_))))
         _%stx181118%_)))
    (define gx#core-bind-values!__%
      (lambda (_%stx181082%_ _%rebind?181083%_ _%phi181084%_ _%ctx181085%_)
        (gx#stx-for-each1
         (lambda (_%id181087%_)
           (if (gx#identifier? _%id181087%_)
               (gx#core-bind-runtime!__%
                _%id181087%_
                _%rebind?181083%_
                _%phi181084%_
                _%ctx181085%_)
               '#!void))
         _%stx181082%_)))
    (define gx#core-bind-values!__0
      (lambda (_%stx181092%_)
        (let* ((_%rebind?181094%_ '#f)
               (_%phi181096%_ (gx#current-expander-phi))
               (_%ctx181098%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx181092%_
           _%rebind?181094%_
           _%phi181096%_
           _%ctx181098%_))))
    (define gx#core-bind-values!__1
      (lambda (_%stx181100%_ _%rebind?181101%_)
        (let* ((_%phi181103%_ (gx#current-expander-phi))
               (_%ctx181105%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx181100%_
           _%rebind?181101%_
           _%phi181103%_
           _%ctx181105%_))))
    (define gx#core-bind-values!__2
      (lambda (_%stx181107%_ _%rebind?181108%_ _%phi181109%_)
        (let ((_%ctx181111%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx181107%_
           _%rebind?181108%_
           _%phi181109%_
           _%ctx181111%_))))
    (define gx#core-bind-values!
      (lambda _g184109_
        (let ((_g184110_ (##length _g184109_)))
          (cond ((##fx= _g184110_ 1) (apply gx#core-bind-values!__0 _g184109_))
                ((##fx= _g184110_ 2) (apply gx#core-bind-values!__1 _g184109_))
                ((##fx= _g184110_ 3) (apply gx#core-bind-values!__2 _g184109_))
                ((##fx= _g184110_ 4) (apply gx#core-bind-values!__% _g184109_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g184109_))))))
    (define gx#core-quote-bind-values
      (lambda (_%stx181077%_)
        (gx#stx-map1
         (lambda (_%x181079%_)
           (if (gx#identifier? _%x181079%_)
               (gx#core-quote-syntax__0 _%x181079%_)
               '#f))
         _%stx181077%_)))
    (define gx#core-runtime-ref?
      (lambda (_%stx181070%_)
        (if (gx#identifier? _%stx181070%_)
            (let* ((_%bind181072%_ (gx#resolve-identifier__0 _%stx181070%_))
                   (_%$e181074%_ (not _%bind181072%_)))
              (if _%$e181074%_
                  _%$e181074%_
                  (##structure-instance-of?
                   _%bind181072%_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_%id181059%_ _%form181060%_)
        (let ((_%bind181062%_ (gx#resolve-identifier__0 _%id181059%_)))
          (if (##structure-instance-of? _%bind181062%_ 'gx#runtime-binding::t)
              (gx#core-quote-syntax__0 _%id181059%_)
              (if (not _%bind181062%_)
                  (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                          (gx#core-extern-symbol? (gx#stx-e _%id181059%_)))
                      (gx#core-quote-syntax__0 _%id181059%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Reference to unbound identifier"
                       _%form181060%_
                       _%id181059%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; not a runtime binding"
                   _%form181060%_
                   _%id181059%_))))))
    (define gx#core-bind-runtime!__%
      (lambda (_%id181014%_ _%rebind?181015%_ _%phi181016%_ _%ctx181017%_)
        (let* ((_%key181019%_ (gx#core-identifier-key _%id181014%_))
               (_%eid181021%_
                (gx#make-binding-id__%
                 _%key181019%_
                 '#f
                 _%phi181016%_
                 _%ctx181017%_))
               (_%bind181027%_
                (if (##structure-instance-of?
                     _%ctx181017%_
                     'gx#module-context::t)
                    (let ((__obj184086
                           (##structure
                            gx#module-binding::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#module-binding:::init!
                       __obj184086
                       _%eid181021%_
                       _%key181019%_
                       _%phi181016%_
                       _%ctx181017%_)
                      __obj184086)
                    (if (##structure-instance-of?
                         _%ctx181017%_
                         'gx#top-context::t)
                        (let ((__obj184085
                               (##structure
                                gx#top-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#top-binding:::init!
                           __obj184085
                           _%eid181021%_
                           _%key181019%_
                           _%phi181016%_)
                          __obj184085)
                        (if (##structure-instance-of?
                             _%ctx181017%_
                             'gx#local-context::t)
                            (let ((__obj184084
                                   (##structure
                                    gx#local-binding::t
                                    '#f
                                    '#f
                                    '#f
                                    '#f
                                    '#f
                                    '#f)))
                              (gx#local-binding:::init!
                               __obj184084
                               _%eid181021%_
                               _%key181019%_
                               _%phi181016%_)
                              __obj184084)
                            (let ((__obj184083
                                   (##structure
                                    gx#runtime-binding::t
                                    '#f
                                    '#f
                                    '#f
                                    '#f
                                    '#f
                                    '#f)))
                              (gx#runtime-binding:::init!
                               __obj184083
                               _%eid181021%_
                               _%key181019%_
                               _%phi181016%_)
                              __obj184083))))))
          (gx#bind-identifier!__%
           _%id181014%_
           _%bind181027%_
           _%rebind?181015%_
           _%phi181016%_
           _%ctx181017%_))))
    (define gx#core-bind-runtime!__0
      (lambda (_%id181033%_)
        (let* ((_%rebind?181035%_ '#f)
               (_%phi181037%_ (gx#current-expander-phi))
               (_%ctx181039%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id181033%_
           _%rebind?181035%_
           _%phi181037%_
           _%ctx181039%_))))
    (define gx#core-bind-runtime!__1
      (lambda (_%id181041%_ _%rebind?181042%_)
        (let* ((_%phi181044%_ (gx#current-expander-phi))
               (_%ctx181046%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id181041%_
           _%rebind?181042%_
           _%phi181044%_
           _%ctx181046%_))))
    (define gx#core-bind-runtime!__2
      (lambda (_%id181048%_ _%rebind?181049%_ _%phi181050%_)
        (let ((_%ctx181052%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id181048%_
           _%rebind?181049%_
           _%phi181050%_
           _%ctx181052%_))))
    (define gx#core-bind-runtime!
      (lambda _g184111_
        (let ((_g184112_ (##length _g184111_)))
          (cond ((##fx= _g184112_ 1)
                 (apply gx#core-bind-runtime!__0 _g184111_))
                ((##fx= _g184112_ 2)
                 (apply gx#core-bind-runtime!__1 _g184111_))
                ((##fx= _g184112_ 3)
                 (apply gx#core-bind-runtime!__2 _g184111_))
                ((##fx= _g184112_ 4)
                 (apply gx#core-bind-runtime!__% _g184111_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g184111_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_%id180966%_
               _%eid180967%_
               _%rebind?180968%_
               _%phi180969%_
               _%ctx180970%_)
        (let* ((_%key180972%_ (gx#core-identifier-key _%id180966%_))
               (_%bind180977%_
                (if (##structure-instance-of?
                     _%ctx180970%_
                     'gx#module-context::t)
                    (let ((__obj184089
                           (##structure
                            gx#module-binding::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#module-binding:::init!
                       __obj184089
                       _%eid180967%_
                       _%key180972%_
                       _%phi180969%_
                       _%ctx180970%_)
                      __obj184089)
                    (if (##structure-instance-of?
                         _%ctx180970%_
                         'gx#top-context::t)
                        (let ((__obj184088
                               (##structure
                                gx#top-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#top-binding:::init!
                           __obj184088
                           _%eid180967%_
                           _%key180972%_
                           _%phi180969%_)
                          __obj184088)
                        (let ((__obj184087
                               (##structure
                                gx#runtime-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#runtime-binding:::init!
                           __obj184087
                           _%eid180967%_
                           _%key180972%_
                           _%phi180969%_)
                          __obj184087)))))
          (gx#bind-identifier!__%
           _%id180966%_
           _%bind180977%_
           _%rebind?180968%_
           _%phi180969%_
           _%ctx180970%_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_%id180983%_ _%eid180984%_)
        (let* ((_%rebind?180986%_ '#f)
               (_%phi180988%_ (gx#current-expander-phi))
               (_%ctx180990%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id180983%_
           _%eid180984%_
           _%rebind?180986%_
           _%phi180988%_
           _%ctx180990%_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_%id180992%_ _%eid180993%_ _%rebind?180994%_)
        (let* ((_%phi180996%_ (gx#current-expander-phi))
               (_%ctx180998%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id180992%_
           _%eid180993%_
           _%rebind?180994%_
           _%phi180996%_
           _%ctx180998%_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_%id181000%_ _%eid181001%_ _%rebind?181002%_ _%phi181003%_)
        (let ((_%ctx181005%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id181000%_
           _%eid181001%_
           _%rebind?181002%_
           _%phi181003%_
           _%ctx181005%_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g184113_
        (let ((_g184114_ (##length _g184113_)))
          (cond ((##fx= _g184114_ 2)
                 (apply gx#core-bind-runtime-reference!__0 _g184113_))
                ((##fx= _g184114_ 3)
                 (apply gx#core-bind-runtime-reference!__1 _g184113_))
                ((##fx= _g184114_ 4)
                 (apply gx#core-bind-runtime-reference!__2 _g184113_))
                ((##fx= _g184114_ 5)
                 (apply gx#core-bind-runtime-reference!__% _g184113_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g184113_))))))
    (define gx#core-bind-extern!__%
      (lambda (_%id180926%_
               _%eid180927%_
               _%rebind?180928%_
               _%phi180929%_
               _%ctx180930%_)
        (gx#bind-identifier!__%
         _%id180926%_
         (let ((__obj184090
                (##structure gx#extern-binding::t '#f '#f '#f '#f '#f '#f)))
           (gx#extern-binding:::init!
            __obj184090
            _%eid180927%_
            (gx#core-identifier-key _%id180926%_)
            _%phi180929%_)
           __obj184090)
         _%rebind?180928%_
         _%phi180929%_
         _%ctx180930%_)))
    (define gx#core-bind-extern!__0
      (lambda (_%id180935%_ _%eid180936%_)
        (let* ((_%rebind?180938%_ '#f)
               (_%phi180940%_ (gx#current-expander-phi))
               (_%ctx180942%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id180935%_
           _%eid180936%_
           _%rebind?180938%_
           _%phi180940%_
           _%ctx180942%_))))
    (define gx#core-bind-extern!__1
      (lambda (_%id180944%_ _%eid180945%_ _%rebind?180946%_)
        (let* ((_%phi180948%_ (gx#current-expander-phi))
               (_%ctx180950%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id180944%_
           _%eid180945%_
           _%rebind?180946%_
           _%phi180948%_
           _%ctx180950%_))))
    (define gx#core-bind-extern!__2
      (lambda (_%id180952%_ _%eid180953%_ _%rebind?180954%_ _%phi180955%_)
        (let ((_%ctx180957%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id180952%_
           _%eid180953%_
           _%rebind?180954%_
           _%phi180955%_
           _%ctx180957%_))))
    (define gx#core-bind-extern!
      (lambda _g184115_
        (let ((_g184116_ (##length _g184115_)))
          (cond ((##fx= _g184116_ 2) (apply gx#core-bind-extern!__0 _g184115_))
                ((##fx= _g184116_ 3) (apply gx#core-bind-extern!__1 _g184115_))
                ((##fx= _g184116_ 4) (apply gx#core-bind-extern!__2 _g184115_))
                ((##fx= _g184116_ 5) (apply gx#core-bind-extern!__% _g184115_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g184115_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_%id180880%_
               _%e180881%_
               _%rebind?180882%_
               _%phi180883%_
               _%ctx180884%_)
        (gx#bind-identifier!__%
         _%id180880%_
         (let ((_%key180889%_ (gx#core-identifier-key _%id180880%_))
               (_%e180890%_
                (if (or (##structure-instance-of? _%e180881%_ 'gx#expander::t)
                        (##structure-instance-of?
                         _%e180881%_
                         'gx#expander-context::t))
                    _%e180881%_
                    (##structure
                     gx#user-expander::t
                     _%e180881%_
                     _%ctx180884%_
                     _%phi180883%_))))
           (let ((__obj184091
                  (##structure gx#syntax-binding::t '#f '#f '#f '#f '#f)))
             (gx#syntax-binding:::init!
              __obj184091
              (gx#make-binding-id__%
               _%key180889%_
               '#t
               _%phi180883%_
               _%ctx180884%_)
              _%key180889%_
              _%phi180883%_
              _%e180890%_)
             __obj184091))
         _%rebind?180882%_
         _%phi180883%_
         _%ctx180884%_)))
    (define gx#core-bind-syntax!__0
      (lambda (_%id180895%_ _%e180896%_)
        (let* ((_%rebind?180898%_ '#f)
               (_%phi180900%_ (gx#current-expander-phi))
               (_%ctx180902%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id180895%_
           _%e180896%_
           _%rebind?180898%_
           _%phi180900%_
           _%ctx180902%_))))
    (define gx#core-bind-syntax!__1
      (lambda (_%id180904%_ _%e180905%_ _%rebind?180906%_)
        (let* ((_%phi180908%_ (gx#current-expander-phi))
               (_%ctx180910%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id180904%_
           _%e180905%_
           _%rebind?180906%_
           _%phi180908%_
           _%ctx180910%_))))
    (define gx#core-bind-syntax!__2
      (lambda (_%id180912%_ _%e180913%_ _%rebind?180914%_ _%phi180915%_)
        (let ((_%ctx180917%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id180912%_
           _%e180913%_
           _%rebind?180914%_
           _%phi180915%_
           _%ctx180917%_))))
    (define gx#core-bind-syntax!
      (lambda _g184117_
        (let ((_g184118_ (##length _g184117_)))
          (cond ((##fx= _g184118_ 2) (apply gx#core-bind-syntax!__0 _g184117_))
                ((##fx= _g184118_ 3) (apply gx#core-bind-syntax!__1 _g184117_))
                ((##fx= _g184118_ 4) (apply gx#core-bind-syntax!__2 _g184117_))
                ((##fx= _g184118_ 5) (apply gx#core-bind-syntax!__% _g184117_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g184117_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_%id180863%_ _%e180864%_ _%rebind?180865%_)
        (gx#core-bind-syntax!__%
         _%id180863%_
         _%e180864%_
         _%rebind?180865%_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_%id180870%_ _%e180871%_)
        (let ((_%rebind?180873%_ '#f))
          (gx#core-bind-root-syntax!__%
           _%id180870%_
           _%e180871%_
           _%rebind?180873%_))))
    (define gx#core-bind-root-syntax!
      (lambda _g184119_
        (let ((_g184120_ (##length _g184119_)))
          (cond ((##fx= _g184120_ 2)
                 (apply gx#core-bind-root-syntax!__0 _g184119_))
                ((##fx= _g184120_ 3)
                 (apply gx#core-bind-root-syntax!__% _g184119_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g184119_))))))
    (define gx#core-bind-alias!__%
      (lambda (_%id180821%_
               _%alias-id180822%_
               _%rebind?180823%_
               _%phi180824%_
               _%ctx180825%_)
        (gx#bind-identifier!__%
         _%id180821%_
         (let* ((_%key180827%_ (gx#core-identifier-key _%id180821%_))
                (__obj184092
                 (##structure gx#alias-binding::t '#f '#f '#f '#f '#f)))
           (gx#alias-binding:::init!
            __obj184092
            (gx#make-binding-id__%
             _%key180827%_
             '#t
             _%phi180824%_
             _%ctx180825%_)
            _%key180827%_
            _%phi180824%_
            _%alias-id180822%_)
           __obj184092)
         _%rebind?180823%_
         _%phi180824%_
         _%ctx180825%_)))
    (define gx#core-bind-alias!__0
      (lambda (_%id180832%_ _%alias-id180833%_)
        (let* ((_%rebind?180835%_ '#f)
               (_%phi180837%_ (gx#current-expander-phi))
               (_%ctx180839%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id180832%_
           _%alias-id180833%_
           _%rebind?180835%_
           _%phi180837%_
           _%ctx180839%_))))
    (define gx#core-bind-alias!__1
      (lambda (_%id180841%_ _%alias-id180842%_ _%rebind?180843%_)
        (let* ((_%phi180845%_ (gx#current-expander-phi))
               (_%ctx180847%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id180841%_
           _%alias-id180842%_
           _%rebind?180843%_
           _%phi180845%_
           _%ctx180847%_))))
    (define gx#core-bind-alias!__2
      (lambda (_%id180849%_ _%alias-id180850%_ _%rebind?180851%_ _%phi180852%_)
        (let ((_%ctx180854%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id180849%_
           _%alias-id180850%_
           _%rebind?180851%_
           _%phi180852%_
           _%ctx180854%_))))
    (define gx#core-bind-alias!
      (lambda _g184121_
        (let ((_g184122_ (##length _g184121_)))
          (cond ((##fx= _g184122_ 2) (apply gx#core-bind-alias!__0 _g184121_))
                ((##fx= _g184122_ 3) (apply gx#core-bind-alias!__1 _g184121_))
                ((##fx= _g184122_ 4) (apply gx#core-bind-alias!__2 _g184121_))
                ((##fx= _g184122_ 5) (apply gx#core-bind-alias!__% _g184121_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g184121_))))))
    (define gx#make-binding-id__%
      (lambda (_%key180771%_ _%syntax?180772%_ _%phi180773%_ _%ctx180774%_)
        (if (uninterned-symbol? _%key180771%_)
            (##gensym 'L)
            (if (pair? _%key180771%_)
                (gensym (##car _%key180771%_))
                (if (##structure-instance-of? _%ctx180774%_ 'gx#top-context::t)
                    (let ((_%ns180779%_
                           (gx#core-context-namespace__% _%ctx180774%_)))
                      (if (and (fxzero? _%phi180773%_) (not _%syntax?180772%_))
                          (if _%ns180779%_
                              (make-symbol__1 _%ns180779%_ '"#" _%key180771%_)
                              _%key180771%_)
                          (if _%syntax?180772%_
                              (make-symbol__1
                               (let ((_%$e180783%_ _%ns180779%_))
                                 (if _%$e180783%_ _%$e180783%_ '""))
                               '"[:"
                               (number->string _%phi180773%_)
                               '":]#"
                               _%key180771%_)
                              (make-symbol__1
                               (let ((_%$e180787%_ _%ns180779%_))
                                 (if _%$e180787%_ _%$e180787%_ '""))
                               '"["
                               (number->string _%phi180773%_)
                               '"]#"
                               _%key180771%_))))
                    (gensym _%key180771%_))))))
    (define gx#make-binding-id__0
      (lambda (_%key180794%_)
        (let* ((_%syntax?180796%_ '#f)
               (_%phi180798%_ (gx#current-expander-phi))
               (_%ctx180800%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key180794%_
           _%syntax?180796%_
           _%phi180798%_
           _%ctx180800%_))))
    (define gx#make-binding-id__1
      (lambda (_%key180802%_ _%syntax?180803%_)
        (let* ((_%phi180805%_ (gx#current-expander-phi))
               (_%ctx180807%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key180802%_
           _%syntax?180803%_
           _%phi180805%_
           _%ctx180807%_))))
    (define gx#make-binding-id__2
      (lambda (_%key180809%_ _%syntax?180810%_ _%phi180811%_)
        (let ((_%ctx180813%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key180809%_
           _%syntax?180810%_
           _%phi180811%_
           _%ctx180813%_))))
    (define gx#make-binding-id
      (lambda _g184123_
        (let ((_g184124_ (##length _g184123_)))
          (cond ((##fx= _g184124_ 1) (apply gx#make-binding-id__0 _g184123_))
                ((##fx= _g184124_ 2) (apply gx#make-binding-id__1 _g184123_))
                ((##fx= _g184124_ 3) (apply gx#make-binding-id__2 _g184123_))
                ((##fx= _g184124_ 4) (apply gx#make-binding-id__% _g184123_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g184123_))))))))
