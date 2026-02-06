(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1770338922)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_%stx149000%_)
        (letrec ((_%expand-special149002%_
                  (lambda (_%hd149004%_ _%K149005%_ _%rest149006%_ _%r149007%_)
                    (_%K149005%_
                     _%rest149006%_
                     (cons (gx#core-expand-top _%hd149004%_) _%r149007%_)))))
          (gx#core-expand-block__0 _%stx149000%_ _%expand-special149002%_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_%stx148694%_)
        (letrec ((_%expand-special148696%_
                  (lambda (_%hd148818%_ _%K148819%_ _%rest148820%_ _%r148821%_)
                    (let* ((_%K148825%_
                            (lambda (_%e148823%_)
                              (_%K148819%_
                               _%rest148820%_
                               (cons _%e148823%_ _%r148821%_))))
                           (_%e148826148868%_ _%hd148818%_)
                           (_%E148863148872%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e148826148868%_)))
                           (_%E148859148884%_
                            (lambda ()
                              (if (gx#stx-pair? _%e148826148868%_)
                                  (let ((_%e148864148876%_
                                         (gx#syntax-e _%e148826148868%_)))
                                    (let ((_%hd148865148879%_
                                           (##car _%e148864148876%_))
                                          (_%tl148866148881%_
                                           (##cdr _%e148864148876%_)))
                                      (if (and (gx#identifier?
                                                _%hd148865148879%_)
                                               (gx#core-identifier=?
                                                _%hd148865148879%_
                                                '%#define-runtime))
                                          (_%K148825%_
                                           (gx#core-expand-define-runtime%
                                            _%hd148818%_))
                                          (_%E148863148872%_))))
                                  (_%E148863148872%_))))
                           (_%E148855148896%_
                            (lambda ()
                              (if (gx#stx-pair? _%e148826148868%_)
                                  (let ((_%e148860148888%_
                                         (gx#syntax-e _%e148826148868%_)))
                                    (let ((_%hd148861148891%_
                                           (##car _%e148860148888%_))
                                          (_%tl148862148893%_
                                           (##cdr _%e148860148888%_)))
                                      (if (and (gx#identifier?
                                                _%hd148861148891%_)
                                               (gx#core-identifier=?
                                                _%hd148861148891%_
                                                '%#define-alias))
                                          (_%K148825%_
                                           (gx#core-expand-define-alias%
                                            _%hd148818%_))
                                          (_%E148859148884%_))))
                                  (_%E148859148884%_))))
                           (_%E148845148908%_
                            (lambda ()
                              (if (gx#stx-pair? _%e148826148868%_)
                                  (let ((_%e148856148900%_
                                         (gx#syntax-e _%e148826148868%_)))
                                    (let ((_%hd148857148903%_
                                           (##car _%e148856148900%_))
                                          (_%tl148858148905%_
                                           (##cdr _%e148856148900%_)))
                                      (if (and (gx#identifier?
                                                _%hd148857148903%_)
                                               (gx#core-identifier=?
                                                _%hd148857148903%_
                                                '%#define-syntax))
                                          (_%K148825%_
                                           (gx#core-expand-define-syntax%
                                            _%hd148818%_))
                                          (_%E148855148896%_))))
                                  (_%E148855148896%_))))
                           (_%E148832148940%_
                            (lambda ()
                              (if (gx#stx-pair? _%e148826148868%_)
                                  (let ((_%e148846148912%_
                                         (gx#syntax-e _%e148826148868%_)))
                                    (let ((_%hd148847148915%_
                                           (##car _%e148846148912%_))
                                          (_%tl148848148917%_
                                           (##cdr _%e148846148912%_)))
                                      (if (and (gx#identifier?
                                                _%hd148847148915%_)
                                               (gx#core-identifier=?
                                                _%hd148847148915%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl148848148917%_)
                                              (let ((_%e148849148920%_
                                                     (gx#syntax-e
                                                      _%tl148848148917%_)))
                                                (let ((_%hd148850148923%_
                                                       (##car _%e148849148920%_))
                                                      (_%tl148851148925%_
                                                       (##cdr _%e148849148920%_)))
                                                  (let ((_%hd-bind148928%_
                                                         _%hd148850148923%_))
                                                    (if (gx#stx-pair?
                                                         _%tl148851148925%_)
                                                        (let ((_%e148852148930%_
                                                               (gx#syntax-e
                                                                _%tl148851148925%_)))
                                                          (let ((_%hd148853148933%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e148852148930%_))
                        (_%tl148854148935%_ (##cdr _%e148852148930%_)))
                    (let ((_%expr148938%_ _%hd148853148933%_))
                      (if (gx#stx-null? _%tl148854148935%_)
                          (if (gx#core-bind-values? _%hd-bind148928%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind148928%_)
                                (_%K148825%_ _%hd148818%_))
                              (_%E148845148908%_))
                          (_%E148845148908%_)))))
                (_%E148845148908%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E148845148908%_))
                                          (_%E148845148908%_))))
                                  (_%E148845148908%_))))
                           (_%E148828148984%_
                            (lambda ()
                              (if (gx#stx-pair? _%e148826148868%_)
                                  (let ((_%e148833148944%_
                                         (gx#syntax-e _%e148826148868%_)))
                                    (let ((_%hd148834148947%_
                                           (##car _%e148833148944%_))
                                          (_%tl148835148949%_
                                           (##cdr _%e148833148944%_)))
                                      (if (and (gx#identifier?
                                                _%hd148834148947%_)
                                               (gx#core-identifier=?
                                                _%hd148834148947%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl148835148949%_)
                                              (let ((_%e148836148952%_
                                                     (gx#syntax-e
                                                      _%tl148835148949%_)))
                                                (let ((_%hd148837148955%_
                                                       (##car _%e148836148952%_))
                                                      (_%tl148838148957%_
                                                       (##cdr _%e148836148952%_)))
                                                  (if (gx#stx-pair?
                                                       _%hd148837148955%_)
                                                      (let ((_%e148842148960%_
                                                             (gx#syntax-e
                                                              _%hd148837148955%_)))
                                                        (let ((_%hd148843148963%_
                                                               (##car _%e148842148960%_))
                                                              (_%tl148844148965%_
                                                               (##cdr _%e148842148960%_)))
                                                          (let ((_%id148968%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd148843148963%_))
                    (if (gx#stx-null? _%tl148844148965%_)
                        (if (gx#stx-pair? _%tl148838148957%_)
                            (let ((_%e148839148970%_
                                   (gx#syntax-e _%tl148838148957%_)))
                              (let ((_%hd148840148973%_
                                     (##car _%e148839148970%_))
                                    (_%tl148841148975%_
                                     (##cdr _%e148839148970%_)))
                                (let* ((_%expr148978%_ _%hd148840148973%_)
                                       (_%props148980%_ _%tl148841148975%_))
                                  (if (gx#identifier? _%id148968%_)
                                      (let ((_%bind148982%_
                                             (gx#core-bind-runtime!__0
                                              _%id148968%_)))
                                        (gx#core-bind-runtime-properties!
                                         _%bind148982%_
                                         _%props148980%_)
                                        (_%K148825%_ _%hd148818%_))
                                      (_%E148832148940%_)))))
                            (_%E148832148940%_))
                        (_%E148832148940%_)))))
              (_%E148832148940%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E148832148940%_))
                                          (_%E148832148940%_))))
                                  (_%E148832148940%_))))
                           (_%E148827148996%_
                            (lambda ()
                              (if (gx#stx-pair? _%e148826148868%_)
                                  (let ((_%e148829148988%_
                                         (gx#syntax-e _%e148826148868%_)))
                                    (let ((_%hd148830148991%_
                                           (##car _%e148829148988%_))
                                          (_%tl148831148993%_
                                           (##cdr _%e148829148988%_)))
                                      (if (and (gx#identifier?
                                                _%hd148830148991%_)
                                               (gx#core-identifier=?
                                                _%hd148830148991%_
                                                '%#begin-syntax))
                                          (_%K148825%_
                                           (gx#core-expand-begin-syntax%
                                            _%hd148818%_))
                                          (_%E148828148984%_))))
                                  (_%E148828148984%_)))))
                      (_%E148827148996%_))))
                 (_%eval-body148697%_
                  (lambda (_%rbody148705%_)
                    (let _%lp148707%_ ((_%rest148709%_ _%rbody148705%_)
                                       (_%body148710%_ '())
                                       (_%ebody148711%_ '()))
                      (let* ((_%rest148712148720%_ _%rest148709%_)
                             (_%else148714148728%_
                              (lambda ()
                                (values _%body148710%_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons
                                           '%#begin
                                           _%ebody148711%_)
                                          (gx#stx-source _%stx148694%_))))))
                             (_%K148716148806%_
                              (lambda (_%rest148731%_ _%hd148732%_)
                                (let* ((_%e148733148750%_ _%hd148732%_)
                                       (_%E148745148754%_
                                        (lambda ()
                                          (_%lp148707%_
                                           _%rest148731%_
                                           (cons _%hd148732%_ _%body148710%_)
                                           (cons _%hd148732%_
                                                 _%ebody148711%_))))
                                       (_%E148735148766%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e148733148750%_)
                                              (let ((_%e148746148758%_
                                                     (gx#syntax-e
                                                      _%e148733148750%_)))
                                                (let ((_%hd148747148761%_
                                                       (##car _%e148746148758%_))
                                                      (_%tl148748148763%_
                                                       (##cdr _%e148746148758%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd148747148761%_)
                                                           (gx#core-identifier=?
                                                            _%hd148747148761%_
                                                            '%#begin-syntax))
                                                      (_%lp148707%_
                                                       _%rest148731%_
                                                       (cons _%hd148732%_
                                                             _%body148710%_)
                                                       _%ebody148711%_)
                                                      (_%E148745148754%_))))
                                              (_%E148745148754%_))))
                                       (_%E148734148802%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e148733148750%_)
                                              (let ((_%e148736148770%_
                                                     (gx#syntax-e
                                                      _%e148733148750%_)))
                                                (let ((_%hd148737148773%_
                                                       (##car _%e148736148770%_))
                                                      (_%tl148738148775%_
                                                       (##cdr _%e148736148770%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd148737148773%_)
                                                           (gx#core-identifier=?
                                                            _%hd148737148773%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl148738148775%_)
                                                          (let ((_%e148739148778%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl148738148775%_)))
                    (let ((_%hd148740148781%_ (##car _%e148739148778%_))
                          (_%tl148741148783%_ (##cdr _%e148739148778%_)))
                      (let ((_%hd-bind148786%_ _%hd148740148781%_))
                        (if (gx#stx-pair? _%tl148741148783%_)
                            (let ((_%e148742148788%_
                                   (gx#syntax-e _%tl148741148783%_)))
                              (let ((_%hd148743148791%_
                                     (##car _%e148742148788%_))
                                    (_%tl148744148793%_
                                     (##cdr _%e148742148788%_)))
                                (let* ((_%expr148796%_ _%hd148743148791%_)
                                       (_%ignore-props148798%_
                                        _%tl148744148793%_)
                                       (_%ehd148800%_
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#define-values)
                                               (cons (gx#core-quote-bind-values
                                                      _%hd-bind148786%_)
                                                     (cons (gx#core-expand-expression
                                                            _%expr148796%_)
                                                           '())))
                                         (gx#stx-source _%hd148732%_))))
                                  (_%lp148707%_
                                   _%rest148731%_
                                   (cons _%ehd148800%_ _%body148710%_)
                                   (cons _%ehd148800%_ _%ebody148711%_)))))
                            (_%E148735148766%_)))))
                  (_%E148735148766%_))
              (_%E148735148766%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E148735148766%_)))))
                                  (_%E148734148802%_)))))
                        (if (pair? _%rest148712148720%_)
                            (let ((_%hd148717148809%_
                                   (##car _%rest148712148720%_))
                                  (_%tl148718148811%_
                                   (##cdr _%rest148712148720%_)))
                              (let* ((_%hd148814%_ _%hd148717148809%_)
                                     (_%rest148816%_ _%tl148718148811%_))
                                (_%K148716148806%_
                                 _%rest148816%_
                                 _%hd148814%_)))
                            (_%else148714148728%_)))))))
          (call-with-parameters__1
           (lambda ()
             (let* ((_%rbody148700%_
                     (gx#core-expand-block__1
                      _%stx148694%_
                      _%expand-special148696%_
                      '#f))
                    (_g149033_ (_%eval-body148697%_ _%rbody148700%_)))
               (begin
                 (let ((_g149034_
                        (if (##values? _g149033_)
                            (##values-length _g149033_)
                            1)))
                   (if (not (##fx= _g149034_ 2))
                       (error "Context expects 2 values" _g149034_)))
                 (let ((_%expanded-body148702%_ (##values-ref _g149033_ 0))
                       (_%value148703%_ (##values-ref _g149033_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _%expanded-body148702%_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _%value148703%_ '())))
                    (gx#stx-source _%stx148694%_))))))
           gx#current-expander-phi
           (##fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_%stx148664%_)
        (let* ((_%e148665148672%_ _%stx148664%_)
               (_%E148667148676%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e148665148672%_)))
               (_%E148666148690%_
                (lambda ()
                  (if (gx#stx-pair? _%e148665148672%_)
                      (let ((_%e148668148680%_
                             (gx#syntax-e _%e148665148672%_)))
                        (let ((_%hd148669148683%_ (##car _%e148668148680%_))
                              (_%tl148670148685%_ (##cdr _%e148668148680%_)))
                          (let ((_%body148688%_ _%tl148670148685%_))
                            (if (gx#stx-list? _%body148688%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _%body148688%_)
                                 (gx#stx-source _%stx148664%_))
                                (_%E148667148676%_)))))
                      (_%E148667148676%_)))))
          (_%E148666148690%_))))
    (define gx#core-expand-begin-module%
      (lambda (_%stx148662%_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _%stx148662%_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_%stx148608%_)
        (let* ((_%e148609148622%_ _%stx148608%_)
               (_%E148611148626%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e148609148622%_)))
               (_%E148610148658%_
                (lambda ()
                  (if (gx#stx-pair? _%e148609148622%_)
                      (let ((_%e148612148630%_
                             (gx#syntax-e _%e148609148622%_)))
                        (let ((_%hd148613148633%_ (##car _%e148612148630%_))
                              (_%tl148614148635%_ (##cdr _%e148612148630%_)))
                          (if (gx#stx-pair? _%tl148614148635%_)
                              (let ((_%e148615148638%_
                                     (gx#syntax-e _%tl148614148635%_)))
                                (let ((_%hd148616148641%_
                                       (##car _%e148615148638%_))
                                      (_%tl148617148643%_
                                       (##cdr _%e148615148638%_)))
                                  (let ((_%ann148646%_ _%hd148616148641%_))
                                    (if (gx#stx-pair? _%tl148617148643%_)
                                        (let ((_%e148618148648%_
                                               (gx#syntax-e
                                                _%tl148617148643%_)))
                                          (let ((_%hd148619148651%_
                                                 (##car _%e148618148648%_))
                                                (_%tl148620148653%_
                                                 (##cdr _%e148618148648%_)))
                                            (let ((_%expr148656%_
                                                   _%hd148619148651%_))
                                              (if (gx#stx-null?
                                                   _%tl148620148653%_)
                                                  (gx#core-quote-syntax__1
                                                   (cons (gx#core-quote-syntax__0
                                                          '%#begin-annotation)
                                                         (cons _%ann148646%_
                                                               (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%expr148656%_)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (gx#stx-source
                                                    _%stx148608%_))
                                                  (_%E148611148626%_)))))
                                        (_%E148611148626%_)))))
                              (_%E148611148626%_))))
                      (_%E148611148626%_)))))
          (_%E148610148658%_))))
    (define gx#core-expand-local-block
      (lambda (_%stx148273%_ _%body148274%_)
        (letrec ((_%expand-special148276%_
                  (lambda (_%hd148603%_ _%K148604%_ _%rest148605%_ _%r148606%_)
                    (_%K148604%_
                     '()
                     (cons (_%expand-internal148277%_
                            _%hd148603%_
                            _%rest148605%_)
                           _%r148606%_))))
                 (_%expand-internal148277%_
                  (lambda (_%hd148599%_ _%rest148600%_)
                    (call-with-parameters__1
                     (lambda ()
                       (_%wrap-internal148279%_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _%hd148599%_ _%rest148600%_))
                          (gx#stx-source _%stx148273%_))
                         _%expand-internal-special148278%_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj149017
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init!__0 __obj149017)
                       __obj149017))))
                 (_%expand-internal-special148278%_
                  (lambda (_%hd148437%_ _%K148438%_ _%rest148439%_ _%r148440%_)
                    (let* ((_%e148441148479%_ _%hd148437%_)
                           (_%E148474148483%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e148441148479%_)))
                           (_%E148470148495%_
                            (lambda ()
                              (if (gx#stx-pair? _%e148441148479%_)
                                  (let ((_%e148475148487%_
                                         (gx#syntax-e _%e148441148479%_)))
                                    (let ((_%hd148476148490%_
                                           (##car _%e148475148487%_))
                                          (_%tl148477148492%_
                                           (##cdr _%e148475148487%_)))
                                      (if (and (gx#identifier?
                                                _%hd148476148490%_)
                                               (gx#core-identifier=?
                                                _%hd148476148490%_
                                                '%#declare))
                                          (_%K148438%_
                                           _%rest148439%_
                                           (cons (gx#core-expand-declare%
                                                  _%hd148437%_)
                                                 _%r148440%_))
                                          (_%E148474148483%_))))
                                  (_%E148474148483%_))))
                           (_%E148466148507%_
                            (lambda ()
                              (if (gx#stx-pair? _%e148441148479%_)
                                  (let ((_%e148471148499%_
                                         (gx#syntax-e _%e148441148479%_)))
                                    (let ((_%hd148472148502%_
                                           (##car _%e148471148499%_))
                                          (_%tl148473148504%_
                                           (##cdr _%e148471148499%_)))
                                      (if (and (gx#identifier?
                                                _%hd148472148502%_)
                                               (gx#core-identifier=?
                                                _%hd148472148502%_
                                                '%#define-alias))
                                          (begin
                                            (gx#core-expand-define-alias%
                                             _%hd148437%_)
                                            (_%K148438%_
                                             _%rest148439%_
                                             _%r148440%_))
                                          (_%E148470148495%_))))
                                  (_%E148470148495%_))))
                           (_%E148456148519%_
                            (lambda ()
                              (if (gx#stx-pair? _%e148441148479%_)
                                  (let ((_%e148467148511%_
                                         (gx#syntax-e _%e148441148479%_)))
                                    (let ((_%hd148468148514%_
                                           (##car _%e148467148511%_))
                                          (_%tl148469148516%_
                                           (##cdr _%e148467148511%_)))
                                      (if (and (gx#identifier?
                                                _%hd148468148514%_)
                                               (gx#core-identifier=?
                                                _%hd148468148514%_
                                                '%#define-syntax))
                                          (begin
                                            (gx#core-expand-define-syntax%
                                             _%hd148437%_)
                                            (_%K148438%_
                                             _%rest148439%_
                                             _%r148440%_))
                                          (_%E148466148507%_))))
                                  (_%E148466148507%_))))
                           (_%E148443148551%_
                            (lambda ()
                              (if (gx#stx-pair? _%e148441148479%_)
                                  (let ((_%e148457148523%_
                                         (gx#syntax-e _%e148441148479%_)))
                                    (let ((_%hd148458148526%_
                                           (##car _%e148457148523%_))
                                          (_%tl148459148528%_
                                           (##cdr _%e148457148523%_)))
                                      (if (and (gx#identifier?
                                                _%hd148458148526%_)
                                               (gx#core-identifier=?
                                                _%hd148458148526%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl148459148528%_)
                                              (let ((_%e148460148531%_
                                                     (gx#syntax-e
                                                      _%tl148459148528%_)))
                                                (let ((_%hd148461148534%_
                                                       (##car _%e148460148531%_))
                                                      (_%tl148462148536%_
                                                       (##cdr _%e148460148531%_)))
                                                  (let ((_%hd-bind148539%_
                                                         _%hd148461148534%_))
                                                    (if (gx#stx-pair?
                                                         _%tl148462148536%_)
                                                        (let ((_%e148463148541%_
                                                               (gx#syntax-e
                                                                _%tl148462148536%_)))
                                                          (let ((_%hd148464148544%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e148463148541%_))
                        (_%tl148465148546%_ (##cdr _%e148463148541%_)))
                    (let ((_%expr148549%_ _%hd148464148544%_))
                      (if (gx#stx-null? _%tl148465148546%_)
                          (if (gx#core-bind-values? _%hd-bind148539%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind148539%_)
                                (_%K148438%_
                                 _%rest148439%_
                                 (cons _%hd148437%_ _%r148440%_)))
                              (_%E148456148519%_))
                          (_%E148456148519%_)))))
                (_%E148456148519%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E148456148519%_))
                                          (_%E148456148519%_))))
                                  (_%E148456148519%_))))
                           (_%E148442148595%_
                            (lambda ()
                              (if (gx#stx-pair? _%e148441148479%_)
                                  (let ((_%e148444148555%_
                                         (gx#syntax-e _%e148441148479%_)))
                                    (let ((_%hd148445148558%_
                                           (##car _%e148444148555%_))
                                          (_%tl148446148560%_
                                           (##cdr _%e148444148555%_)))
                                      (if (and (gx#identifier?
                                                _%hd148445148558%_)
                                               (gx#core-identifier=?
                                                _%hd148445148558%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl148446148560%_)
                                              (let ((_%e148447148563%_
                                                     (gx#syntax-e
                                                      _%tl148446148560%_)))
                                                (let ((_%hd148448148566%_
                                                       (##car _%e148447148563%_))
                                                      (_%tl148449148568%_
                                                       (##cdr _%e148447148563%_)))
                                                  (if (gx#stx-pair?
                                                       _%hd148448148566%_)
                                                      (let ((_%e148453148571%_
                                                             (gx#syntax-e
                                                              _%hd148448148566%_)))
                                                        (let ((_%hd148454148574%_
                                                               (##car _%e148453148571%_))
                                                              (_%tl148455148576%_
                                                               (##cdr _%e148453148571%_)))
                                                          (let ((_%id148579%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd148454148574%_))
                    (if (gx#stx-null? _%tl148455148576%_)
                        (if (gx#stx-pair? _%tl148449148568%_)
                            (let ((_%e148450148581%_
                                   (gx#syntax-e _%tl148449148568%_)))
                              (let ((_%hd148451148584%_
                                     (##car _%e148450148581%_))
                                    (_%tl148452148586%_
                                     (##cdr _%e148450148581%_)))
                                (let* ((_%expr148589%_ _%hd148451148584%_)
                                       (_%props148591%_ _%tl148452148586%_))
                                  (if (gx#identifier? _%id148579%_)
                                      (let ((_%bind148593%_
                                             (gx#core-bind-runtime!__0
                                              _%id148579%_)))
                                        (gx#core-bind-runtime-properties!
                                         _%bind148593%_
                                         _%props148591%_)
                                        (_%K148438%_
                                         _%rest148439%_
                                         (cons _%hd148437%_ _%r148440%_)))
                                      (_%E148443148551%_)))))
                            (_%E148443148551%_))
                        (_%E148443148551%_)))))
              (_%E148443148551%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E148443148551%_))
                                          (_%E148443148551%_))))
                                  (_%E148443148551%_)))))
                      (_%E148442148595%_))))
                 (_%wrap-internal148279%_
                  (lambda (_%rbody148281%_)
                    (let _%lp148283%_ ((_%rest148285%_ _%rbody148281%_)
                                       (_%decls148286%_ '())
                                       (_%bind148287%_ '())
                                       (_%body148288%_ '()))
                      (let* ((_%e148289148296%_ _%rest148285%_)
                             (_%E148291148345%_
                              (lambda ()
                                (let* ((_%body148340%_
                                        (let* ((_%body148299148309%_
                                                _%body148288%_)
                                               (_%else148302148317%_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _%body148288%_)
                                                   (gx#stx-source
                                                    _%stx148273%_)))))
                                          (let ((_%K148307148337%_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _%stx148273%_)))
                                                (_%K148304148323%_
                                                 (lambda (_%expr148321%_)
                                                   _%expr148321%_)))
                                            (let ((_%try-match148301148333%_
                                                   (lambda ()
                                                     (if (pair? _%body148299148309%_)
                                                         (let ((_%tl148306148328%_
                                                                (##cdr _%body148299148309%_))
                                                               (_%hd148305148326%_
                                                                (##car _%body148299148309%_)))
                                                           (if (null? _%tl148306148328%_)
                                                               (let ((_%expr148331%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd148305148326%_))
                         (_%K148304148323%_ _%expr148331%_))
                       (_%else148302148317%_)))
                 (_%else148302148317%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (null? _%body148299148309%_)
                                                  (_%K148307148337%_)
                                                  (_%try-match148301148333%_))))))
                                       (_%body148342%_
                                        (if (null? _%bind148287%_)
                                            _%body148340%_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _%bind148287%_
                                                         (cons _%body148340%_
                                                               '())))
                                             (gx#stx-source _%stx148273%_)))))
                                  (if (null? _%decls148286%_)
                                      _%body148342%_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _%decls148286%_
                                                   (cons _%body148342%_ '())))
                                       (gx#stx-source _%stx148273%_))))))
                             (_%E148290148433%_
                              (lambda ()
                                (if (gx#stx-pair? _%e148289148296%_)
                                    (let ((_%e148292148349%_
                                           (gx#syntax-e _%e148289148296%_)))
                                      (let ((_%hd148293148352%_
                                             (##car _%e148292148349%_))
                                            (_%tl148294148354%_
                                             (##cdr _%e148292148349%_)))
                                        (let* ((_%hd148357%_
                                                _%hd148293148352%_)
                                               (_%rest148359%_
                                                _%tl148294148354%_)
                                               (_%e148360148377%_ _%hd148357%_)
                                               (_%E148372148381%_
                                                (lambda ()
                                                  (if (null? _%bind148287%_)
                                                      (_%lp148283%_
                                                       _%rest148359%_
                                                       _%decls148286%_
                                                       _%bind148287%_
                                                       (cons _%hd148357%_
                                                             _%body148288%_))
                                                      (_%lp148283%_
                                                       _%rest148359%_
                                                       _%decls148286%_
                                                       (cons (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%hd148357%_ '()))
                     _%bind148287%_)
               _%body148288%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E148362148395%_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _%e148360148377%_)
                                                      (let ((_%e148373148385%_
                                                             (gx#syntax-e
                                                              _%e148360148377%_)))
                                                        (let ((_%hd148374148388%_
                                                               (##car _%e148373148385%_))
                                                              (_%tl148375148390%_
                                                               (##cdr _%e148373148385%_)))
                                                          (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%hd148374148388%_)
                           (gx#core-identifier=?
                            _%hd148374148388%_
                            '%#declare))
                      (let ((_%xdecls148393%_ _%tl148375148390%_))
                        (_%lp148283%_
                         _%rest148359%_
                         (gx#stx-foldr cons _%decls148286%_ _%xdecls148393%_)
                         _%bind148287%_
                         _%body148288%_))
                      (_%E148372148381%_))))
              (_%E148372148381%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E148361148429%_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _%e148360148377%_)
                                                      (let ((_%e148363148399%_
                                                             (gx#syntax-e
                                                              _%e148360148377%_)))
                                                        (let ((_%hd148364148402%_
                                                               (##car _%e148363148399%_))
                                                              (_%tl148365148404%_
                                                               (##cdr _%e148363148399%_)))
                                                          (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%hd148364148402%_)
                           (gx#core-identifier=?
                            _%hd148364148402%_
                            '%#define-values))
                      (if (gx#stx-pair? _%tl148365148404%_)
                          (let ((_%e148366148407%_
                                 (gx#syntax-e _%tl148365148404%_)))
                            (let ((_%hd148367148410%_
                                   (##car _%e148366148407%_))
                                  (_%tl148368148412%_
                                   (##cdr _%e148366148407%_)))
                              (let ((_%hd-bind148415%_ _%hd148367148410%_))
                                (if (gx#stx-pair? _%tl148368148412%_)
                                    (let ((_%e148369148417%_
                                           (gx#syntax-e _%tl148368148412%_)))
                                      (let ((_%hd148370148420%_
                                             (##car _%e148369148417%_))
                                            (_%tl148371148422%_
                                             (##cdr _%e148369148417%_)))
                                        (let* ((_%expr148425%_
                                                _%hd148370148420%_)
                                               (_%ignore-props148427%_
                                                _%tl148371148422%_))
                                          (_%lp148283%_
                                           _%rest148359%_
                                           _%decls148286%_
                                           (cons (cons (gx#core-quote-bind-values
                                                        _%hd-bind148415%_)
                                                       (cons (gx#core-expand-expression
                                                              _%expr148425%_)
                                                             '()))
                                                 _%bind148287%_)
                                           _%body148288%_))))
                                    (_%E148362148395%_)))))
                          (_%E148362148395%_))
                      (_%E148362148395%_))))
              (_%E148362148395%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%E148361148429%_))))
                                    (_%E148291148345%_)))))
                        (_%E148290148433%_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _%body148274%_)
            (gx#stx-source _%stx148273%_))
           _%expand-special148276%_))))
    (define gx#core-expand-declare%
      (lambda (_%stx148211%_)
        (let* ((_%e148212148219%_ _%stx148211%_)
               (_%E148214148223%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e148212148219%_)))
               (_%E148213148269%_
                (lambda ()
                  (if (gx#stx-pair? _%e148212148219%_)
                      (let ((_%e148215148227%_
                             (gx#syntax-e _%e148212148219%_)))
                        (let ((_%hd148216148230%_ (##car _%e148215148227%_))
                              (_%tl148217148232%_ (##cdr _%e148215148227%_)))
                          (let ((_%body148235%_ _%tl148217148232%_))
                            (if (gx#stx-list? _%body148235%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_%decl148237%_)
                                     (let* ((_%e148238148245%_ _%decl148237%_)
                                            (_%E148240148249%_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _%e148238148245%_)))
                                            (_%E148239148265%_
                                             (lambda ()
                                               (if (gx#stx-pair?
                                                    _%e148238148245%_)
                                                   (let ((_%e148241148253%_
                                                          (gx#syntax-e
                                                           _%e148238148245%_)))
                                                     (let ((_%hd148242148256%_
                                                            (##car _%e148241148253%_))
                                                           (_%tl148243148258%_
                                                            (##cdr _%e148241148253%_)))
                                                       (let* ((_%head148261%_
                                                               _%hd148242148256%_)
                                                              (_%args148263%_
                                                               _%tl148243148258%_))
                                                         (if (gx#stx-list?
                                                              _%args148263%_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _%decl148237%_)
                                                             (_%E148240148249%_)))))
                                                   (_%E148240148249%_)))))
                                       (_%E148239148265%_)))
                                   _%body148235%_))
                                 (gx#stx-source _%stx148211%_))
                                (_%E148214148223%_)))))
                      (_%E148214148223%_)))))
          (_%E148213148269%_))))
    (define gx#core-expand-extern%
      (lambda (_%stx148115%_)
        (let* ((_%e148116148123%_ _%stx148115%_)
               (_%E148118148127%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e148116148123%_)))
               (_%E148117148207%_
                (lambda ()
                  (if (gx#stx-pair? _%e148116148123%_)
                      (let ((_%e148119148131%_
                             (gx#syntax-e _%e148116148123%_)))
                        (let ((_%hd148120148134%_ (##car _%e148119148131%_))
                              (_%tl148121148136%_ (##cdr _%e148119148131%_)))
                          (let ((_%body148139%_ _%tl148121148136%_))
                            (let _%lp148141%_ ((_%rest148143%_ _%body148139%_)
                                               (_%r148144%_ '()))
                              (let* ((_%e148145148159%_ _%rest148143%_)
                                     (_%E148157148163%_
                                      (lambda ()
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                         _%stx148115%_)))
                                     (_%E148147148167%_
                                      (lambda ()
                                        (if (gx#stx-null? _%e148145148159%_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-cons
                                              '%#extern
                                              (reverse _%r148144%_))
                                             (gx#stx-source _%stx148115%_))
                                            (_%E148157148163%_))))
                                     (_%E148146148203%_
                                      (lambda ()
                                        (if (gx#stx-pair? _%e148145148159%_)
                                            (let ((_%e148148148171%_
                                                   (gx#syntax-e
                                                    _%e148145148159%_)))
                                              (let ((_%hd148149148174%_
                                                     (##car _%e148148148171%_))
                                                    (_%tl148150148176%_
                                                     (##cdr _%e148148148171%_)))
                                                (if (gx#stx-pair?
                                                     _%hd148149148174%_)
                                                    (let ((_%e148151148179%_
                                                           (gx#syntax-e
                                                            _%hd148149148174%_)))
                                                      (let ((_%hd148152148182%_
                                                             (##car _%e148151148179%_))
                                                            (_%tl148153148184%_
                                                             (##cdr _%e148151148179%_)))
                                                        (let ((_%id148187%_
                                                               _%hd148152148182%_))
                                                          (if (gx#stx-pair?
                                                               _%tl148153148184%_)
                                                              (let ((_%e148154148189%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl148153148184%_)))
                        (let ((_%hd148155148192%_ (##car _%e148154148189%_))
                              (_%tl148156148194%_ (##cdr _%e148154148189%_)))
                          (let ((_%eid148197%_ _%hd148155148192%_))
                            (if (gx#stx-null? _%tl148156148194%_)
                                (let ((_%rest148199%_ _%tl148150148176%_))
                                  (if (and (gx#identifier? _%id148187%_)
                                           (gx#identifier? _%eid148197%_))
                                      (let ((_%eid148201%_
                                             (gx#stx-e _%eid148197%_)))
                                        (gx#core-bind-extern!__0
                                         _%id148187%_
                                         _%eid148201%_)
                                        (_%lp148141%_
                                         _%rest148199%_
                                         (cons (cons (gx#core-quote-syntax__0
                                                      _%id148187%_)
                                                     (cons _%eid148201%_ '()))
                                               _%r148144%_)))
                                      (_%E148147148167%_)))
                                (_%E148147148167%_)))))
                      (_%E148147148167%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E148147148167%_))))
                                            (_%E148147148167%_)))))
                                (_%E148146148203%_))))))
                      (_%E148118148127%_)))))
          (_%E148117148207%_))))
    (define gx#core-expand-define-values%
      (lambda (_%stx148004%_)
        (let* ((_%e148005148031%_ _%stx148004%_)
               (_%E148020148035%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e148005148031%_)))
               (_%E148007148067%_
                (lambda ()
                  (if (gx#stx-pair? _%e148005148031%_)
                      (let ((_%e148021148039%_
                             (gx#syntax-e _%e148005148031%_)))
                        (let ((_%hd148022148042%_ (##car _%e148021148039%_))
                              (_%tl148023148044%_ (##cdr _%e148021148039%_)))
                          (if (gx#stx-pair? _%tl148023148044%_)
                              (let ((_%e148024148047%_
                                     (gx#syntax-e _%tl148023148044%_)))
                                (let ((_%hd148025148050%_
                                       (##car _%e148024148047%_))
                                      (_%tl148026148052%_
                                       (##cdr _%e148024148047%_)))
                                  (let ((_%hd148055%_ _%hd148025148050%_))
                                    (if (gx#stx-pair? _%tl148026148052%_)
                                        (let ((_%e148027148057%_
                                               (gx#syntax-e
                                                _%tl148026148052%_)))
                                          (let ((_%hd148028148060%_
                                                 (##car _%e148027148057%_))
                                                (_%tl148029148062%_
                                                 (##cdr _%e148027148057%_)))
                                            (let ((_%expr148065%_
                                                   _%hd148028148060%_))
                                              (if (gx#stx-null?
                                                   _%tl148029148062%_)
                                                  (if (gx#core-bind-values?
                                                       _%hd148055%_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _%hd148055%_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd148055%_)
                             (cons (gx#core-expand-expression _%expr148065%_)
                                   '())))
                 (gx#stx-source _%stx148004%_)))
              (_%E148020148035%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E148020148035%_)))))
                                        (_%E148020148035%_)))))
                              (_%E148020148035%_))))
                      (_%E148020148035%_))))
               (_%E148006148111%_
                (lambda ()
                  (if (gx#stx-pair? _%e148005148031%_)
                      (let ((_%e148008148071%_
                             (gx#syntax-e _%e148005148031%_)))
                        (let ((_%hd148009148074%_ (##car _%e148008148071%_))
                              (_%tl148010148076%_ (##cdr _%e148008148071%_)))
                          (if (gx#stx-pair? _%tl148010148076%_)
                              (let ((_%e148011148079%_
                                     (gx#syntax-e _%tl148010148076%_)))
                                (let ((_%hd148012148082%_
                                       (##car _%e148011148079%_))
                                      (_%tl148013148084%_
                                       (##cdr _%e148011148079%_)))
                                  (if (gx#stx-pair? _%hd148012148082%_)
                                      (let ((_%e148017148087%_
                                             (gx#syntax-e _%hd148012148082%_)))
                                        (let ((_%hd148018148090%_
                                               (##car _%e148017148087%_))
                                              (_%tl148019148092%_
                                               (##cdr _%e148017148087%_)))
                                          (let ((_%id148095%_
                                                 _%hd148018148090%_))
                                            (if (gx#stx-null?
                                                 _%tl148019148092%_)
                                                (if (gx#stx-pair?
                                                     _%tl148013148084%_)
                                                    (let ((_%e148014148097%_
                                                           (gx#syntax-e
                                                            _%tl148013148084%_)))
                                                      (let ((_%hd148015148100%_
                                                             (##car _%e148014148097%_))
                                                            (_%tl148016148102%_
                                                             (##cdr _%e148014148097%_)))
                                                        (let* ((_%expr148105%_
                                                                _%hd148015148100%_)
                                                               (_%props148107%_
                                                                _%tl148016148102%_))
                                                          (if (gx#identifier?
                                                               _%id148095%_)
                                                              (let ((_%bind148109%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#core-bind-runtime!__0 _%id148095%_)))
                        (gx#core-bind-runtime-properties!
                         _%bind148109%_
                         _%props148107%_)
                        (gx#core-quote-syntax__1
                         (cons (gx#core-quote-syntax__0 '%#define-values)
                               (cons (gx#core-quote-bind-values
                                      (cons _%id148095%_ '()))
                                     (cons (gx#core-expand-expression
                                            _%expr148105%_)
                                           '())))
                         (gx#stx-source _%stx148004%_)))
                      (_%E148007148067%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E148007148067%_))
                                                (_%E148007148067%_)))))
                                      (_%E148007148067%_))))
                              (_%E148007148067%_))))
                      (_%E148007148067%_)))))
          (_%E148006148111%_))))
    (define gx#core-expand-define-runtime%
      (lambda (_%stx147943%_)
        (let* ((_%e147944147957%_ _%stx147943%_)
               (_%E147946147961%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e147944147957%_)))
               (_%E147945148000%_
                (lambda ()
                  (if (gx#stx-pair? _%e147944147957%_)
                      (let ((_%e147947147965%_
                             (gx#syntax-e _%e147944147957%_)))
                        (let ((_%hd147948147968%_ (##car _%e147947147965%_))
                              (_%tl147949147970%_ (##cdr _%e147947147965%_)))
                          (if (gx#stx-pair? _%tl147949147970%_)
                              (let ((_%e147950147973%_
                                     (gx#syntax-e _%tl147949147970%_)))
                                (let ((_%hd147951147976%_
                                       (##car _%e147950147973%_))
                                      (_%tl147952147978%_
                                       (##cdr _%e147950147973%_)))
                                  (let ((_%id147981%_ _%hd147951147976%_))
                                    (if (gx#stx-pair? _%tl147952147978%_)
                                        (let ((_%e147953147983%_
                                               (gx#syntax-e
                                                _%tl147952147978%_)))
                                          (let ((_%hd147954147986%_
                                                 (##car _%e147953147983%_))
                                                (_%tl147955147988%_
                                                 (##cdr _%e147953147983%_)))
                                            (let* ((_%binding-id147991%_
                                                    _%hd147954147986%_)
                                                   (_%props147993%_
                                                    _%tl147955147988%_))
                                              (if (and (gx#identifier?
                                                        _%id147981%_)
                                                       (gx#identifier?
                                                        _%binding-id147991%_)
                                                       (gx#stx-list?
                                                        _%props147993%_))
                                                  (let* ((_%eid147995%_
                                                          (gx#stx-e
                                                           _%binding-id147991%_))
                                                         (_%bind147997%_
                                                          (gx#core-bind-runtime-reference!__0
                                                           _%id147981%_
                                                           _%eid147995%_)))
                                                    (gx#core-bind-runtime-properties!
                                                     _%bind147997%_
                                                     _%props147993%_)
                                                    (gx#core-quote-syntax__0
                                                     (cons (gx#core-quote-syntax__0
                                                            '%#define-runtime)
                                                           (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id147981%_)
                         (cons _%eid147995%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E147946147961%_)))))
                                        (_%E147946147961%_)))))
                              (_%E147946147961%_))))
                      (_%E147946147961%_)))))
          (_%E147945148000%_))))
    (define gx#core-bind-runtime-properties!
      (lambda (_%bind147878%_ _%props147879%_)
        (letrec ((_%eval-prop147881%_
                  (lambda (_%prop147941%_)
                    (gx#eval-expression+1 _%prop147941%_))))
          (let _%loop147883%_ ((_%rest147885%_ _%props147879%_)
                               (_%props147886%_ '()))
            (let* ((_%e147887147898%_ _%rest147885%_)
                   (_%E147896147902%_
                    (lambda ()
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _%e147887147898%_)))
                   (_%E147889147906%_
                    (lambda ()
                      (if (gx#stx-null? _%e147887147898%_)
                          (if (null? _%props147886%_)
                              '#!void
                              (##structure-set!
                               _%bind147878%_
                               (reverse! _%props147886%_)
                               '4
                               gx#binding::t
                               '#f))
                          (_%E147896147902%_))))
                   (_%E147888147937%_
                    (lambda ()
                      (if (gx#stx-pair? _%e147887147898%_)
                          (let ((_%e147890147910%_
                                 (gx#syntax-e _%e147887147898%_)))
                            (let ((_%hd147891147913%_
                                   (##car _%e147890147910%_))
                                  (_%tl147892147915%_
                                   (##cdr _%e147890147910%_)))
                              (let ((_%key147918%_ _%hd147891147913%_))
                                (if (gx#stx-pair? _%tl147892147915%_)
                                    (let ((_%e147893147920%_
                                           (gx#syntax-e _%tl147892147915%_)))
                                      (let ((_%hd147894147923%_
                                             (##car _%e147893147920%_))
                                            (_%tl147895147925%_
                                             (##cdr _%e147893147920%_)))
                                        (let* ((_%prop147928%_
                                                _%hd147894147923%_)
                                               (_%rest147930%_
                                                _%tl147895147925%_))
                                          (if (gx#stx-keyword? _%key147918%_)
                                              (let* ((_%key147932%_
                                                      (gx#stx-e _%key147918%_))
                                                     (_%$e147934%_
                                                      _%key147932%_))
                                                (if (eq? 'macro: _%$e147934%_)
                                                    (begin
                                                      (##structure-set!
                                                       _%bind147878%_
                                                       (gx#core-quote-syntax__0
                                                        _%prop147928%_)
                                                       '6
                                                       gx#runtime-binding::t
                                                       '#f)
                                                      (_%loop147883%_
                                                       _%rest147930%_
                                                       _%props147886%_))
                                                    (if (eq? 'type:
                                                             _%$e147934%_)
                                                        (begin
                                                          (##structure-set!
                                                           _%bind147878%_
                                                           (gx#eval-expression+1
                                                            _%prop147928%_)
                                                           '5
                                                           gx#runtime-binding::t
                                                           '#f)
                                                          (_%loop147883%_
                                                           _%rest147930%_
                                                           _%props147886%_))
                                                        (_%loop147883%_
                                                         _%rest147930%_
                                                         (cons (gx#eval-expression+1
                                                                _%prop147928%_)
                                                               (cons _%key147932%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%props147886%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E147889147906%_)))))
                                    (_%E147889147906%_)))))
                          (_%E147889147906%_)))))
              (_%E147888147937%_))))))
    (define gx#core-expand-define-syntax%
      (lambda (_%stx147821%_)
        (let* ((_%e147822147835%_ _%stx147821%_)
               (_%E147824147839%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e147822147835%_)))
               (_%E147823147874%_
                (lambda ()
                  (if (gx#stx-pair? _%e147822147835%_)
                      (let ((_%e147825147843%_
                             (gx#syntax-e _%e147822147835%_)))
                        (let ((_%hd147826147846%_ (##car _%e147825147843%_))
                              (_%tl147827147848%_ (##cdr _%e147825147843%_)))
                          (if (gx#stx-pair? _%tl147827147848%_)
                              (let ((_%e147828147851%_
                                     (gx#syntax-e _%tl147827147848%_)))
                                (let ((_%hd147829147854%_
                                       (##car _%e147828147851%_))
                                      (_%tl147830147856%_
                                       (##cdr _%e147828147851%_)))
                                  (let ((_%id147859%_ _%hd147829147854%_))
                                    (if (gx#stx-pair? _%tl147830147856%_)
                                        (let ((_%e147831147861%_
                                               (gx#syntax-e
                                                _%tl147830147856%_)))
                                          (let ((_%hd147832147864%_
                                                 (##car _%e147831147861%_))
                                                (_%tl147833147866%_
                                                 (##cdr _%e147831147861%_)))
                                            (let ((_%expr147869%_
                                                   _%hd147832147864%_))
                                              (if (gx#stx-null?
                                                   _%tl147833147866%_)
                                                  (if (gx#identifier?
                                                       _%id147859%_)
                                                      (let ((_g149035_
                                                             (gx#core-expand-expression+1
                                                              _%expr147869%_)))
                                                        (begin
                                                          (let ((_g149036_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g149035_)
                             (##values-length _g149035_)
                             1)))
                    (if (not (##fx= _g149036_ 2))
                        (error "Context expects 2 values" _g149036_)))
                  (let ((_%e-stx147871%_ (##values-ref _g149035_ 0))
                        (_%e147872%_ (##values-ref _g149035_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _%id147859%_ _%e147872%_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _%id147859%_)
                                   (cons _%e-stx147871%_ '())))
                       (gx#stx-source _%stx147821%_))))))
              (_%E147824147839%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E147824147839%_)))))
                                        (_%E147824147839%_)))))
                              (_%E147824147839%_))))
                      (_%E147824147839%_)))))
          (_%E147823147874%_))))
    (define gx#core-expand-define-alias%
      (lambda (_%stx147765%_)
        (let* ((_%e147766147779%_ _%stx147765%_)
               (_%E147768147783%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e147766147779%_)))
               (_%E147767147817%_
                (lambda ()
                  (if (gx#stx-pair? _%e147766147779%_)
                      (let ((_%e147769147787%_
                             (gx#syntax-e _%e147766147779%_)))
                        (let ((_%hd147770147790%_ (##car _%e147769147787%_))
                              (_%tl147771147792%_ (##cdr _%e147769147787%_)))
                          (if (gx#stx-pair? _%tl147771147792%_)
                              (let ((_%e147772147795%_
                                     (gx#syntax-e _%tl147771147792%_)))
                                (let ((_%hd147773147798%_
                                       (##car _%e147772147795%_))
                                      (_%tl147774147800%_
                                       (##cdr _%e147772147795%_)))
                                  (let ((_%id147803%_ _%hd147773147798%_))
                                    (if (gx#stx-pair? _%tl147774147800%_)
                                        (let ((_%e147775147805%_
                                               (gx#syntax-e
                                                _%tl147774147800%_)))
                                          (let ((_%hd147776147808%_
                                                 (##car _%e147775147805%_))
                                                (_%tl147777147810%_
                                                 (##cdr _%e147775147805%_)))
                                            (let ((_%alias-id147813%_
                                                   _%hd147776147808%_))
                                              (if (gx#stx-null?
                                                   _%tl147777147810%_)
                                                  (if (and (gx#identifier?
                                                            _%id147803%_)
                                                           (gx#identifier?
                                                            _%alias-id147813%_))
                                                      (let ((_%alias-id147815%_
                                                             (gx#core-quote-syntax__0
                                                              _%alias-id147813%_)))
                                                        (gx#core-bind-alias!__0
                                                         _%id147803%_
                                                         _%alias-id147815%_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id147803%_)
                             (cons _%alias-id147815%_ '())))))
              (_%E147768147783%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E147768147783%_)))))
                                        (_%E147768147783%_)))))
                              (_%E147768147783%_))))
                      (_%E147768147783%_)))))
          (_%E147767147817%_))))
    (define gx#core-expand-lambda%__%
      (lambda (_%stx147708%_ _%wrap?147709%_)
        (let* ((_%e147710147720%_ _%stx147708%_)
               (_%E147712147724%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e147710147720%_)))
               (_%E147711147751%_
                (lambda ()
                  (if (gx#stx-pair? _%e147710147720%_)
                      (let ((_%e147713147728%_
                             (gx#syntax-e _%e147710147720%_)))
                        (let ((_%hd147714147731%_ (##car _%e147713147728%_))
                              (_%tl147715147733%_ (##cdr _%e147713147728%_)))
                          (if (gx#stx-pair? _%tl147715147733%_)
                              (let ((_%e147716147736%_
                                     (gx#syntax-e _%tl147715147733%_)))
                                (let ((_%hd147717147739%_
                                       (##car _%e147716147736%_))
                                      (_%tl147718147741%_
                                       (##cdr _%e147716147736%_)))
                                  (let* ((_%hd147744%_ _%hd147717147739%_)
                                         (_%body147746%_ _%tl147718147741%_))
                                    (if (gx#core-bind-values? _%hd147744%_)
                                        (call-with-parameters__1
                                         (lambda ()
                                           (gx#core-bind-values!__0
                                            _%hd147744%_)
                                           (let ((_%body147749%_
                                                  (cons (gx#core-quote-bind-values
                                                         _%hd147744%_)
                                                        (cons (gx#core-expand-local-block
                                                               _%stx147708%_
                                                               _%body147746%_)
                                                              '()))))
                                             (if _%wrap?147709%_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _%body147749%_)
                                                  (gx#stx-source
                                                   _%stx147708%_))
                                                 _%body147749%_)))
                                         gx#current-expander-context
                                         (let ((__obj149018
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj149018)
                                           __obj149018))
                                        (_%E147712147724%_)))))
                              (_%E147712147724%_))))
                      (_%E147712147724%_)))))
          (_%E147711147751%_))))
    (define gx#core-expand-lambda%__0
      (lambda (_%stx147758%_)
        (let ((_%wrap?147760%_ '#t))
          (gx#core-expand-lambda%__% _%stx147758%_ _%wrap?147760%_))))
    (define gx#core-expand-lambda%
      (lambda _g149037_
        (let ((_g149038_ (##length _g149037_)))
          (cond ((##fx= _g149038_ 1)
                 (apply gx#core-expand-lambda%__0 _g149037_))
                ((##fx= _g149038_ 2)
                 (apply gx#core-expand-lambda%__% _g149037_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g149037_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_%stx147672%_)
        (let* ((_%e147673147680%_ _%stx147672%_)
               (_%E147675147684%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e147673147680%_)))
               (_%E147674147703%_
                (lambda ()
                  (if (gx#stx-pair? _%e147673147680%_)
                      (let ((_%e147676147688%_
                             (gx#syntax-e _%e147673147680%_)))
                        (let ((_%hd147677147691%_ (##car _%e147676147688%_))
                              (_%tl147678147693%_ (##cdr _%e147676147688%_)))
                          (let ((_%clauses147696%_ _%tl147678147693%_))
                            (if (gx#stx-list? _%clauses147696%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_%clause147698%_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _%clause147698%_)
                                       (let ((_%$e147700%_
                                              (gx#stx-source
                                               _%clause147698%_)))
                                         (if _%$e147700%_
                                             _%$e147700%_
                                             (gx#stx-source _%stx147672%_))))
                                      '#f))
                                   _%clauses147696%_))
                                 (gx#stx-source _%stx147672%_))
                                (_%E147675147684%_)))))
                      (_%E147675147684%_)))))
          (_%E147674147703%_))))
    (define gx#core-expand-let-values%
      (lambda (_%stx147626%_)
        (let* ((_%e147627147637%_ _%stx147626%_)
               (_%E147629147641%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e147627147637%_)))
               (_%E147628147668%_
                (lambda ()
                  (if (gx#stx-pair? _%e147627147637%_)
                      (let ((_%e147630147645%_
                             (gx#syntax-e _%e147627147637%_)))
                        (let ((_%hd147631147648%_ (##car _%e147630147645%_))
                              (_%tl147632147650%_ (##cdr _%e147630147645%_)))
                          (if (gx#stx-pair? _%tl147632147650%_)
                              (let ((_%e147633147653%_
                                     (gx#syntax-e _%tl147632147650%_)))
                                (let ((_%hd147634147656%_
                                       (##car _%e147633147653%_))
                                      (_%tl147635147658%_
                                       (##cdr _%e147633147653%_)))
                                  (let* ((_%hd147661%_ _%hd147634147656%_)
                                         (_%body147663%_ _%tl147635147658%_))
                                    (if (gx#core-expand-let-bind? _%hd147661%_)
                                        (let ((_%expressions147665%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _%hd147661%_)))
                                          (call-with-parameters__1
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _%hd147661%_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _%hd147661%_
                                                           _%expressions147665%_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%stx147626%_
                         _%body147663%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _%stx147626%_)))
                                           gx#current-expander-context
                                           (let ((__obj149019
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!__0
                                              __obj149019)
                                             __obj149019)))
                                        (_%E147629147641%_)))))
                              (_%E147629147641%_))))
                      (_%E147629147641%_)))))
          (_%E147628147668%_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_%stx147571%_ _%form147572%_)
        (let* ((_%e147573147583%_ _%stx147571%_)
               (_%E147575147587%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e147573147583%_)))
               (_%E147574147612%_
                (lambda ()
                  (if (gx#stx-pair? _%e147573147583%_)
                      (let ((_%e147576147591%_
                             (gx#syntax-e _%e147573147583%_)))
                        (let ((_%hd147577147594%_ (##car _%e147576147591%_))
                              (_%tl147578147596%_ (##cdr _%e147576147591%_)))
                          (if (gx#stx-pair? _%tl147578147596%_)
                              (let ((_%e147579147599%_
                                     (gx#syntax-e _%tl147578147596%_)))
                                (let ((_%hd147580147602%_
                                       (##car _%e147579147599%_))
                                      (_%tl147581147604%_
                                       (##cdr _%e147579147599%_)))
                                  (let* ((_%hd147607%_ _%hd147580147602%_)
                                         (_%body147609%_ _%tl147581147604%_))
                                    (if (gx#core-expand-let-bind? _%hd147607%_)
                                        (call-with-parameters__1
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _%hd147607%_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _%form147572%_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _%hd147607%_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _%hd147607%_))
                                                        (cons (gx#core-expand-local-block
                                                               _%stx147571%_
                                                               _%body147609%_)
                                                              '())))
                                            (gx#stx-source _%stx147571%_)))
                                         gx#current-expander-context
                                         (let ((__obj149020
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj149020)
                                           __obj149020))
                                        (_%E147575147587%_)))))
                              (_%E147575147587%_))))
                      (_%E147575147587%_)))))
          (_%E147574147612%_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_%stx147619%_)
        (let ((_%form147621%_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _%stx147619%_ _%form147621%_))))
    (define gx#core-expand-letrec-values%
      (lambda _g149039_
        (let ((_g149040_ (##length _g149039_)))
          (cond ((##fx= _g149040_ 1)
                 (apply gx#core-expand-letrec-values%__0 _g149039_))
                ((##fx= _g149040_ 2)
                 (apply gx#core-expand-letrec-values%__% _g149039_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g149039_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_%stx147568%_)
        (gx#core-expand-letrec-values%__% _%stx147568%_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_%stx147525%_)
        (if (gx#stx-list? _%stx147525%_)
            (gx#stx-andmap
             (lambda (_%bind147527%_)
               (let* ((_%e147528147538%_ _%bind147527%_)
                      (_%E147530147542%_ (lambda () '#f))
                      (_%E147529147564%_
                       (lambda ()
                         (if (gx#stx-pair? _%e147528147538%_)
                             (let ((_%e147531147546%_
                                    (gx#syntax-e _%e147528147538%_)))
                               (let ((_%hd147532147549%_
                                      (##car _%e147531147546%_))
                                     (_%tl147533147551%_
                                      (##cdr _%e147531147546%_)))
                                 (let ((_%hd147554%_ _%hd147532147549%_))
                                   (if (gx#stx-pair? _%tl147533147551%_)
                                       (let ((_%e147534147556%_
                                              (gx#syntax-e
                                               _%tl147533147551%_)))
                                         (let ((_%hd147535147559%_
                                                (##car _%e147534147556%_))
                                               (_%tl147536147561%_
                                                (##cdr _%e147534147556%_)))
                                           (if (gx#stx-null?
                                                _%tl147536147561%_)
                                               (gx#core-bind-values?
                                                _%hd147554%_)
                                               (_%E147530147542%_))))
                                       (_%E147530147542%_)))))
                             (_%E147530147542%_)))))
                 (_%E147529147564%_)))
             _%stx147525%_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_%bind147484%_)
        (let* ((_%e147485147495%_ _%bind147484%_)
               (_%E147487147499%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e147485147495%_)))
               (_%E147486147521%_
                (lambda ()
                  (if (gx#stx-pair? _%e147485147495%_)
                      (let ((_%e147488147503%_
                             (gx#syntax-e _%e147485147495%_)))
                        (let ((_%hd147489147506%_ (##car _%e147488147503%_))
                              (_%tl147490147508%_ (##cdr _%e147488147503%_)))
                          (if (gx#stx-pair? _%tl147490147508%_)
                              (let ((_%e147491147511%_
                                     (gx#syntax-e _%tl147490147508%_)))
                                (let ((_%hd147492147514%_
                                       (##car _%e147491147511%_))
                                      (_%tl147493147516%_
                                       (##cdr _%e147491147511%_)))
                                  (let ((_%expr147519%_ _%hd147492147514%_))
                                    (if (gx#stx-null? _%tl147493147516%_)
                                        (gx#core-expand-expression
                                         _%expr147519%_)
                                        (_%E147487147499%_)))))
                              (_%E147487147499%_))))
                      (_%E147487147499%_)))))
          (_%E147486147521%_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_%bind147443%_)
        (let* ((_%e147444147454%_ _%bind147443%_)
               (_%E147446147458%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e147444147454%_)))
               (_%E147445147480%_
                (lambda ()
                  (if (gx#stx-pair? _%e147444147454%_)
                      (let ((_%e147447147462%_
                             (gx#syntax-e _%e147444147454%_)))
                        (let ((_%hd147448147465%_ (##car _%e147447147462%_))
                              (_%tl147449147467%_ (##cdr _%e147447147462%_)))
                          (let ((_%hd147470%_ _%hd147448147465%_))
                            (if (gx#stx-pair? _%tl147449147467%_)
                                (let ((_%e147450147472%_
                                       (gx#syntax-e _%tl147449147467%_)))
                                  (let ((_%hd147451147475%_
                                         (##car _%e147450147472%_))
                                        (_%tl147452147477%_
                                         (##cdr _%e147450147472%_)))
                                    (if (gx#stx-null? _%tl147452147477%_)
                                        (gx#core-bind-values!__0 _%hd147470%_)
                                        (_%E147446147458%_))))
                                (_%E147446147458%_)))))
                      (_%E147446147458%_)))))
          (_%E147445147480%_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_%bind147401%_ _%expr147402%_)
        (let* ((_%e147403147413%_ _%bind147401%_)
               (_%E147405147417%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e147403147413%_)))
               (_%E147404147439%_
                (lambda ()
                  (if (gx#stx-pair? _%e147403147413%_)
                      (let ((_%e147406147421%_
                             (gx#syntax-e _%e147403147413%_)))
                        (let ((_%hd147407147424%_ (##car _%e147406147421%_))
                              (_%tl147408147426%_ (##cdr _%e147406147421%_)))
                          (let ((_%hd147429%_ _%hd147407147424%_))
                            (if (gx#stx-pair? _%tl147408147426%_)
                                (let ((_%e147409147431%_
                                       (gx#syntax-e _%tl147408147426%_)))
                                  (let ((_%hd147410147434%_
                                         (##car _%e147409147431%_))
                                        (_%tl147411147436%_
                                         (##cdr _%e147409147431%_)))
                                    (if (gx#stx-null? _%tl147411147436%_)
                                        (cons (gx#core-quote-bind-values
                                               _%hd147429%_)
                                              (cons _%expr147402%_ '()))
                                        (_%E147405147417%_))))
                                (_%E147405147417%_)))))
                      (_%E147405147417%_)))))
          (_%E147404147439%_))))
    (define gx#core-expand-let-syntax%
      (lambda (_%stx147355%_)
        (let* ((_%e147356147366%_ _%stx147355%_)
               (_%E147358147370%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e147356147366%_)))
               (_%E147357147397%_
                (lambda ()
                  (if (gx#stx-pair? _%e147356147366%_)
                      (let ((_%e147359147374%_
                             (gx#syntax-e _%e147356147366%_)))
                        (let ((_%hd147360147377%_ (##car _%e147359147374%_))
                              (_%tl147361147379%_ (##cdr _%e147359147374%_)))
                          (if (gx#stx-pair? _%tl147361147379%_)
                              (let ((_%e147362147382%_
                                     (gx#syntax-e _%tl147361147379%_)))
                                (let ((_%hd147363147385%_
                                       (##car _%e147362147382%_))
                                      (_%tl147364147387%_
                                       (##cdr _%e147362147382%_)))
                                  (let* ((_%hd147390%_ _%hd147363147385%_)
                                         (_%body147392%_ _%tl147364147387%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd147390%_)
                                        (let ((_%expanders147394%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _%hd147390%_)))
                                          (call-with-parameters__1
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _%hd147390%_
                                              _%expanders147394%_)
                                             (gx#core-expand-local-block
                                              _%stx147355%_
                                              _%body147392%_))
                                           gx#current-expander-context
                                           (let ((__obj149021
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!__0
                                              __obj149021)
                                             __obj149021)))
                                        (_%E147358147370%_)))))
                              (_%E147358147370%_))))
                      (_%E147358147370%_)))))
          (_%E147357147397%_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_%stx147304%_)
        (let* ((_%e147305147315%_ _%stx147304%_)
               (_%E147307147319%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e147305147315%_)))
               (_%E147306147351%_
                (lambda ()
                  (if (gx#stx-pair? _%e147305147315%_)
                      (let ((_%e147308147323%_
                             (gx#syntax-e _%e147305147315%_)))
                        (let ((_%hd147309147326%_ (##car _%e147308147323%_))
                              (_%tl147310147328%_ (##cdr _%e147308147323%_)))
                          (if (gx#stx-pair? _%tl147310147328%_)
                              (let ((_%e147311147331%_
                                     (gx#syntax-e _%tl147310147328%_)))
                                (let ((_%hd147312147334%_
                                       (##car _%e147311147331%_))
                                      (_%tl147313147336%_
                                       (##cdr _%e147311147331%_)))
                                  (let* ((_%hd147339%_ _%hd147312147334%_)
                                         (_%body147341%_ _%tl147313147336%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd147339%_)
                                        (call-with-parameters__1
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _%hd147339%_
                                            (make-list
                                             (gx#stx-length _%hd147339%_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_%g147343147346%_
                                                     _%g147344147348%_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _%g147343147346%_
                                               _%g147344147348%_
                                               '#t))
                                            _%hd147339%_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _%hd147339%_))
                                           (gx#core-expand-local-block
                                            _%stx147304%_
                                            _%body147341%_))
                                         gx#current-expander-context
                                         (let ((__obj149022
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj149022)
                                           __obj149022))
                                        (_%E147307147319%_)))))
                              (_%E147307147319%_))))
                      (_%E147307147319%_)))))
          (_%E147306147351%_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_%stx147261%_)
        (if (gx#stx-list? _%stx147261%_)
            (gx#stx-andmap
             (lambda (_%bind147263%_)
               (let* ((_%e147264147274%_ _%bind147263%_)
                      (_%E147266147278%_ (lambda () '#f))
                      (_%E147265147300%_
                       (lambda ()
                         (if (gx#stx-pair? _%e147264147274%_)
                             (let ((_%e147267147282%_
                                    (gx#syntax-e _%e147264147274%_)))
                               (let ((_%hd147268147285%_
                                      (##car _%e147267147282%_))
                                     (_%tl147269147287%_
                                      (##cdr _%e147267147282%_)))
                                 (let ((_%hd147290%_ _%hd147268147285%_))
                                   (if (gx#stx-pair? _%tl147269147287%_)
                                       (let ((_%e147270147292%_
                                              (gx#syntax-e
                                               _%tl147269147287%_)))
                                         (let ((_%hd147271147295%_
                                                (##car _%e147270147292%_))
                                               (_%tl147272147297%_
                                                (##cdr _%e147270147292%_)))
                                           (if (gx#stx-null?
                                                _%tl147272147297%_)
                                               (gx#identifier? _%hd147290%_)
                                               (_%E147266147278%_))))
                                       (_%E147266147278%_)))))
                             (_%E147266147278%_)))))
                 (_%E147265147300%_)))
             _%stx147261%_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_%bind147217%_)
        (let* ((_%e147218147228%_ _%bind147217%_)
               (_%E147220147232%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e147218147228%_)))
               (_%E147219147257%_
                (lambda ()
                  (if (gx#stx-pair? _%e147218147228%_)
                      (let ((_%e147221147236%_
                             (gx#syntax-e _%e147218147228%_)))
                        (let ((_%hd147222147239%_ (##car _%e147221147236%_))
                              (_%tl147223147241%_ (##cdr _%e147221147236%_)))
                          (if (gx#stx-pair? _%tl147223147241%_)
                              (let ((_%e147224147244%_
                                     (gx#syntax-e _%tl147223147241%_)))
                                (let ((_%hd147225147247%_
                                       (##car _%e147224147244%_))
                                      (_%tl147226147249%_
                                       (##cdr _%e147224147244%_)))
                                  (let ((_%expr147252%_ _%hd147225147247%_))
                                    (if (gx#stx-null? _%tl147226147249%_)
                                        (let ((_g149041_
                                               (gx#core-expand-expression+1
                                                _%expr147252%_)))
                                          (begin
                                            (let ((_g149042_
                                                   (if (##values? _g149041_)
                                                       (##values-length
                                                        _g149041_)
                                                       1)))
                                              (if (not (##fx= _g149042_ 2))
                                                  (error "Context expects 2 values"
                                                         _g149042_)))
                                            (let ((_%_147254%_
                                                   (##values-ref _g149041_ 0))
                                                  (_%e147255%_
                                                   (##values-ref _g149041_ 1)))
                                              _%e147255%_)))
                                        (_%E147220147232%_)))))
                              (_%E147220147232%_))))
                      (_%E147220147232%_)))))
          (_%E147219147257%_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_%bind147162%_ _%e147163%_ _%rebind?147164%_)
        (let* ((_%e147165147175%_ _%bind147162%_)
               (_%E147167147179%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e147165147175%_)))
               (_%E147166147201%_
                (lambda ()
                  (if (gx#stx-pair? _%e147165147175%_)
                      (let ((_%e147168147183%_
                             (gx#syntax-e _%e147165147175%_)))
                        (let ((_%hd147169147186%_ (##car _%e147168147183%_))
                              (_%tl147170147188%_ (##cdr _%e147168147183%_)))
                          (let ((_%id147191%_ _%hd147169147186%_))
                            (if (gx#stx-pair? _%tl147170147188%_)
                                (let ((_%e147171147193%_
                                       (gx#syntax-e _%tl147170147188%_)))
                                  (let ((_%hd147172147196%_
                                         (##car _%e147171147193%_))
                                        (_%tl147173147198%_
                                         (##cdr _%e147171147193%_)))
                                    (if (gx#stx-null? _%tl147173147198%_)
                                        (gx#core-bind-syntax!__1
                                         _%id147191%_
                                         _%e147163%_
                                         _%rebind?147164%_)
                                        (_%E147167147179%_))))
                                (_%E147167147179%_)))))
                      (_%E147167147179%_)))))
          (_%E147166147201%_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_%bind147208%_ _%e147209%_)
        (let ((_%rebind?147211%_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _%bind147208%_
           _%e147209%_
           _%rebind?147211%_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g149043_
        (let ((_g149044_ (##length _g149043_)))
          (cond ((##fx= _g149044_ 2)
                 (apply gx#core-expand-let-bind-syntax!__0 _g149043_))
                ((##fx= _g149044_ 3)
                 (apply gx#core-expand-let-bind-syntax!__% _g149043_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g149043_))))))
    (define gx#core-expand-expression%
      (lambda (_%stx147120%_)
        (let* ((_%e147121147131%_ _%stx147120%_)
               (_%E147123147135%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e147121147131%_)))
               (_%E147122147157%_
                (lambda ()
                  (if (gx#stx-pair? _%e147121147131%_)
                      (let ((_%e147124147139%_
                             (gx#syntax-e _%e147121147131%_)))
                        (let ((_%hd147125147142%_ (##car _%e147124147139%_))
                              (_%tl147126147144%_ (##cdr _%e147124147139%_)))
                          (if (gx#stx-pair? _%tl147126147144%_)
                              (let ((_%e147127147147%_
                                     (gx#syntax-e _%tl147126147144%_)))
                                (let ((_%hd147128147150%_
                                       (##car _%e147127147147%_))
                                      (_%tl147129147152%_
                                       (##cdr _%e147127147147%_)))
                                  (let ((_%expr147155%_ _%hd147128147150%_))
                                    (if (gx#stx-null? _%tl147129147152%_)
                                        (gx#core-expand-expression
                                         _%expr147155%_)
                                        (_%E147123147135%_)))))
                              (_%E147123147135%_))))
                      (_%E147123147135%_)))))
          (_%E147122147157%_))))
    (define gx#core-expand-quote%
      (lambda (_%stx147079%_)
        (let* ((_%e147080147090%_ _%stx147079%_)
               (_%E147082147094%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e147080147090%_)))
               (_%E147081147116%_
                (lambda ()
                  (if (gx#stx-pair? _%e147080147090%_)
                      (let ((_%e147083147098%_
                             (gx#syntax-e _%e147080147090%_)))
                        (let ((_%hd147084147101%_ (##car _%e147083147098%_))
                              (_%tl147085147103%_ (##cdr _%e147083147098%_)))
                          (if (gx#stx-pair? _%tl147085147103%_)
                              (let ((_%e147086147106%_
                                     (gx#syntax-e _%tl147085147103%_)))
                                (let ((_%hd147087147109%_
                                       (##car _%e147086147106%_))
                                      (_%tl147088147111%_
                                       (##cdr _%e147086147106%_)))
                                  (let ((_%e147114%_ _%hd147087147109%_))
                                    (if (gx#stx-null? _%tl147088147111%_)
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#quote)
                                               (cons (gx#syntax->datum
                                                      _%e147114%_)
                                                     '()))
                                         (gx#stx-source _%stx147079%_))
                                        (_%E147082147094%_)))))
                              (_%E147082147094%_))))
                      (_%E147082147094%_)))))
          (_%E147081147116%_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_%stx147038%_)
        (let* ((_%e147039147049%_ _%stx147038%_)
               (_%E147041147053%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e147039147049%_)))
               (_%E147040147075%_
                (lambda ()
                  (if (gx#stx-pair? _%e147039147049%_)
                      (let ((_%e147042147057%_
                             (gx#syntax-e _%e147039147049%_)))
                        (let ((_%hd147043147060%_ (##car _%e147042147057%_))
                              (_%tl147044147062%_ (##cdr _%e147042147057%_)))
                          (if (gx#stx-pair? _%tl147044147062%_)
                              (let ((_%e147045147065%_
                                     (gx#syntax-e _%tl147044147062%_)))
                                (let ((_%hd147046147068%_
                                       (##car _%e147045147065%_))
                                      (_%tl147047147070%_
                                       (##cdr _%e147045147065%_)))
                                  (let ((_%e147073%_ _%hd147046147068%_))
                                    (if (gx#stx-null? _%tl147047147070%_)
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#quote-syntax)
                                               (cons (gx#core-quote-syntax__0
                                                      _%e147073%_)
                                                     '()))
                                         (gx#stx-source _%stx147038%_))
                                        (_%E147041147053%_)))))
                              (_%E147041147053%_))))
                      (_%E147041147053%_)))))
          (_%E147040147075%_))))
    (define gx#core-expand-call%
      (lambda (_%stx146932%_)
        (letrec ((_%expand-runtime-call146934%_
                  (lambda (_%rator-expr147035%_ _%args147036%_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons*
                      '%#call
                      _%rator-expr147035%_
                      (gx#stx-map1 gx#core-expand-expression _%args147036%_))
                     (gx#stx-source _%stx146932%_)))))
          (let* ((_%e146935146945%_ _%stx146932%_)
                 (_%E146937146949%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e146935146945%_)))
                 (_%E146936147031%_
                  (lambda ()
                    (if (gx#stx-pair? _%e146935146945%_)
                        (let ((_%e146938146953%_
                               (gx#syntax-e _%e146935146945%_)))
                          (let ((_%hd146939146956%_ (##car _%e146938146953%_))
                                (_%tl146940146958%_ (##cdr _%e146938146953%_)))
                            (if (gx#stx-pair? _%tl146940146958%_)
                                (let ((_%e146941146961%_
                                       (gx#syntax-e _%tl146940146958%_)))
                                  (let ((_%hd146942146964%_
                                         (##car _%e146941146961%_))
                                        (_%tl146943146966%_
                                         (##cdr _%e146941146961%_)))
                                    (let* ((_%rator146969%_ _%hd146942146964%_)
                                           (_%args146971%_ _%tl146943146966%_))
                                      (if (gx#stx-list? _%args146971%_)
                                          (let* ((_%rator-expr146973%_
                                                  (gx#core-expand-expression
                                                   _%rator146969%_))
                                                 (_%e146974146984%_
                                                  _%rator-expr146973%_)
                                                 (_%E146976146988%_
                                                  (lambda ()
                                                    (_%expand-runtime-call146934%_
                                                     _%rator-expr146973%_
                                                     _%args146971%_)))
                                                 (_%E146975147027%_
                                                  (lambda ()
                                                    (if (gx#stx-pair?
                                                         _%e146974146984%_)
                                                        (let ((_%e146977146992%_
                                                               (gx#syntax-e
                                                                _%e146974146984%_)))
                                                          (let ((_%hd146978146995%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e146977146992%_))
                        (_%tl146979146997%_ (##cdr _%e146977146992%_)))
                    (if (and (gx#identifier? _%hd146978146995%_)
                             (gx#core-identifier=? _%hd146978146995%_ '%#ref))
                        (if (gx#stx-pair? _%tl146979146997%_)
                            (let ((_%e146980147000%_
                                   (gx#syntax-e _%tl146979146997%_)))
                              (let ((_%hd146981147003%_
                                     (##car _%e146980147000%_))
                                    (_%tl146982147005%_
                                     (##cdr _%e146980147000%_)))
                                (let ((_%id147008%_ _%hd146981147003%_))
                                  (if (gx#stx-null? _%tl146982147005%_)
                                      (let ((_%$e147010%_
                                             (gx#resolve-identifier__0
                                              (gx#datum->syntax__0 '#f 'id))))
                                        (if _%$e147010%_
                                            ((lambda (_%bind147013%_)
                                               (let _%again147015%_ ((_%bind147017%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%bind147013%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_%$e147019%_
                                                        (if (##structure-instance-of?
                                                             _%bind147017%_
                                                             'gx#runtime-binding::t)
                                                            (##unchecked-structure-ref
                                                             _%bind147017%_
                                                             '6
                                                             '#f
                                                             '#f)
                                                            '#f)))
                                                   (if _%$e147019%_
                                                       ((lambda (_%macro147022%_)
                                                          (gx#core-expand-expression
                                                           (gx#stx-wrap-source
                                                            (cons (gx#syntax-local-value__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%macro147022%_)
                          _%args146971%_)
                    (gx#stx-source _%stx146932%_))))
                _%$e147019%_)
               (if (##structure-direct-instance-of?
                    _%bind147017%_
                    'gx#import-binding::t)
                   (_%again147015%_
                    (##unchecked-structure-ref _%bind147017%_ '5 '#f '#f))
                   (_%expand-runtime-call146934%_
                    _%rator-expr146973%_
                    _%args146971%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%$e147010%_)
                                            (_%expand-runtime-call146934%_
                                             _%rator-expr146973%_
                                             _%args146971%_)))
                                      (_%E146976146988%_)))))
                            (_%E146976146988%_))
                        (_%E146976146988%_))))
                (_%E146976146988%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E146975147027%_))
                                          (_%E146937146949%_)))))
                                (_%E146937146949%_))))
                        (_%E146937146949%_)))))
            (_%E146936147031%_)))))
    (define gx#core-expand-if%
      (lambda (_%stx146865%_)
        (let* ((_%e146866146882%_ _%stx146865%_)
               (_%E146868146886%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e146866146882%_)))
               (_%E146867146928%_
                (lambda ()
                  (if (gx#stx-pair? _%e146866146882%_)
                      (let ((_%e146869146890%_
                             (gx#syntax-e _%e146866146882%_)))
                        (let ((_%hd146870146893%_ (##car _%e146869146890%_))
                              (_%tl146871146895%_ (##cdr _%e146869146890%_)))
                          (if (gx#stx-pair? _%tl146871146895%_)
                              (let ((_%e146872146898%_
                                     (gx#syntax-e _%tl146871146895%_)))
                                (let ((_%hd146873146901%_
                                       (##car _%e146872146898%_))
                                      (_%tl146874146903%_
                                       (##cdr _%e146872146898%_)))
                                  (let ((_%test146906%_ _%hd146873146901%_))
                                    (if (gx#stx-pair? _%tl146874146903%_)
                                        (let ((_%e146875146908%_
                                               (gx#syntax-e
                                                _%tl146874146903%_)))
                                          (let ((_%hd146876146911%_
                                                 (##car _%e146875146908%_))
                                                (_%tl146877146913%_
                                                 (##cdr _%e146875146908%_)))
                                            (let ((_%K146916%_
                                                   _%hd146876146911%_))
                                              (if (gx#stx-pair?
                                                   _%tl146877146913%_)
                                                  (let ((_%e146878146918%_
                                                         (gx#syntax-e
                                                          _%tl146877146913%_)))
                                                    (let ((_%hd146879146921%_
                                                           (##car _%e146878146918%_))
                                                          (_%tl146880146923%_
                                                           (##cdr _%e146878146918%_)))
                                                      (let ((_%E146926%_
                                                             _%hd146879146921%_))
                                                        (if (gx#stx-null?
                                                             _%tl146880146923%_)
                                                            (gx#core-quote-syntax__1
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#if)
                           (cons (gx#core-expand-expression _%test146906%_)
                                 (cons (gx#core-expand-expression _%K146916%_)
                                       (cons (gx#core-expand-expression
                                              _%E146926%_)
                                             '()))))
                     (gx#stx-source _%stx146865%_))
                    (_%E146868146886%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E146868146886%_)))))
                                        (_%E146868146886%_)))))
                              (_%E146868146886%_))))
                      (_%E146868146886%_)))))
          (_%E146867146928%_))))
    (define gx#core-expand-ref%
      (lambda (_%stx146824%_)
        (let* ((_%e146825146835%_ _%stx146824%_)
               (_%E146827146839%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e146825146835%_)))
               (_%E146826146861%_
                (lambda ()
                  (if (gx#stx-pair? _%e146825146835%_)
                      (let ((_%e146828146843%_
                             (gx#syntax-e _%e146825146835%_)))
                        (let ((_%hd146829146846%_ (##car _%e146828146843%_))
                              (_%tl146830146848%_ (##cdr _%e146828146843%_)))
                          (if (gx#stx-pair? _%tl146830146848%_)
                              (let ((_%e146831146851%_
                                     (gx#syntax-e _%tl146830146848%_)))
                                (let ((_%hd146832146854%_
                                       (##car _%e146831146851%_))
                                      (_%tl146833146856%_
                                       (##cdr _%e146831146851%_)))
                                  (let ((_%id146859%_ _%hd146832146854%_))
                                    (if (gx#stx-null? _%tl146833146856%_)
                                        (if (gx#identifier? _%id146859%_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _%id146859%_
                                                          _%stx146824%_)
                                                         '()))
                                             (gx#stx-source _%stx146824%_))
                                            (_%E146827146839%_))
                                        (_%E146827146839%_)))))
                              (_%E146827146839%_))))
                      (_%E146827146839%_)))))
          (_%E146826146861%_))))
    (define gx#core-expand-setq%
      (lambda (_%stx146770%_)
        (let* ((_%e146771146784%_ _%stx146770%_)
               (_%E146773146788%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e146771146784%_)))
               (_%E146772146820%_
                (lambda ()
                  (if (gx#stx-pair? _%e146771146784%_)
                      (let ((_%e146774146792%_
                             (gx#syntax-e _%e146771146784%_)))
                        (let ((_%hd146775146795%_ (##car _%e146774146792%_))
                              (_%tl146776146797%_ (##cdr _%e146774146792%_)))
                          (if (gx#stx-pair? _%tl146776146797%_)
                              (let ((_%e146777146800%_
                                     (gx#syntax-e _%tl146776146797%_)))
                                (let ((_%hd146778146803%_
                                       (##car _%e146777146800%_))
                                      (_%tl146779146805%_
                                       (##cdr _%e146777146800%_)))
                                  (let ((_%id146808%_ _%hd146778146803%_))
                                    (if (gx#stx-pair? _%tl146779146805%_)
                                        (let ((_%e146780146810%_
                                               (gx#syntax-e
                                                _%tl146779146805%_)))
                                          (let ((_%hd146781146813%_
                                                 (##car _%e146780146810%_))
                                                (_%tl146782146815%_
                                                 (##cdr _%e146780146810%_)))
                                            (let ((_%expr146818%_
                                                   _%hd146781146813%_))
                                              (if (gx#stx-null?
                                                   _%tl146782146815%_)
                                                  (if (gx#identifier?
                                                       _%id146808%_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%id146808%_
                            _%stx146770%_)
                           (cons (gx#core-expand-expression _%expr146818%_)
                                 '())))
               (gx#stx-source _%stx146770%_))
              (_%E146773146788%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E146773146788%_)))))
                                        (_%E146773146788%_)))))
                              (_%E146773146788%_))))
                      (_%E146773146788%_)))))
          (_%E146772146820%_))))
    (define gx#macro-expand-extern
      (lambda (_%stx146615%_)
        (letrec ((_%generate146617%_
                  (lambda (_%body146647%_)
                    (let _%lp146649%_ ((_%rest146651%_ _%body146647%_)
                                       (_%ns146652%_
                                        (gx#core-context-namespace__0))
                                       (_%r146653%_ '()))
                      (let* ((_%e146654146669%_ _%rest146651%_)
                             (_%E146667146673%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _%e146654146669%_)))
                             (_%E146663146677%_
                              (lambda ()
                                (if (gx#stx-null? _%e146654146669%_)
                                    (reverse _%r146653%_)
                                    (_%E146667146673%_))))
                             (_%E146656146734%_
                              (lambda ()
                                (if (gx#stx-pair? _%e146654146669%_)
                                    (let ((_%e146664146681%_
                                           (gx#syntax-e _%e146654146669%_)))
                                      (let ((_%hd146665146684%_
                                             (##car _%e146664146681%_))
                                            (_%tl146666146686%_
                                             (##cdr _%e146664146681%_)))
                                        (let* ((_%hd146689%_
                                                _%hd146665146684%_)
                                               (_%rest146691%_
                                                _%tl146666146686%_))
                                          (if (gx#identifier? _%hd146689%_)
                                              (_%lp146649%_
                                               _%rest146691%_
                                               _%ns146652%_
                                               (cons (cons _%hd146689%_
                                                           (cons (if _%ns146652%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-identifier
                              _%hd146689%_
                              _%ns146652%_
                              '"#"
                              _%hd146689%_)
                             _%hd146689%_)
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r146653%_))
                                              (let* ((_%e146692146702%_
                                                      _%hd146689%_)
                                                     (_%E146694146706%_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid syntax-case clause"
                                                         _%e146692146702%_)))
                                                     (_%E146693146730%_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _%e146692146702%_)
                                                            (let ((_%e146695146710%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%e146692146702%_)))
                      (let ((_%hd146696146713%_ (##car _%e146695146710%_))
                            (_%tl146697146715%_ (##cdr _%e146695146710%_)))
                        (let ((_%id146718%_ _%hd146696146713%_))
                          (if (gx#stx-pair? _%tl146697146715%_)
                              (let ((_%e146698146720%_
                                     (gx#syntax-e _%tl146697146715%_)))
                                (let ((_%hd146699146723%_
                                       (##car _%e146698146720%_))
                                      (_%tl146700146725%_
                                       (##cdr _%e146698146720%_)))
                                  (let ((_%eid146728%_ _%hd146699146723%_))
                                    (if (gx#stx-null? _%tl146700146725%_)
                                        (if (and (gx#identifier? _%id146718%_)
                                                 (gx#identifier?
                                                  _%eid146728%_))
                                            (_%lp146649%_
                                             _%rest146691%_
                                             _%ns146652%_
                                             (cons (cons _%id146718%_
                                                         (cons _%eid146728%_
                                                               '()))
                                                   _%r146653%_))
                                            (_%E146694146706%_))
                                        (_%E146694146706%_)))))
                              (_%E146694146706%_)))))
                    (_%E146694146706%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E146693146730%_))))))
                                    (_%E146663146677%_))))
                             (_%E146655146766%_
                              (lambda ()
                                (if (gx#stx-pair? _%e146654146669%_)
                                    (let ((_%e146657146738%_
                                           (gx#syntax-e _%e146654146669%_)))
                                      (let ((_%hd146658146741%_
                                             (##car _%e146657146738%_))
                                            (_%tl146659146743%_
                                             (##cdr _%e146657146738%_)))
                                        (if (eq? (gx#stx-e _%hd146658146741%_)
                                                 'namespace:)
                                            (if (gx#stx-pair?
                                                 _%tl146659146743%_)
                                                (let ((_%e146660146746%_
                                                       (gx#syntax-e
                                                        _%tl146659146743%_)))
                                                  (let ((_%hd146661146749%_
                                                         (##car _%e146660146746%_))
                                                        (_%tl146662146751%_
                                                         (##cdr _%e146660146746%_)))
                                                    (let* ((_%ns146754%_
                                                            _%hd146661146749%_)
                                                           (_%rest146756%_
                                                            _%tl146662146751%_)
                                                           (_%ns146764%_
                                                            (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%ns146754%_)
                        (symbol->string (gx#stx-e _%ns146754%_))
                        (if (or (gx#stx-string? _%ns146754%_)
                                (gx#stx-false? _%ns146754%_))
                            (gx#stx-e _%ns146754%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; extern expects namespace identifier"
                             _%stx146615%_
                             _%ns146754%_)))))
              (_%lp146649%_ _%rest146756%_ _%ns146764%_ _%r146653%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E146656146734%_))
                                            (_%E146656146734%_))))
                                    (_%E146656146734%_)))))
                        (_%E146655146766%_))))))
          (let* ((_%e146618146625%_ _%stx146615%_)
                 (_%E146620146629%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e146618146625%_)))
                 (_%E146619146643%_
                  (lambda ()
                    (if (gx#stx-pair? _%e146618146625%_)
                        (let ((_%e146621146633%_
                               (gx#syntax-e _%e146618146625%_)))
                          (let ((_%hd146622146636%_ (##car _%e146621146633%_))
                                (_%tl146623146638%_ (##cdr _%e146621146633%_)))
                            (let ((_%body146641%_ _%tl146623146638%_))
                              (if (gx#stx-list? _%body146641%_)
                                  (gx#core-cons
                                   '%#extern
                                   (_%generate146617%_ _%body146641%_))
                                  (_%E146620146629%_)))))
                        (_%E146620146629%_)))))
            (_%E146619146643%_)))))
    (define gx#macro-expand-lambda%
      (lambda (_%stx146572%_)
        (let* ((_%e146573146583%_ _%stx146572%_)
               (_%E146575146587%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e146573146583%_)))
               (_%E146574146611%_
                (lambda ()
                  (if (gx#stx-pair? _%e146573146583%_)
                      (let ((_%e146576146591%_
                             (gx#syntax-e _%e146573146583%_)))
                        (let ((_%hd146577146594%_ (##car _%e146576146591%_))
                              (_%tl146578146596%_ (##cdr _%e146576146591%_)))
                          (if (gx#stx-pair? _%tl146578146596%_)
                              (let ((_%e146579146599%_
                                     (gx#syntax-e _%tl146578146596%_)))
                                (let ((_%hd146580146602%_
                                       (##car _%e146579146599%_))
                                      (_%tl146581146604%_
                                       (##cdr _%e146579146599%_)))
                                  (let* ((_%hd146607%_ _%hd146580146602%_)
                                         (_%body146609%_ _%tl146581146604%_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _%hd146607%_)
                                             (gx#stx-list? _%body146609%_)
                                             (not (gx#stx-null?
                                                   _%body146609%_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1 identity _%hd146607%_)
                                         _%body146609%_)
                                        (_%E146575146587%_)))))
                              (_%E146575146587%_))))
                      (_%E146575146587%_)))))
          (_%E146574146611%_))))
    (define gx#macro-expand-case-lambda
      (lambda (_%stx146508%_)
        (letrec ((_%generate146510%_
                  (lambda (_%clause146540%_)
                    (let* ((_%e146541146548%_ _%clause146540%_)
                           (_%E146543146552%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _%stx146508%_
                               _%clause146540%_)))
                           (_%E146542146568%_
                            (lambda ()
                              (if (gx#stx-pair? _%e146541146548%_)
                                  (let ((_%e146544146556%_
                                         (gx#syntax-e _%e146541146548%_)))
                                    (let ((_%hd146545146559%_
                                           (##car _%e146544146556%_))
                                          (_%tl146546146561%_
                                           (##cdr _%e146544146556%_)))
                                      (let* ((_%hd146564%_ _%hd146545146559%_)
                                             (_%body146566%_
                                              _%tl146546146561%_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _%hd146564%_)
                                                 (gx#stx-list? _%body146566%_)
                                                 (not (gx#stx-null?
                                                       _%body146566%_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    identity
                                                    _%hd146564%_)
                                                   _%body146566%_)
                                             (gx#stx-source _%clause146540%_))
                                            (_%E146543146552%_)))))
                                  (_%E146543146552%_)))))
                      (_%E146542146568%_)))))
          (let* ((_%e146511146518%_ _%stx146508%_)
                 (_%E146513146522%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e146511146518%_)))
                 (_%E146512146536%_
                  (lambda ()
                    (if (gx#stx-pair? _%e146511146518%_)
                        (let ((_%e146514146526%_
                               (gx#syntax-e _%e146511146518%_)))
                          (let ((_%hd146515146529%_ (##car _%e146514146526%_))
                                (_%tl146516146531%_ (##cdr _%e146514146526%_)))
                            (let ((_%clauses146534%_ _%tl146516146531%_))
                              (if (gx#stx-list? _%clauses146534%_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _%generate146510%_
                                    _%clauses146534%_))
                                  (_%E146513146522%_)))))
                        (_%E146513146522%_)))))
            (_%E146512146536%_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_%stx146409%_ _%form146410%_)
        (letrec ((_%generate146412%_
                  (lambda (_%bind146455%_)
                    (let* ((_%e146456146466%_ _%bind146455%_)
                           (_%E146458146470%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _%stx146409%_
                               _%bind146455%_)))
                           (_%E146457146494%_
                            (lambda ()
                              (if (gx#stx-pair? _%e146456146466%_)
                                  (let ((_%e146459146474%_
                                         (gx#syntax-e _%e146456146466%_)))
                                    (let ((_%hd146460146477%_
                                           (##car _%e146459146474%_))
                                          (_%tl146461146479%_
                                           (##cdr _%e146459146474%_)))
                                      (let ((_%ids146482%_ _%hd146460146477%_))
                                        (if (gx#stx-pair? _%tl146461146479%_)
                                            (let ((_%e146462146484%_
                                                   (gx#syntax-e
                                                    _%tl146461146479%_)))
                                              (let ((_%hd146463146487%_
                                                     (##car _%e146462146484%_))
                                                    (_%tl146464146489%_
                                                     (##cdr _%e146462146484%_)))
                                                (let ((_%expr146492%_
                                                       _%hd146463146487%_))
                                                  (if (gx#stx-null?
                                                       _%tl146464146489%_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _%ids146482%_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         identity
                         _%ids146482%_)
                        (cons _%expr146492%_ '()))
                  (_%E146458146470%_))
              (_%E146458146470%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E146458146470%_)))))
                                  (_%E146458146470%_)))))
                      (_%E146457146494%_)))))
          (let* ((_%e146413146423%_ _%stx146409%_)
                 (_%E146415146427%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e146413146423%_)))
                 (_%E146414146451%_
                  (lambda ()
                    (if (gx#stx-pair? _%e146413146423%_)
                        (let ((_%e146416146431%_
                               (gx#syntax-e _%e146413146423%_)))
                          (let ((_%hd146417146434%_ (##car _%e146416146431%_))
                                (_%tl146418146436%_ (##cdr _%e146416146431%_)))
                            (if (gx#stx-pair? _%tl146418146436%_)
                                (let ((_%e146419146439%_
                                       (gx#syntax-e _%tl146418146436%_)))
                                  (let ((_%hd146420146442%_
                                         (##car _%e146419146439%_))
                                        (_%tl146421146444%_
                                         (##cdr _%e146419146439%_)))
                                    (let* ((_%hd146447%_ _%hd146420146442%_)
                                           (_%body146449%_ _%tl146421146444%_))
                                      (if (and (gx#stx-list? _%hd146447%_)
                                               (gx#stx-list? _%body146449%_)
                                               (not (gx#stx-null?
                                                     _%body146449%_)))
                                          (gx#core-cons*
                                           _%form146410%_
                                           (gx#stx-map1
                                            _%generate146412%_
                                            _%hd146447%_)
                                           _%body146449%_)
                                          (_%E146415146427%_)))))
                                (_%E146415146427%_))))
                        (_%E146415146427%_)))))
            (_%E146414146451%_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_%stx146501%_)
        (let ((_%form146503%_ '%#let-values))
          (gx#macro-expand-let-values__% _%stx146501%_ _%form146503%_))))
    (define gx#macro-expand-let-values
      (lambda _g149045_
        (let ((_g149046_ (##length _g149045_)))
          (cond ((##fx= _g149046_ 1)
                 (apply gx#macro-expand-let-values__0 _g149045_))
                ((##fx= _g149046_ 2)
                 (apply gx#macro-expand-let-values__% _g149045_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g149045_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_%stx146406%_)
        (gx#macro-expand-let-values__% _%stx146406%_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_%stx146404%_)
        (gx#macro-expand-let-values__% _%stx146404%_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_%stx146295%_)
        (let* ((_%e146296146322%_ _%stx146295%_)
               (_%E146308146326%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e146296146322%_)))
               (_%E146298146368%_
                (lambda ()
                  (if (gx#stx-pair? _%e146296146322%_)
                      (let ((_%e146309146330%_
                             (gx#syntax-e _%e146296146322%_)))
                        (let ((_%hd146310146333%_ (##car _%e146309146330%_))
                              (_%tl146311146335%_ (##cdr _%e146309146330%_)))
                          (if (gx#stx-pair? _%tl146311146335%_)
                              (let ((_%e146312146338%_
                                     (gx#syntax-e _%tl146311146335%_)))
                                (let ((_%hd146313146341%_
                                       (##car _%e146312146338%_))
                                      (_%tl146314146343%_
                                       (##cdr _%e146312146338%_)))
                                  (let ((_%test146346%_ _%hd146313146341%_))
                                    (if (gx#stx-pair? _%tl146314146343%_)
                                        (let ((_%e146315146348%_
                                               (gx#syntax-e
                                                _%tl146314146343%_)))
                                          (let ((_%hd146316146351%_
                                                 (##car _%e146315146348%_))
                                                (_%tl146317146353%_
                                                 (##cdr _%e146315146348%_)))
                                            (let ((_%K146356%_
                                                   _%hd146316146351%_))
                                              (if (gx#stx-pair?
                                                   _%tl146317146353%_)
                                                  (let ((_%e146318146358%_
                                                         (gx#syntax-e
                                                          _%tl146317146353%_)))
                                                    (let ((_%hd146319146361%_
                                                           (##car _%e146318146358%_))
                                                          (_%tl146320146363%_
                                                           (##cdr _%e146318146358%_)))
                                                      (let ((_%E146366%_
                                                             _%hd146319146361%_))
                                                        (if (gx#stx-null?
                                                             _%tl146320146363%_)
                                                            (gx#core-list
                                                             '%#if
                                                             _%test146346%_
                                                             _%K146356%_
                                                             _%E146366%_)
                                                            (_%E146308146326%_)))))
                                                  (_%E146308146326%_)))))
                                        (_%E146308146326%_)))))
                              (_%E146308146326%_))))
                      (_%E146308146326%_))))
               (_%E146297146400%_
                (lambda ()
                  (if (gx#stx-pair? _%e146296146322%_)
                      (let ((_%e146299146372%_
                             (gx#syntax-e _%e146296146322%_)))
                        (let ((_%hd146300146375%_ (##car _%e146299146372%_))
                              (_%tl146301146377%_ (##cdr _%e146299146372%_)))
                          (if (gx#stx-pair? _%tl146301146377%_)
                              (let ((_%e146302146380%_
                                     (gx#syntax-e _%tl146301146377%_)))
                                (let ((_%hd146303146383%_
                                       (##car _%e146302146380%_))
                                      (_%tl146304146385%_
                                       (##cdr _%e146302146380%_)))
                                  (let ((_%test146388%_ _%hd146303146383%_))
                                    (if (gx#stx-pair? _%tl146304146385%_)
                                        (let ((_%e146305146390%_
                                               (gx#syntax-e
                                                _%tl146304146385%_)))
                                          (let ((_%hd146306146393%_
                                                 (##car _%e146305146390%_))
                                                (_%tl146307146395%_
                                                 (##cdr _%e146305146390%_)))
                                            (let ((_%K146398%_
                                                   _%hd146306146393%_))
                                              (if (gx#stx-null?
                                                   _%tl146307146395%_)
                                                  (gx#core-list
                                                   '%#if
                                                   _%test146388%_
                                                   _%K146398%_
                                                   '#!void)
                                                  (_%E146298146368%_)))))
                                        (_%E146298146368%_)))))
                              (_%E146298146368%_))))
                      (_%E146298146368%_)))))
          (_%E146297146400%_))))
    (define gx#free-identifier=?
      (lambda (_%xid146280%_ _%yid146281%_)
        (let ((_%xe146283%_ (gx#resolve-identifier__0 _%xid146280%_))
              (_%ye146284%_ (gx#resolve-identifier__0 _%yid146281%_)))
          (if (and _%xe146283%_ _%ye146284%_)
              (let ((_%$e146287%_ (eq? _%xe146283%_ _%ye146284%_)))
                (if _%$e146287%_
                    _%$e146287%_
                    (if (##structure-instance-of? _%xe146283%_ 'gx#binding::t)
                        (if (##structure-instance-of?
                             _%ye146284%_
                             'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _%xe146283%_
                                  '1
                                  '#f
                                  '#f)
                                 (##unchecked-structure-ref
                                  _%ye146284%_
                                  '1
                                  '#f
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _%xe146283%_ _%ye146284%_)
                  '#f
                  (gx#stx-eq? _%xid146280%_ _%yid146281%_))))))
    (define gx#bound-identifier=?
      (lambda (_%xid146261%_ _%yid146262%_)
        (letrec ((_%context146264%_
                  (lambda (_%e146278%_)
                    (if (##structure-direct-instance-of?
                         _%e146278%_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref _%e146278%_ '3 '#f '#f)
                        (gx#current-expander-context))))
                 (_%marks146265%_
                  (lambda (_%e146273%_)
                    (if (symbol? _%e146273%_)
                        '()
                        (if (##structure-direct-instance-of?
                             _%e146273%_
                             'gx#identifier-wrap::t)
                            (##unchecked-structure-ref _%e146273%_ '3 '#f '#f)
                            (##unchecked-structure-ref
                             _%e146273%_
                             '4
                             '#f
                             '#f)))))
                 (_%unwrap146266%_
                  (lambda (_%e146271%_)
                    (if (symbol? _%e146271%_)
                        _%e146271%_
                        (gx#syntax-local-unwrap _%e146271%_)))))
          (let ((_%x146268%_ (_%unwrap146266%_ _%xid146261%_))
                (_%y146269%_ (_%unwrap146266%_ _%yid146262%_)))
            (if (gx#stx-eq? _%x146268%_ _%y146269%_)
                (if (eq? (_%context146264%_ _%x146268%_)
                         (_%context146264%_ _%y146269%_))
                    (equal? (_%marks146265%_ _%x146268%_)
                            (_%marks146265%_ _%y146269%_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_%stx146259%_)
        (if (gx#identifier? _%stx146259%_)
            (gx#core-identifier=? _%stx146259%_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_%stx146257%_)
        (if (gx#identifier? _%stx146257%_)
            (gx#core-identifier=? _%stx146257%_ '...)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_%stx146200%_ _%where146201%_)
        (let _%lp146203%_ ((_%rest146205%_ (gx#syntax->list _%stx146200%_)))
          (let* ((_%rest146206146214%_ _%rest146205%_)
                 (_%else146208146222%_ (lambda () '#t))
                 (_%K146210146235%_
                  (lambda (_%rest146225%_ _%hd146226%_)
                    (if (gx#identifier? _%hd146226%_)
                        (if (__find (lambda (_%g146228146230%_)
                                      (gx#bound-identifier=?
                                       _%g146228146230%_
                                       _%hd146226%_))
                                    _%rest146225%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _%where146201%_
                             _%hd146226%_)
                            (_%lp146203%_ _%rest146225%_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _%where146201%_
                         _%hd146226%_)))))
            (if (pair? _%rest146206146214%_)
                (let ((_%hd146211146238%_ (##car _%rest146206146214%_))
                      (_%tl146212146240%_ (##cdr _%rest146206146214%_)))
                  (let* ((_%hd146243%_ _%hd146211146238%_)
                         (_%rest146245%_ _%tl146212146240%_))
                    (_%K146210146235%_ _%rest146245%_ _%hd146243%_)))
                (_%else146208146222%_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_%stx146250%_)
        (let ((_%where146252%_ _%stx146250%_))
          (gx#check-duplicate-identifiers__% _%stx146250%_ _%where146252%_))))
    (define gx#check-duplicate-identifiers
      (lambda _g149047_
        (let ((_g149048_ (##length _g149047_)))
          (cond ((##fx= _g149048_ 1)
                 (apply gx#check-duplicate-identifiers__0 _g149047_))
                ((##fx= _g149048_ 2)
                 (apply gx#check-duplicate-identifiers__% _g149047_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g149047_))))))
    (define gx#core-bind-values?
      (lambda (_%stx146192%_)
        (gx#stx-andmap
         (lambda (_%x146194%_)
           (let ((_%$e146196%_ (gx#identifier? _%x146194%_)))
             (if _%$e146196%_ _%$e146196%_ (gx#stx-false? _%x146194%_))))
         _%stx146192%_)))
    (define gx#core-bind-values!__%
      (lambda (_%stx146156%_ _%rebind?146157%_ _%phi146158%_ _%ctx146159%_)
        (gx#stx-for-each1
         (lambda (_%id146161%_)
           (if (gx#identifier? _%id146161%_)
               (gx#core-bind-runtime!__%
                _%id146161%_
                _%rebind?146157%_
                _%phi146158%_
                _%ctx146159%_)
               '#!void))
         _%stx146156%_)))
    (define gx#core-bind-values!__0
      (lambda (_%stx146166%_)
        (let* ((_%rebind?146168%_ '#f)
               (_%phi146170%_ (gx#current-expander-phi))
               (_%ctx146172%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx146166%_
           _%rebind?146168%_
           _%phi146170%_
           _%ctx146172%_))))
    (define gx#core-bind-values!__1
      (lambda (_%stx146174%_ _%rebind?146175%_)
        (let* ((_%phi146177%_ (gx#current-expander-phi))
               (_%ctx146179%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx146174%_
           _%rebind?146175%_
           _%phi146177%_
           _%ctx146179%_))))
    (define gx#core-bind-values!__2
      (lambda (_%stx146181%_ _%rebind?146182%_ _%phi146183%_)
        (let ((_%ctx146185%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx146181%_
           _%rebind?146182%_
           _%phi146183%_
           _%ctx146185%_))))
    (define gx#core-bind-values!
      (lambda _g149049_
        (let ((_g149050_ (##length _g149049_)))
          (cond ((##fx= _g149050_ 1) (apply gx#core-bind-values!__0 _g149049_))
                ((##fx= _g149050_ 2) (apply gx#core-bind-values!__1 _g149049_))
                ((##fx= _g149050_ 3) (apply gx#core-bind-values!__2 _g149049_))
                ((##fx= _g149050_ 4) (apply gx#core-bind-values!__% _g149049_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g149049_))))))
    (define gx#core-quote-bind-values
      (lambda (_%stx146151%_)
        (gx#stx-map1
         (lambda (_%x146153%_)
           (if (gx#identifier? _%x146153%_)
               (gx#core-quote-syntax__0 _%x146153%_)
               '#f))
         _%stx146151%_)))
    (define gx#core-runtime-ref?
      (lambda (_%stx146144%_)
        (if (gx#identifier? _%stx146144%_)
            (let* ((_%bind146146%_ (gx#resolve-identifier__0 _%stx146144%_))
                   (_%$e146148%_ (not _%bind146146%_)))
              (if _%$e146148%_
                  _%$e146148%_
                  (##structure-instance-of?
                   _%bind146146%_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_%id146133%_ _%form146134%_)
        (let ((_%bind146136%_ (gx#resolve-identifier__0 _%id146133%_)))
          (if (##structure-instance-of? _%bind146136%_ 'gx#runtime-binding::t)
              (gx#core-quote-syntax__0 _%id146133%_)
              (if (not _%bind146136%_)
                  (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                          (gx#core-extern-symbol? (gx#stx-e _%id146133%_)))
                      (gx#core-quote-syntax__0 _%id146133%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Reference to unbound identifier"
                       _%form146134%_
                       _%id146133%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; not a runtime binding"
                   _%form146134%_
                   _%id146133%_))))))
    (define gx#core-bind-runtime!__%
      (lambda (_%id146088%_ _%rebind?146089%_ _%phi146090%_ _%ctx146091%_)
        (let* ((_%key146093%_ (gx#core-identifier-key _%id146088%_))
               (_%eid146095%_
                (gx#make-binding-id__%
                 _%key146093%_
                 '#f
                 _%phi146090%_
                 _%ctx146091%_))
               (_%bind146101%_
                (if (##structure-instance-of?
                     _%ctx146091%_
                     'gx#module-context::t)
                    (let ((__obj149026
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
                       __obj149026
                       _%eid146095%_
                       _%key146093%_
                       _%phi146090%_
                       _%ctx146091%_)
                      __obj149026)
                    (if (##structure-instance-of?
                         _%ctx146091%_
                         'gx#top-context::t)
                        (let ((__obj149025
                               (##structure
                                gx#top-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#top-binding:::init!
                           __obj149025
                           _%eid146095%_
                           _%key146093%_
                           _%phi146090%_)
                          __obj149025)
                        (if (##structure-instance-of?
                             _%ctx146091%_
                             'gx#local-context::t)
                            (let ((__obj149024
                                   (##structure
                                    gx#local-binding::t
                                    '#f
                                    '#f
                                    '#f
                                    '#f
                                    '#f
                                    '#f)))
                              (gx#local-binding:::init!
                               __obj149024
                               _%eid146095%_
                               _%key146093%_
                               _%phi146090%_)
                              __obj149024)
                            (let ((__obj149023
                                   (##structure
                                    gx#runtime-binding::t
                                    '#f
                                    '#f
                                    '#f
                                    '#f
                                    '#f
                                    '#f)))
                              (gx#runtime-binding:::init!
                               __obj149023
                               _%eid146095%_
                               _%key146093%_
                               _%phi146090%_)
                              __obj149023))))))
          (gx#bind-identifier!__%
           _%id146088%_
           _%bind146101%_
           _%rebind?146089%_
           _%phi146090%_
           _%ctx146091%_))))
    (define gx#core-bind-runtime!__0
      (lambda (_%id146107%_)
        (let* ((_%rebind?146109%_ '#f)
               (_%phi146111%_ (gx#current-expander-phi))
               (_%ctx146113%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id146107%_
           _%rebind?146109%_
           _%phi146111%_
           _%ctx146113%_))))
    (define gx#core-bind-runtime!__1
      (lambda (_%id146115%_ _%rebind?146116%_)
        (let* ((_%phi146118%_ (gx#current-expander-phi))
               (_%ctx146120%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id146115%_
           _%rebind?146116%_
           _%phi146118%_
           _%ctx146120%_))))
    (define gx#core-bind-runtime!__2
      (lambda (_%id146122%_ _%rebind?146123%_ _%phi146124%_)
        (let ((_%ctx146126%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id146122%_
           _%rebind?146123%_
           _%phi146124%_
           _%ctx146126%_))))
    (define gx#core-bind-runtime!
      (lambda _g149051_
        (let ((_g149052_ (##length _g149051_)))
          (cond ((##fx= _g149052_ 1)
                 (apply gx#core-bind-runtime!__0 _g149051_))
                ((##fx= _g149052_ 2)
                 (apply gx#core-bind-runtime!__1 _g149051_))
                ((##fx= _g149052_ 3)
                 (apply gx#core-bind-runtime!__2 _g149051_))
                ((##fx= _g149052_ 4)
                 (apply gx#core-bind-runtime!__% _g149051_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g149051_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_%id146040%_
               _%eid146041%_
               _%rebind?146042%_
               _%phi146043%_
               _%ctx146044%_)
        (let* ((_%key146046%_ (gx#core-identifier-key _%id146040%_))
               (_%bind146051%_
                (if (##structure-instance-of?
                     _%ctx146044%_
                     'gx#module-context::t)
                    (let ((__obj149029
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
                       __obj149029
                       _%eid146041%_
                       _%key146046%_
                       _%phi146043%_
                       _%ctx146044%_)
                      __obj149029)
                    (if (##structure-instance-of?
                         _%ctx146044%_
                         'gx#top-context::t)
                        (let ((__obj149028
                               (##structure
                                gx#top-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#top-binding:::init!
                           __obj149028
                           _%eid146041%_
                           _%key146046%_
                           _%phi146043%_)
                          __obj149028)
                        (let ((__obj149027
                               (##structure
                                gx#runtime-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#runtime-binding:::init!
                           __obj149027
                           _%eid146041%_
                           _%key146046%_
                           _%phi146043%_)
                          __obj149027)))))
          (gx#bind-identifier!__%
           _%id146040%_
           _%bind146051%_
           _%rebind?146042%_
           _%phi146043%_
           _%ctx146044%_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_%id146057%_ _%eid146058%_)
        (let* ((_%rebind?146060%_ '#f)
               (_%phi146062%_ (gx#current-expander-phi))
               (_%ctx146064%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id146057%_
           _%eid146058%_
           _%rebind?146060%_
           _%phi146062%_
           _%ctx146064%_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_%id146066%_ _%eid146067%_ _%rebind?146068%_)
        (let* ((_%phi146070%_ (gx#current-expander-phi))
               (_%ctx146072%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id146066%_
           _%eid146067%_
           _%rebind?146068%_
           _%phi146070%_
           _%ctx146072%_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_%id146074%_ _%eid146075%_ _%rebind?146076%_ _%phi146077%_)
        (let ((_%ctx146079%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id146074%_
           _%eid146075%_
           _%rebind?146076%_
           _%phi146077%_
           _%ctx146079%_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g149053_
        (let ((_g149054_ (##length _g149053_)))
          (cond ((##fx= _g149054_ 2)
                 (apply gx#core-bind-runtime-reference!__0 _g149053_))
                ((##fx= _g149054_ 3)
                 (apply gx#core-bind-runtime-reference!__1 _g149053_))
                ((##fx= _g149054_ 4)
                 (apply gx#core-bind-runtime-reference!__2 _g149053_))
                ((##fx= _g149054_ 5)
                 (apply gx#core-bind-runtime-reference!__% _g149053_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g149053_))))))
    (define gx#core-bind-extern!__%
      (lambda (_%id146000%_
               _%eid146001%_
               _%rebind?146002%_
               _%phi146003%_
               _%ctx146004%_)
        (gx#bind-identifier!__%
         _%id146000%_
         (let ((__obj149030
                (##structure gx#extern-binding::t '#f '#f '#f '#f '#f '#f)))
           (gx#extern-binding:::init!
            __obj149030
            _%eid146001%_
            (gx#core-identifier-key _%id146000%_)
            _%phi146003%_)
           __obj149030)
         _%rebind?146002%_
         _%phi146003%_
         _%ctx146004%_)))
    (define gx#core-bind-extern!__0
      (lambda (_%id146009%_ _%eid146010%_)
        (let* ((_%rebind?146012%_ '#f)
               (_%phi146014%_ (gx#current-expander-phi))
               (_%ctx146016%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id146009%_
           _%eid146010%_
           _%rebind?146012%_
           _%phi146014%_
           _%ctx146016%_))))
    (define gx#core-bind-extern!__1
      (lambda (_%id146018%_ _%eid146019%_ _%rebind?146020%_)
        (let* ((_%phi146022%_ (gx#current-expander-phi))
               (_%ctx146024%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id146018%_
           _%eid146019%_
           _%rebind?146020%_
           _%phi146022%_
           _%ctx146024%_))))
    (define gx#core-bind-extern!__2
      (lambda (_%id146026%_ _%eid146027%_ _%rebind?146028%_ _%phi146029%_)
        (let ((_%ctx146031%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id146026%_
           _%eid146027%_
           _%rebind?146028%_
           _%phi146029%_
           _%ctx146031%_))))
    (define gx#core-bind-extern!
      (lambda _g149055_
        (let ((_g149056_ (##length _g149055_)))
          (cond ((##fx= _g149056_ 2) (apply gx#core-bind-extern!__0 _g149055_))
                ((##fx= _g149056_ 3) (apply gx#core-bind-extern!__1 _g149055_))
                ((##fx= _g149056_ 4) (apply gx#core-bind-extern!__2 _g149055_))
                ((##fx= _g149056_ 5) (apply gx#core-bind-extern!__% _g149055_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g149055_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_%id145954%_
               _%e145955%_
               _%rebind?145956%_
               _%phi145957%_
               _%ctx145958%_)
        (gx#bind-identifier!__%
         _%id145954%_
         (let ((_%key145963%_ (gx#core-identifier-key _%id145954%_))
               (_%e145964%_
                (if (or (##structure-instance-of? _%e145955%_ 'gx#expander::t)
                        (##structure-instance-of?
                         _%e145955%_
                         'gx#expander-context::t))
                    _%e145955%_
                    (##structure
                     gx#user-expander::t
                     _%e145955%_
                     _%ctx145958%_
                     _%phi145957%_))))
           (let ((__obj149031
                  (##structure gx#syntax-binding::t '#f '#f '#f '#f '#f)))
             (gx#syntax-binding:::init!
              __obj149031
              (gx#make-binding-id__%
               _%key145963%_
               '#t
               _%phi145957%_
               _%ctx145958%_)
              _%key145963%_
              _%phi145957%_
              _%e145964%_)
             __obj149031))
         _%rebind?145956%_
         _%phi145957%_
         _%ctx145958%_)))
    (define gx#core-bind-syntax!__0
      (lambda (_%id145969%_ _%e145970%_)
        (let* ((_%rebind?145972%_ '#f)
               (_%phi145974%_ (gx#current-expander-phi))
               (_%ctx145976%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id145969%_
           _%e145970%_
           _%rebind?145972%_
           _%phi145974%_
           _%ctx145976%_))))
    (define gx#core-bind-syntax!__1
      (lambda (_%id145978%_ _%e145979%_ _%rebind?145980%_)
        (let* ((_%phi145982%_ (gx#current-expander-phi))
               (_%ctx145984%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id145978%_
           _%e145979%_
           _%rebind?145980%_
           _%phi145982%_
           _%ctx145984%_))))
    (define gx#core-bind-syntax!__2
      (lambda (_%id145986%_ _%e145987%_ _%rebind?145988%_ _%phi145989%_)
        (let ((_%ctx145991%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id145986%_
           _%e145987%_
           _%rebind?145988%_
           _%phi145989%_
           _%ctx145991%_))))
    (define gx#core-bind-syntax!
      (lambda _g149057_
        (let ((_g149058_ (##length _g149057_)))
          (cond ((##fx= _g149058_ 2) (apply gx#core-bind-syntax!__0 _g149057_))
                ((##fx= _g149058_ 3) (apply gx#core-bind-syntax!__1 _g149057_))
                ((##fx= _g149058_ 4) (apply gx#core-bind-syntax!__2 _g149057_))
                ((##fx= _g149058_ 5) (apply gx#core-bind-syntax!__% _g149057_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g149057_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_%id145937%_ _%e145938%_ _%rebind?145939%_)
        (gx#core-bind-syntax!__%
         _%id145937%_
         _%e145938%_
         _%rebind?145939%_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_%id145944%_ _%e145945%_)
        (let ((_%rebind?145947%_ '#f))
          (gx#core-bind-root-syntax!__%
           _%id145944%_
           _%e145945%_
           _%rebind?145947%_))))
    (define gx#core-bind-root-syntax!
      (lambda _g149059_
        (let ((_g149060_ (##length _g149059_)))
          (cond ((##fx= _g149060_ 2)
                 (apply gx#core-bind-root-syntax!__0 _g149059_))
                ((##fx= _g149060_ 3)
                 (apply gx#core-bind-root-syntax!__% _g149059_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g149059_))))))
    (define gx#core-bind-alias!__%
      (lambda (_%id145895%_
               _%alias-id145896%_
               _%rebind?145897%_
               _%phi145898%_
               _%ctx145899%_)
        (gx#bind-identifier!__%
         _%id145895%_
         (let* ((_%key145901%_ (gx#core-identifier-key _%id145895%_))
                (__obj149032
                 (##structure gx#alias-binding::t '#f '#f '#f '#f '#f)))
           (gx#alias-binding:::init!
            __obj149032
            (gx#make-binding-id__%
             _%key145901%_
             '#t
             _%phi145898%_
             _%ctx145899%_)
            _%key145901%_
            _%phi145898%_
            _%alias-id145896%_)
           __obj149032)
         _%rebind?145897%_
         _%phi145898%_
         _%ctx145899%_)))
    (define gx#core-bind-alias!__0
      (lambda (_%id145906%_ _%alias-id145907%_)
        (let* ((_%rebind?145909%_ '#f)
               (_%phi145911%_ (gx#current-expander-phi))
               (_%ctx145913%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id145906%_
           _%alias-id145907%_
           _%rebind?145909%_
           _%phi145911%_
           _%ctx145913%_))))
    (define gx#core-bind-alias!__1
      (lambda (_%id145915%_ _%alias-id145916%_ _%rebind?145917%_)
        (let* ((_%phi145919%_ (gx#current-expander-phi))
               (_%ctx145921%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id145915%_
           _%alias-id145916%_
           _%rebind?145917%_
           _%phi145919%_
           _%ctx145921%_))))
    (define gx#core-bind-alias!__2
      (lambda (_%id145923%_ _%alias-id145924%_ _%rebind?145925%_ _%phi145926%_)
        (let ((_%ctx145928%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id145923%_
           _%alias-id145924%_
           _%rebind?145925%_
           _%phi145926%_
           _%ctx145928%_))))
    (define gx#core-bind-alias!
      (lambda _g149061_
        (let ((_g149062_ (##length _g149061_)))
          (cond ((##fx= _g149062_ 2) (apply gx#core-bind-alias!__0 _g149061_))
                ((##fx= _g149062_ 3) (apply gx#core-bind-alias!__1 _g149061_))
                ((##fx= _g149062_ 4) (apply gx#core-bind-alias!__2 _g149061_))
                ((##fx= _g149062_ 5) (apply gx#core-bind-alias!__% _g149061_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g149061_))))))
    (define gx#make-binding-id__%
      (lambda (_%key145845%_ _%syntax?145846%_ _%phi145847%_ _%ctx145848%_)
        (if (uninterned-symbol? _%key145845%_)
            (##gensym 'L)
            (if (pair? _%key145845%_)
                (gensym (##car _%key145845%_))
                (if (##structure-instance-of? _%ctx145848%_ 'gx#top-context::t)
                    (let ((_%ns145853%_
                           (gx#core-context-namespace__% _%ctx145848%_)))
                      (if (and (fxzero? _%phi145847%_) (not _%syntax?145846%_))
                          (if _%ns145853%_
                              (make-symbol__1 _%ns145853%_ '"#" _%key145845%_)
                              _%key145845%_)
                          (if _%syntax?145846%_
                              (make-symbol__1
                               (let ((_%$e145857%_ _%ns145853%_))
                                 (if _%$e145857%_ _%$e145857%_ '""))
                               '"[:"
                               (number->string _%phi145847%_)
                               '":]#"
                               _%key145845%_)
                              (make-symbol__1
                               (let ((_%$e145861%_ _%ns145853%_))
                                 (if _%$e145861%_ _%$e145861%_ '""))
                               '"["
                               (number->string _%phi145847%_)
                               '"]#"
                               _%key145845%_))))
                    (gensym _%key145845%_))))))
    (define gx#make-binding-id__0
      (lambda (_%key145868%_)
        (let* ((_%syntax?145870%_ '#f)
               (_%phi145872%_ (gx#current-expander-phi))
               (_%ctx145874%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key145868%_
           _%syntax?145870%_
           _%phi145872%_
           _%ctx145874%_))))
    (define gx#make-binding-id__1
      (lambda (_%key145876%_ _%syntax?145877%_)
        (let* ((_%phi145879%_ (gx#current-expander-phi))
               (_%ctx145881%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key145876%_
           _%syntax?145877%_
           _%phi145879%_
           _%ctx145881%_))))
    (define gx#make-binding-id__2
      (lambda (_%key145883%_ _%syntax?145884%_ _%phi145885%_)
        (let ((_%ctx145887%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key145883%_
           _%syntax?145884%_
           _%phi145885%_
           _%ctx145887%_))))
    (define gx#make-binding-id
      (lambda _g149063_
        (let ((_g149064_ (##length _g149063_)))
          (cond ((##fx= _g149064_ 1) (apply gx#make-binding-id__0 _g149063_))
                ((##fx= _g149064_ 2) (apply gx#make-binding-id__1 _g149063_))
                ((##fx= _g149064_ 3) (apply gx#make-binding-id__2 _g149063_))
                ((##fx= _g149064_ 4) (apply gx#make-binding-id__% _g149063_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g149063_))))))))
