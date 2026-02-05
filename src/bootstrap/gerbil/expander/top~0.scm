(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1770333053)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_%stx148997%_)
        (letrec ((_%expand-special148999%_
                  (lambda (_%hd149001%_ _%K149002%_ _%rest149003%_ _%r149004%_)
                    (_%K149002%_
                     _%rest149003%_
                     (cons (gx#core-expand-top _%hd149001%_) _%r149004%_)))))
          (gx#core-expand-block__0 _%stx148997%_ _%expand-special148999%_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_%stx148691%_)
        (letrec ((_%expand-special148693%_
                  (lambda (_%hd148815%_ _%K148816%_ _%rest148817%_ _%r148818%_)
                    (let* ((_%K148822%_
                            (lambda (_%e148820%_)
                              (_%K148816%_
                               _%rest148817%_
                               (cons _%e148820%_ _%r148818%_))))
                           (_%e148823148865%_ _%hd148815%_)
                           (_%E148860148869%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e148823148865%_)))
                           (_%E148856148881%_
                            (lambda ()
                              (if (gx#stx-pair? _%e148823148865%_)
                                  (let ((_%e148861148873%_
                                         (gx#syntax-e _%e148823148865%_)))
                                    (let ((_%hd148862148876%_
                                           (##car _%e148861148873%_))
                                          (_%tl148863148878%_
                                           (##cdr _%e148861148873%_)))
                                      (if (and (gx#identifier?
                                                _%hd148862148876%_)
                                               (gx#core-identifier=?
                                                _%hd148862148876%_
                                                '%#define-runtime))
                                          (_%K148822%_
                                           (gx#core-expand-define-runtime%
                                            _%hd148815%_))
                                          (_%E148860148869%_))))
                                  (_%E148860148869%_))))
                           (_%E148852148893%_
                            (lambda ()
                              (if (gx#stx-pair? _%e148823148865%_)
                                  (let ((_%e148857148885%_
                                         (gx#syntax-e _%e148823148865%_)))
                                    (let ((_%hd148858148888%_
                                           (##car _%e148857148885%_))
                                          (_%tl148859148890%_
                                           (##cdr _%e148857148885%_)))
                                      (if (and (gx#identifier?
                                                _%hd148858148888%_)
                                               (gx#core-identifier=?
                                                _%hd148858148888%_
                                                '%#define-alias))
                                          (_%K148822%_
                                           (gx#core-expand-define-alias%
                                            _%hd148815%_))
                                          (_%E148856148881%_))))
                                  (_%E148856148881%_))))
                           (_%E148842148905%_
                            (lambda ()
                              (if (gx#stx-pair? _%e148823148865%_)
                                  (let ((_%e148853148897%_
                                         (gx#syntax-e _%e148823148865%_)))
                                    (let ((_%hd148854148900%_
                                           (##car _%e148853148897%_))
                                          (_%tl148855148902%_
                                           (##cdr _%e148853148897%_)))
                                      (if (and (gx#identifier?
                                                _%hd148854148900%_)
                                               (gx#core-identifier=?
                                                _%hd148854148900%_
                                                '%#define-syntax))
                                          (_%K148822%_
                                           (gx#core-expand-define-syntax%
                                            _%hd148815%_))
                                          (_%E148852148893%_))))
                                  (_%E148852148893%_))))
                           (_%E148829148937%_
                            (lambda ()
                              (if (gx#stx-pair? _%e148823148865%_)
                                  (let ((_%e148843148909%_
                                         (gx#syntax-e _%e148823148865%_)))
                                    (let ((_%hd148844148912%_
                                           (##car _%e148843148909%_))
                                          (_%tl148845148914%_
                                           (##cdr _%e148843148909%_)))
                                      (if (and (gx#identifier?
                                                _%hd148844148912%_)
                                               (gx#core-identifier=?
                                                _%hd148844148912%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl148845148914%_)
                                              (let ((_%e148846148917%_
                                                     (gx#syntax-e
                                                      _%tl148845148914%_)))
                                                (let ((_%hd148847148920%_
                                                       (##car _%e148846148917%_))
                                                      (_%tl148848148922%_
                                                       (##cdr _%e148846148917%_)))
                                                  (let ((_%hd-bind148925%_
                                                         _%hd148847148920%_))
                                                    (if (gx#stx-pair?
                                                         _%tl148848148922%_)
                                                        (let ((_%e148849148927%_
                                                               (gx#syntax-e
                                                                _%tl148848148922%_)))
                                                          (let ((_%hd148850148930%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e148849148927%_))
                        (_%tl148851148932%_ (##cdr _%e148849148927%_)))
                    (let ((_%expr148935%_ _%hd148850148930%_))
                      (if (gx#stx-null? _%tl148851148932%_)
                          (if (gx#core-bind-values? _%hd-bind148925%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind148925%_)
                                (_%K148822%_ _%hd148815%_))
                              (_%E148842148905%_))
                          (_%E148842148905%_)))))
                (_%E148842148905%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E148842148905%_))
                                          (_%E148842148905%_))))
                                  (_%E148842148905%_))))
                           (_%E148825148981%_
                            (lambda ()
                              (if (gx#stx-pair? _%e148823148865%_)
                                  (let ((_%e148830148941%_
                                         (gx#syntax-e _%e148823148865%_)))
                                    (let ((_%hd148831148944%_
                                           (##car _%e148830148941%_))
                                          (_%tl148832148946%_
                                           (##cdr _%e148830148941%_)))
                                      (if (and (gx#identifier?
                                                _%hd148831148944%_)
                                               (gx#core-identifier=?
                                                _%hd148831148944%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl148832148946%_)
                                              (let ((_%e148833148949%_
                                                     (gx#syntax-e
                                                      _%tl148832148946%_)))
                                                (let ((_%hd148834148952%_
                                                       (##car _%e148833148949%_))
                                                      (_%tl148835148954%_
                                                       (##cdr _%e148833148949%_)))
                                                  (if (gx#stx-pair?
                                                       _%hd148834148952%_)
                                                      (let ((_%e148839148957%_
                                                             (gx#syntax-e
                                                              _%hd148834148952%_)))
                                                        (let ((_%hd148840148960%_
                                                               (##car _%e148839148957%_))
                                                              (_%tl148841148962%_
                                                               (##cdr _%e148839148957%_)))
                                                          (let ((_%id148965%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd148840148960%_))
                    (if (gx#stx-null? _%tl148841148962%_)
                        (if (gx#stx-pair? _%tl148835148954%_)
                            (let ((_%e148836148967%_
                                   (gx#syntax-e _%tl148835148954%_)))
                              (let ((_%hd148837148970%_
                                     (##car _%e148836148967%_))
                                    (_%tl148838148972%_
                                     (##cdr _%e148836148967%_)))
                                (let* ((_%expr148975%_ _%hd148837148970%_)
                                       (_%props148977%_ _%tl148838148972%_))
                                  (if (gx#identifier? _%id148965%_)
                                      (let ((_%bind148979%_
                                             (gx#core-bind-runtime!__0
                                              _%id148965%_)))
                                        (gx#core-bind-runtime-properties!
                                         _%bind148979%_
                                         _%props148977%_)
                                        (_%K148822%_ _%hd148815%_))
                                      (_%E148829148937%_)))))
                            (_%E148829148937%_))
                        (_%E148829148937%_)))))
              (_%E148829148937%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E148829148937%_))
                                          (_%E148829148937%_))))
                                  (_%E148829148937%_))))
                           (_%E148824148993%_
                            (lambda ()
                              (if (gx#stx-pair? _%e148823148865%_)
                                  (let ((_%e148826148985%_
                                         (gx#syntax-e _%e148823148865%_)))
                                    (let ((_%hd148827148988%_
                                           (##car _%e148826148985%_))
                                          (_%tl148828148990%_
                                           (##cdr _%e148826148985%_)))
                                      (if (and (gx#identifier?
                                                _%hd148827148988%_)
                                               (gx#core-identifier=?
                                                _%hd148827148988%_
                                                '%#begin-syntax))
                                          (_%K148822%_
                                           (gx#core-expand-begin-syntax%
                                            _%hd148815%_))
                                          (_%E148825148981%_))))
                                  (_%E148825148981%_)))))
                      (_%E148824148993%_))))
                 (_%eval-body148694%_
                  (lambda (_%rbody148702%_)
                    (let _%lp148704%_ ((_%rest148706%_ _%rbody148702%_)
                                       (_%body148707%_ '())
                                       (_%ebody148708%_ '()))
                      (let* ((_%rest148709148717%_ _%rest148706%_)
                             (_%else148711148725%_
                              (lambda ()
                                (values _%body148707%_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons
                                           '%#begin
                                           _%ebody148708%_)
                                          (gx#stx-source _%stx148691%_))))))
                             (_%K148713148803%_
                              (lambda (_%rest148728%_ _%hd148729%_)
                                (let* ((_%e148730148747%_ _%hd148729%_)
                                       (_%E148742148751%_
                                        (lambda ()
                                          (_%lp148704%_
                                           _%rest148728%_
                                           (cons _%hd148729%_ _%body148707%_)
                                           (cons _%hd148729%_
                                                 _%ebody148708%_))))
                                       (_%E148732148763%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e148730148747%_)
                                              (let ((_%e148743148755%_
                                                     (gx#syntax-e
                                                      _%e148730148747%_)))
                                                (let ((_%hd148744148758%_
                                                       (##car _%e148743148755%_))
                                                      (_%tl148745148760%_
                                                       (##cdr _%e148743148755%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd148744148758%_)
                                                           (gx#core-identifier=?
                                                            _%hd148744148758%_
                                                            '%#begin-syntax))
                                                      (_%lp148704%_
                                                       _%rest148728%_
                                                       (cons _%hd148729%_
                                                             _%body148707%_)
                                                       _%ebody148708%_)
                                                      (_%E148742148751%_))))
                                              (_%E148742148751%_))))
                                       (_%E148731148799%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e148730148747%_)
                                              (let ((_%e148733148767%_
                                                     (gx#syntax-e
                                                      _%e148730148747%_)))
                                                (let ((_%hd148734148770%_
                                                       (##car _%e148733148767%_))
                                                      (_%tl148735148772%_
                                                       (##cdr _%e148733148767%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd148734148770%_)
                                                           (gx#core-identifier=?
                                                            _%hd148734148770%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl148735148772%_)
                                                          (let ((_%e148736148775%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl148735148772%_)))
                    (let ((_%hd148737148778%_ (##car _%e148736148775%_))
                          (_%tl148738148780%_ (##cdr _%e148736148775%_)))
                      (let ((_%hd-bind148783%_ _%hd148737148778%_))
                        (if (gx#stx-pair? _%tl148738148780%_)
                            (let ((_%e148739148785%_
                                   (gx#syntax-e _%tl148738148780%_)))
                              (let ((_%hd148740148788%_
                                     (##car _%e148739148785%_))
                                    (_%tl148741148790%_
                                     (##cdr _%e148739148785%_)))
                                (let* ((_%expr148793%_ _%hd148740148788%_)
                                       (_%ignore-props148795%_
                                        _%tl148741148790%_)
                                       (_%ehd148797%_
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#define-values)
                                               (cons (gx#core-quote-bind-values
                                                      _%hd-bind148783%_)
                                                     (cons (gx#core-expand-expression
                                                            _%expr148793%_)
                                                           '())))
                                         (gx#stx-source _%hd148729%_))))
                                  (_%lp148704%_
                                   _%rest148728%_
                                   (cons _%ehd148797%_ _%body148707%_)
                                   (cons _%ehd148797%_ _%ebody148708%_)))))
                            (_%E148732148763%_)))))
                  (_%E148732148763%_))
              (_%E148732148763%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E148732148763%_)))))
                                  (_%E148731148799%_)))))
                        (if (pair? _%rest148709148717%_)
                            (let ((_%hd148714148806%_
                                   (##car _%rest148709148717%_))
                                  (_%tl148715148808%_
                                   (##cdr _%rest148709148717%_)))
                              (let* ((_%hd148811%_ _%hd148714148806%_)
                                     (_%rest148813%_ _%tl148715148808%_))
                                (_%K148713148803%_
                                 _%rest148813%_
                                 _%hd148811%_)))
                            (_%else148711148725%_)))))))
          (call-with-parameters__1
           (lambda ()
             (let* ((_%rbody148697%_
                     (gx#core-expand-block__1
                      _%stx148691%_
                      _%expand-special148693%_
                      '#f))
                    (_g149030_ (_%eval-body148694%_ _%rbody148697%_)))
               (begin
                 (let ((_g149031_
                        (if (##values? _g149030_)
                            (##values-length _g149030_)
                            1)))
                   (if (not (##fx= _g149031_ 2))
                       (error "Context expects 2 values" _g149031_)))
                 (let ((_%expanded-body148699%_ (##values-ref _g149030_ 0))
                       (_%value148700%_ (##values-ref _g149030_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _%expanded-body148699%_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _%value148700%_ '())))
                    (gx#stx-source _%stx148691%_))))))
           gx#current-expander-phi
           (##fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_%stx148661%_)
        (let* ((_%e148662148669%_ _%stx148661%_)
               (_%E148664148673%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e148662148669%_)))
               (_%E148663148687%_
                (lambda ()
                  (if (gx#stx-pair? _%e148662148669%_)
                      (let ((_%e148665148677%_
                             (gx#syntax-e _%e148662148669%_)))
                        (let ((_%hd148666148680%_ (##car _%e148665148677%_))
                              (_%tl148667148682%_ (##cdr _%e148665148677%_)))
                          (let ((_%body148685%_ _%tl148667148682%_))
                            (if (gx#stx-list? _%body148685%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _%body148685%_)
                                 (gx#stx-source _%stx148661%_))
                                (_%E148664148673%_)))))
                      (_%E148664148673%_)))))
          (_%E148663148687%_))))
    (define gx#core-expand-begin-module%
      (lambda (_%stx148659%_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _%stx148659%_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_%stx148605%_)
        (let* ((_%e148606148619%_ _%stx148605%_)
               (_%E148608148623%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e148606148619%_)))
               (_%E148607148655%_
                (lambda ()
                  (if (gx#stx-pair? _%e148606148619%_)
                      (let ((_%e148609148627%_
                             (gx#syntax-e _%e148606148619%_)))
                        (let ((_%hd148610148630%_ (##car _%e148609148627%_))
                              (_%tl148611148632%_ (##cdr _%e148609148627%_)))
                          (if (gx#stx-pair? _%tl148611148632%_)
                              (let ((_%e148612148635%_
                                     (gx#syntax-e _%tl148611148632%_)))
                                (let ((_%hd148613148638%_
                                       (##car _%e148612148635%_))
                                      (_%tl148614148640%_
                                       (##cdr _%e148612148635%_)))
                                  (let ((_%ann148643%_ _%hd148613148638%_))
                                    (if (gx#stx-pair? _%tl148614148640%_)
                                        (let ((_%e148615148645%_
                                               (gx#syntax-e
                                                _%tl148614148640%_)))
                                          (let ((_%hd148616148648%_
                                                 (##car _%e148615148645%_))
                                                (_%tl148617148650%_
                                                 (##cdr _%e148615148645%_)))
                                            (let ((_%expr148653%_
                                                   _%hd148616148648%_))
                                              (if (gx#stx-null?
                                                   _%tl148617148650%_)
                                                  (gx#core-quote-syntax__1
                                                   (cons (gx#core-quote-syntax__0
                                                          '%#begin-annotation)
                                                         (cons _%ann148643%_
                                                               (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%expr148653%_)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (gx#stx-source
                                                    _%stx148605%_))
                                                  (_%E148608148623%_)))))
                                        (_%E148608148623%_)))))
                              (_%E148608148623%_))))
                      (_%E148608148623%_)))))
          (_%E148607148655%_))))
    (define gx#core-expand-local-block
      (lambda (_%stx148270%_ _%body148271%_)
        (letrec ((_%expand-special148273%_
                  (lambda (_%hd148600%_ _%K148601%_ _%rest148602%_ _%r148603%_)
                    (_%K148601%_
                     '()
                     (cons (_%expand-internal148274%_
                            _%hd148600%_
                            _%rest148602%_)
                           _%r148603%_))))
                 (_%expand-internal148274%_
                  (lambda (_%hd148596%_ _%rest148597%_)
                    (call-with-parameters__1
                     (lambda ()
                       (_%wrap-internal148276%_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _%hd148596%_ _%rest148597%_))
                          (gx#stx-source _%stx148270%_))
                         _%expand-internal-special148275%_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj149014
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init!__0 __obj149014)
                       __obj149014))))
                 (_%expand-internal-special148275%_
                  (lambda (_%hd148434%_ _%K148435%_ _%rest148436%_ _%r148437%_)
                    (let* ((_%e148438148476%_ _%hd148434%_)
                           (_%E148471148480%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e148438148476%_)))
                           (_%E148467148492%_
                            (lambda ()
                              (if (gx#stx-pair? _%e148438148476%_)
                                  (let ((_%e148472148484%_
                                         (gx#syntax-e _%e148438148476%_)))
                                    (let ((_%hd148473148487%_
                                           (##car _%e148472148484%_))
                                          (_%tl148474148489%_
                                           (##cdr _%e148472148484%_)))
                                      (if (and (gx#identifier?
                                                _%hd148473148487%_)
                                               (gx#core-identifier=?
                                                _%hd148473148487%_
                                                '%#declare))
                                          (_%K148435%_
                                           _%rest148436%_
                                           (cons (gx#core-expand-declare%
                                                  _%hd148434%_)
                                                 _%r148437%_))
                                          (_%E148471148480%_))))
                                  (_%E148471148480%_))))
                           (_%E148463148504%_
                            (lambda ()
                              (if (gx#stx-pair? _%e148438148476%_)
                                  (let ((_%e148468148496%_
                                         (gx#syntax-e _%e148438148476%_)))
                                    (let ((_%hd148469148499%_
                                           (##car _%e148468148496%_))
                                          (_%tl148470148501%_
                                           (##cdr _%e148468148496%_)))
                                      (if (and (gx#identifier?
                                                _%hd148469148499%_)
                                               (gx#core-identifier=?
                                                _%hd148469148499%_
                                                '%#define-alias))
                                          (begin
                                            (gx#core-expand-define-alias%
                                             _%hd148434%_)
                                            (_%K148435%_
                                             _%rest148436%_
                                             _%r148437%_))
                                          (_%E148467148492%_))))
                                  (_%E148467148492%_))))
                           (_%E148453148516%_
                            (lambda ()
                              (if (gx#stx-pair? _%e148438148476%_)
                                  (let ((_%e148464148508%_
                                         (gx#syntax-e _%e148438148476%_)))
                                    (let ((_%hd148465148511%_
                                           (##car _%e148464148508%_))
                                          (_%tl148466148513%_
                                           (##cdr _%e148464148508%_)))
                                      (if (and (gx#identifier?
                                                _%hd148465148511%_)
                                               (gx#core-identifier=?
                                                _%hd148465148511%_
                                                '%#define-syntax))
                                          (begin
                                            (gx#core-expand-define-syntax%
                                             _%hd148434%_)
                                            (_%K148435%_
                                             _%rest148436%_
                                             _%r148437%_))
                                          (_%E148463148504%_))))
                                  (_%E148463148504%_))))
                           (_%E148440148548%_
                            (lambda ()
                              (if (gx#stx-pair? _%e148438148476%_)
                                  (let ((_%e148454148520%_
                                         (gx#syntax-e _%e148438148476%_)))
                                    (let ((_%hd148455148523%_
                                           (##car _%e148454148520%_))
                                          (_%tl148456148525%_
                                           (##cdr _%e148454148520%_)))
                                      (if (and (gx#identifier?
                                                _%hd148455148523%_)
                                               (gx#core-identifier=?
                                                _%hd148455148523%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl148456148525%_)
                                              (let ((_%e148457148528%_
                                                     (gx#syntax-e
                                                      _%tl148456148525%_)))
                                                (let ((_%hd148458148531%_
                                                       (##car _%e148457148528%_))
                                                      (_%tl148459148533%_
                                                       (##cdr _%e148457148528%_)))
                                                  (let ((_%hd-bind148536%_
                                                         _%hd148458148531%_))
                                                    (if (gx#stx-pair?
                                                         _%tl148459148533%_)
                                                        (let ((_%e148460148538%_
                                                               (gx#syntax-e
                                                                _%tl148459148533%_)))
                                                          (let ((_%hd148461148541%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e148460148538%_))
                        (_%tl148462148543%_ (##cdr _%e148460148538%_)))
                    (let ((_%expr148546%_ _%hd148461148541%_))
                      (if (gx#stx-null? _%tl148462148543%_)
                          (if (gx#core-bind-values? _%hd-bind148536%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind148536%_)
                                (_%K148435%_
                                 _%rest148436%_
                                 (cons _%hd148434%_ _%r148437%_)))
                              (_%E148453148516%_))
                          (_%E148453148516%_)))))
                (_%E148453148516%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E148453148516%_))
                                          (_%E148453148516%_))))
                                  (_%E148453148516%_))))
                           (_%E148439148592%_
                            (lambda ()
                              (if (gx#stx-pair? _%e148438148476%_)
                                  (let ((_%e148441148552%_
                                         (gx#syntax-e _%e148438148476%_)))
                                    (let ((_%hd148442148555%_
                                           (##car _%e148441148552%_))
                                          (_%tl148443148557%_
                                           (##cdr _%e148441148552%_)))
                                      (if (and (gx#identifier?
                                                _%hd148442148555%_)
                                               (gx#core-identifier=?
                                                _%hd148442148555%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl148443148557%_)
                                              (let ((_%e148444148560%_
                                                     (gx#syntax-e
                                                      _%tl148443148557%_)))
                                                (let ((_%hd148445148563%_
                                                       (##car _%e148444148560%_))
                                                      (_%tl148446148565%_
                                                       (##cdr _%e148444148560%_)))
                                                  (if (gx#stx-pair?
                                                       _%hd148445148563%_)
                                                      (let ((_%e148450148568%_
                                                             (gx#syntax-e
                                                              _%hd148445148563%_)))
                                                        (let ((_%hd148451148571%_
                                                               (##car _%e148450148568%_))
                                                              (_%tl148452148573%_
                                                               (##cdr _%e148450148568%_)))
                                                          (let ((_%id148576%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd148451148571%_))
                    (if (gx#stx-null? _%tl148452148573%_)
                        (if (gx#stx-pair? _%tl148446148565%_)
                            (let ((_%e148447148578%_
                                   (gx#syntax-e _%tl148446148565%_)))
                              (let ((_%hd148448148581%_
                                     (##car _%e148447148578%_))
                                    (_%tl148449148583%_
                                     (##cdr _%e148447148578%_)))
                                (let* ((_%expr148586%_ _%hd148448148581%_)
                                       (_%props148588%_ _%tl148449148583%_))
                                  (if (gx#identifier? _%id148576%_)
                                      (let ((_%bind148590%_
                                             (gx#core-bind-runtime!__0
                                              _%id148576%_)))
                                        (gx#core-bind-runtime-properties!
                                         _%bind148590%_
                                         _%props148588%_)
                                        (_%K148435%_
                                         _%rest148436%_
                                         (cons _%hd148434%_ _%r148437%_)))
                                      (_%E148440148548%_)))))
                            (_%E148440148548%_))
                        (_%E148440148548%_)))))
              (_%E148440148548%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E148440148548%_))
                                          (_%E148440148548%_))))
                                  (_%E148440148548%_)))))
                      (_%E148439148592%_))))
                 (_%wrap-internal148276%_
                  (lambda (_%rbody148278%_)
                    (let _%lp148280%_ ((_%rest148282%_ _%rbody148278%_)
                                       (_%decls148283%_ '())
                                       (_%bind148284%_ '())
                                       (_%body148285%_ '()))
                      (let* ((_%e148286148293%_ _%rest148282%_)
                             (_%E148288148342%_
                              (lambda ()
                                (let* ((_%body148337%_
                                        (let* ((_%body148296148306%_
                                                _%body148285%_)
                                               (_%else148299148314%_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _%body148285%_)
                                                   (gx#stx-source
                                                    _%stx148270%_)))))
                                          (let ((_%K148304148334%_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _%stx148270%_)))
                                                (_%K148301148320%_
                                                 (lambda (_%expr148318%_)
                                                   _%expr148318%_)))
                                            (let ((_%try-match148298148330%_
                                                   (lambda ()
                                                     (if (pair? _%body148296148306%_)
                                                         (let ((_%tl148303148325%_
                                                                (##cdr _%body148296148306%_))
                                                               (_%hd148302148323%_
                                                                (##car _%body148296148306%_)))
                                                           (if (null? _%tl148303148325%_)
                                                               (let ((_%expr148328%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd148302148323%_))
                         (_%K148301148320%_ _%expr148328%_))
                       (_%else148299148314%_)))
                 (_%else148299148314%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (null? _%body148296148306%_)
                                                  (_%K148304148334%_)
                                                  (_%try-match148298148330%_))))))
                                       (_%body148339%_
                                        (if (null? _%bind148284%_)
                                            _%body148337%_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _%bind148284%_
                                                         (cons _%body148337%_
                                                               '())))
                                             (gx#stx-source _%stx148270%_)))))
                                  (if (null? _%decls148283%_)
                                      _%body148339%_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _%decls148283%_
                                                   (cons _%body148339%_ '())))
                                       (gx#stx-source _%stx148270%_))))))
                             (_%E148287148430%_
                              (lambda ()
                                (if (gx#stx-pair? _%e148286148293%_)
                                    (let ((_%e148289148346%_
                                           (gx#syntax-e _%e148286148293%_)))
                                      (let ((_%hd148290148349%_
                                             (##car _%e148289148346%_))
                                            (_%tl148291148351%_
                                             (##cdr _%e148289148346%_)))
                                        (let* ((_%hd148354%_
                                                _%hd148290148349%_)
                                               (_%rest148356%_
                                                _%tl148291148351%_)
                                               (_%e148357148374%_ _%hd148354%_)
                                               (_%E148369148378%_
                                                (lambda ()
                                                  (if (null? _%bind148284%_)
                                                      (_%lp148280%_
                                                       _%rest148356%_
                                                       _%decls148283%_
                                                       _%bind148284%_
                                                       (cons _%hd148354%_
                                                             _%body148285%_))
                                                      (_%lp148280%_
                                                       _%rest148356%_
                                                       _%decls148283%_
                                                       (cons (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%hd148354%_ '()))
                     _%bind148284%_)
               _%body148285%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E148359148392%_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _%e148357148374%_)
                                                      (let ((_%e148370148382%_
                                                             (gx#syntax-e
                                                              _%e148357148374%_)))
                                                        (let ((_%hd148371148385%_
                                                               (##car _%e148370148382%_))
                                                              (_%tl148372148387%_
                                                               (##cdr _%e148370148382%_)))
                                                          (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%hd148371148385%_)
                           (gx#core-identifier=?
                            _%hd148371148385%_
                            '%#declare))
                      (let ((_%xdecls148390%_ _%tl148372148387%_))
                        (_%lp148280%_
                         _%rest148356%_
                         (gx#stx-foldr cons _%decls148283%_ _%xdecls148390%_)
                         _%bind148284%_
                         _%body148285%_))
                      (_%E148369148378%_))))
              (_%E148369148378%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E148358148426%_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _%e148357148374%_)
                                                      (let ((_%e148360148396%_
                                                             (gx#syntax-e
                                                              _%e148357148374%_)))
                                                        (let ((_%hd148361148399%_
                                                               (##car _%e148360148396%_))
                                                              (_%tl148362148401%_
                                                               (##cdr _%e148360148396%_)))
                                                          (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%hd148361148399%_)
                           (gx#core-identifier=?
                            _%hd148361148399%_
                            '%#define-values))
                      (if (gx#stx-pair? _%tl148362148401%_)
                          (let ((_%e148363148404%_
                                 (gx#syntax-e _%tl148362148401%_)))
                            (let ((_%hd148364148407%_
                                   (##car _%e148363148404%_))
                                  (_%tl148365148409%_
                                   (##cdr _%e148363148404%_)))
                              (let ((_%hd-bind148412%_ _%hd148364148407%_))
                                (if (gx#stx-pair? _%tl148365148409%_)
                                    (let ((_%e148366148414%_
                                           (gx#syntax-e _%tl148365148409%_)))
                                      (let ((_%hd148367148417%_
                                             (##car _%e148366148414%_))
                                            (_%tl148368148419%_
                                             (##cdr _%e148366148414%_)))
                                        (let* ((_%expr148422%_
                                                _%hd148367148417%_)
                                               (_%ignore-props148424%_
                                                _%tl148368148419%_))
                                          (_%lp148280%_
                                           _%rest148356%_
                                           _%decls148283%_
                                           (cons (cons (gx#core-quote-bind-values
                                                        _%hd-bind148412%_)
                                                       (cons (gx#core-expand-expression
                                                              _%expr148422%_)
                                                             '()))
                                                 _%bind148284%_)
                                           _%body148285%_))))
                                    (_%E148359148392%_)))))
                          (_%E148359148392%_))
                      (_%E148359148392%_))))
              (_%E148359148392%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%E148358148426%_))))
                                    (_%E148288148342%_)))))
                        (_%E148287148430%_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _%body148271%_)
            (gx#stx-source _%stx148270%_))
           _%expand-special148273%_))))
    (define gx#core-expand-declare%
      (lambda (_%stx148208%_)
        (let* ((_%e148209148216%_ _%stx148208%_)
               (_%E148211148220%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e148209148216%_)))
               (_%E148210148266%_
                (lambda ()
                  (if (gx#stx-pair? _%e148209148216%_)
                      (let ((_%e148212148224%_
                             (gx#syntax-e _%e148209148216%_)))
                        (let ((_%hd148213148227%_ (##car _%e148212148224%_))
                              (_%tl148214148229%_ (##cdr _%e148212148224%_)))
                          (let ((_%body148232%_ _%tl148214148229%_))
                            (if (gx#stx-list? _%body148232%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_%decl148234%_)
                                     (let* ((_%e148235148242%_ _%decl148234%_)
                                            (_%E148237148246%_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _%e148235148242%_)))
                                            (_%E148236148262%_
                                             (lambda ()
                                               (if (gx#stx-pair?
                                                    _%e148235148242%_)
                                                   (let ((_%e148238148250%_
                                                          (gx#syntax-e
                                                           _%e148235148242%_)))
                                                     (let ((_%hd148239148253%_
                                                            (##car _%e148238148250%_))
                                                           (_%tl148240148255%_
                                                            (##cdr _%e148238148250%_)))
                                                       (let* ((_%head148258%_
                                                               _%hd148239148253%_)
                                                              (_%args148260%_
                                                               _%tl148240148255%_))
                                                         (if (gx#stx-list?
                                                              _%args148260%_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _%decl148234%_)
                                                             (_%E148237148246%_)))))
                                                   (_%E148237148246%_)))))
                                       (_%E148236148262%_)))
                                   _%body148232%_))
                                 (gx#stx-source _%stx148208%_))
                                (_%E148211148220%_)))))
                      (_%E148211148220%_)))))
          (_%E148210148266%_))))
    (define gx#core-expand-extern%
      (lambda (_%stx148112%_)
        (let* ((_%e148113148120%_ _%stx148112%_)
               (_%E148115148124%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e148113148120%_)))
               (_%E148114148204%_
                (lambda ()
                  (if (gx#stx-pair? _%e148113148120%_)
                      (let ((_%e148116148128%_
                             (gx#syntax-e _%e148113148120%_)))
                        (let ((_%hd148117148131%_ (##car _%e148116148128%_))
                              (_%tl148118148133%_ (##cdr _%e148116148128%_)))
                          (let ((_%body148136%_ _%tl148118148133%_))
                            (let _%lp148138%_ ((_%rest148140%_ _%body148136%_)
                                               (_%r148141%_ '()))
                              (let* ((_%e148142148156%_ _%rest148140%_)
                                     (_%E148154148160%_
                                      (lambda ()
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                         _%stx148112%_)))
                                     (_%E148144148164%_
                                      (lambda ()
                                        (if (gx#stx-null? _%e148142148156%_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-cons
                                              '%#extern
                                              (reverse _%r148141%_))
                                             (gx#stx-source _%stx148112%_))
                                            (_%E148154148160%_))))
                                     (_%E148143148200%_
                                      (lambda ()
                                        (if (gx#stx-pair? _%e148142148156%_)
                                            (let ((_%e148145148168%_
                                                   (gx#syntax-e
                                                    _%e148142148156%_)))
                                              (let ((_%hd148146148171%_
                                                     (##car _%e148145148168%_))
                                                    (_%tl148147148173%_
                                                     (##cdr _%e148145148168%_)))
                                                (if (gx#stx-pair?
                                                     _%hd148146148171%_)
                                                    (let ((_%e148148148176%_
                                                           (gx#syntax-e
                                                            _%hd148146148171%_)))
                                                      (let ((_%hd148149148179%_
                                                             (##car _%e148148148176%_))
                                                            (_%tl148150148181%_
                                                             (##cdr _%e148148148176%_)))
                                                        (let ((_%id148184%_
                                                               _%hd148149148179%_))
                                                          (if (gx#stx-pair?
                                                               _%tl148150148181%_)
                                                              (let ((_%e148151148186%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl148150148181%_)))
                        (let ((_%hd148152148189%_ (##car _%e148151148186%_))
                              (_%tl148153148191%_ (##cdr _%e148151148186%_)))
                          (let ((_%eid148194%_ _%hd148152148189%_))
                            (if (gx#stx-null? _%tl148153148191%_)
                                (let ((_%rest148196%_ _%tl148147148173%_))
                                  (if (and (gx#identifier? _%id148184%_)
                                           (gx#identifier? _%eid148194%_))
                                      (let ((_%eid148198%_
                                             (gx#stx-e _%eid148194%_)))
                                        (gx#core-bind-extern!__0
                                         _%id148184%_
                                         _%eid148198%_)
                                        (_%lp148138%_
                                         _%rest148196%_
                                         (cons (cons (gx#core-quote-syntax__0
                                                      _%id148184%_)
                                                     (cons _%eid148198%_ '()))
                                               _%r148141%_)))
                                      (_%E148144148164%_)))
                                (_%E148144148164%_)))))
                      (_%E148144148164%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E148144148164%_))))
                                            (_%E148144148164%_)))))
                                (_%E148143148200%_))))))
                      (_%E148115148124%_)))))
          (_%E148114148204%_))))
    (define gx#core-expand-define-values%
      (lambda (_%stx148001%_)
        (let* ((_%e148002148028%_ _%stx148001%_)
               (_%E148017148032%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e148002148028%_)))
               (_%E148004148064%_
                (lambda ()
                  (if (gx#stx-pair? _%e148002148028%_)
                      (let ((_%e148018148036%_
                             (gx#syntax-e _%e148002148028%_)))
                        (let ((_%hd148019148039%_ (##car _%e148018148036%_))
                              (_%tl148020148041%_ (##cdr _%e148018148036%_)))
                          (if (gx#stx-pair? _%tl148020148041%_)
                              (let ((_%e148021148044%_
                                     (gx#syntax-e _%tl148020148041%_)))
                                (let ((_%hd148022148047%_
                                       (##car _%e148021148044%_))
                                      (_%tl148023148049%_
                                       (##cdr _%e148021148044%_)))
                                  (let ((_%hd148052%_ _%hd148022148047%_))
                                    (if (gx#stx-pair? _%tl148023148049%_)
                                        (let ((_%e148024148054%_
                                               (gx#syntax-e
                                                _%tl148023148049%_)))
                                          (let ((_%hd148025148057%_
                                                 (##car _%e148024148054%_))
                                                (_%tl148026148059%_
                                                 (##cdr _%e148024148054%_)))
                                            (let ((_%expr148062%_
                                                   _%hd148025148057%_))
                                              (if (gx#stx-null?
                                                   _%tl148026148059%_)
                                                  (if (gx#core-bind-values?
                                                       _%hd148052%_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _%hd148052%_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd148052%_)
                             (cons (gx#core-expand-expression _%expr148062%_)
                                   '())))
                 (gx#stx-source _%stx148001%_)))
              (_%E148017148032%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E148017148032%_)))))
                                        (_%E148017148032%_)))))
                              (_%E148017148032%_))))
                      (_%E148017148032%_))))
               (_%E148003148108%_
                (lambda ()
                  (if (gx#stx-pair? _%e148002148028%_)
                      (let ((_%e148005148068%_
                             (gx#syntax-e _%e148002148028%_)))
                        (let ((_%hd148006148071%_ (##car _%e148005148068%_))
                              (_%tl148007148073%_ (##cdr _%e148005148068%_)))
                          (if (gx#stx-pair? _%tl148007148073%_)
                              (let ((_%e148008148076%_
                                     (gx#syntax-e _%tl148007148073%_)))
                                (let ((_%hd148009148079%_
                                       (##car _%e148008148076%_))
                                      (_%tl148010148081%_
                                       (##cdr _%e148008148076%_)))
                                  (if (gx#stx-pair? _%hd148009148079%_)
                                      (let ((_%e148014148084%_
                                             (gx#syntax-e _%hd148009148079%_)))
                                        (let ((_%hd148015148087%_
                                               (##car _%e148014148084%_))
                                              (_%tl148016148089%_
                                               (##cdr _%e148014148084%_)))
                                          (let ((_%id148092%_
                                                 _%hd148015148087%_))
                                            (if (gx#stx-null?
                                                 _%tl148016148089%_)
                                                (if (gx#stx-pair?
                                                     _%tl148010148081%_)
                                                    (let ((_%e148011148094%_
                                                           (gx#syntax-e
                                                            _%tl148010148081%_)))
                                                      (let ((_%hd148012148097%_
                                                             (##car _%e148011148094%_))
                                                            (_%tl148013148099%_
                                                             (##cdr _%e148011148094%_)))
                                                        (let* ((_%expr148102%_
                                                                _%hd148012148097%_)
                                                               (_%props148104%_
                                                                _%tl148013148099%_))
                                                          (if (gx#identifier?
                                                               _%id148092%_)
                                                              (let ((_%bind148106%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#core-bind-runtime!__0 _%id148092%_)))
                        (gx#core-bind-runtime-properties!
                         _%bind148106%_
                         _%props148104%_)
                        (gx#core-quote-syntax__1
                         (cons (gx#core-quote-syntax__0 '%#define-values)
                               (cons (gx#core-quote-bind-values
                                      (cons _%id148092%_ '()))
                                     (cons (gx#core-expand-expression
                                            _%expr148102%_)
                                           '())))
                         (gx#stx-source _%stx148001%_)))
                      (_%E148004148064%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E148004148064%_))
                                                (_%E148004148064%_)))))
                                      (_%E148004148064%_))))
                              (_%E148004148064%_))))
                      (_%E148004148064%_)))))
          (_%E148003148108%_))))
    (define gx#core-expand-define-runtime%
      (lambda (_%stx147940%_)
        (let* ((_%e147941147954%_ _%stx147940%_)
               (_%E147943147958%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e147941147954%_)))
               (_%E147942147997%_
                (lambda ()
                  (if (gx#stx-pair? _%e147941147954%_)
                      (let ((_%e147944147962%_
                             (gx#syntax-e _%e147941147954%_)))
                        (let ((_%hd147945147965%_ (##car _%e147944147962%_))
                              (_%tl147946147967%_ (##cdr _%e147944147962%_)))
                          (if (gx#stx-pair? _%tl147946147967%_)
                              (let ((_%e147947147970%_
                                     (gx#syntax-e _%tl147946147967%_)))
                                (let ((_%hd147948147973%_
                                       (##car _%e147947147970%_))
                                      (_%tl147949147975%_
                                       (##cdr _%e147947147970%_)))
                                  (let ((_%id147978%_ _%hd147948147973%_))
                                    (if (gx#stx-pair? _%tl147949147975%_)
                                        (let ((_%e147950147980%_
                                               (gx#syntax-e
                                                _%tl147949147975%_)))
                                          (let ((_%hd147951147983%_
                                                 (##car _%e147950147980%_))
                                                (_%tl147952147985%_
                                                 (##cdr _%e147950147980%_)))
                                            (let* ((_%binding-id147988%_
                                                    _%hd147951147983%_)
                                                   (_%props147990%_
                                                    _%tl147952147985%_))
                                              (if (and (gx#identifier?
                                                        _%id147978%_)
                                                       (gx#identifier?
                                                        _%binding-id147988%_)
                                                       (gx#stx-list?
                                                        _%props147990%_))
                                                  (let* ((_%eid147992%_
                                                          (gx#stx-e
                                                           _%binding-id147988%_))
                                                         (_%bind147994%_
                                                          (gx#core-bind-runtime-reference!__0
                                                           _%id147978%_
                                                           _%eid147992%_)))
                                                    (gx#core-bind-runtime-properties!
                                                     _%bind147994%_
                                                     _%props147990%_)
                                                    (gx#core-quote-syntax__0
                                                     (cons (gx#core-quote-syntax__0
                                                            '%#define-runtime)
                                                           (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id147978%_)
                         (cons _%eid147992%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E147943147958%_)))))
                                        (_%E147943147958%_)))))
                              (_%E147943147958%_))))
                      (_%E147943147958%_)))))
          (_%E147942147997%_))))
    (define gx#core-bind-runtime-properties!
      (lambda (_%bind147876%_ _%props147877%_)
        (let _%loop147879%_ ((_%rest147881%_ _%props147877%_)
                             (_%props147882%_ '()))
          (let* ((_%e147883147894%_ _%rest147881%_)
                 (_%E147892147898%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e147883147894%_)))
                 (_%E147885147902%_
                  (lambda ()
                    (if (gx#stx-null? _%e147883147894%_)
                        (if (null? _%props147882%_)
                            '#!void
                            (##structure-set!
                             _%bind147876%_
                             (reverse! _%props147882%_)
                             '4
                             gx#binding::t
                             '#f))
                        (_%E147892147898%_))))
                 (_%E147884147936%_
                  (lambda ()
                    (if (gx#stx-pair? _%e147883147894%_)
                        (let ((_%e147886147906%_
                               (gx#syntax-e _%e147883147894%_)))
                          (let ((_%hd147887147909%_ (##car _%e147886147906%_))
                                (_%tl147888147911%_ (##cdr _%e147886147906%_)))
                            (let ((_%key147914%_ _%hd147887147909%_))
                              (if (gx#stx-pair? _%tl147888147911%_)
                                  (let ((_%e147889147916%_
                                         (gx#syntax-e _%tl147888147911%_)))
                                    (let ((_%hd147890147919%_
                                           (##car _%e147889147916%_))
                                          (_%tl147891147921%_
                                           (##cdr _%e147889147916%_)))
                                      (let* ((_%prop147924%_
                                              _%hd147890147919%_)
                                             (_%rest147926%_
                                              _%tl147891147921%_))
                                        (if (gx#stx-keyword? _%key147914%_)
                                            (let ((_%key147928%_
                                                   (gx#stx-e _%key147914%_)))
                                              (letrec ((_%eval-prop147930%_
                                                        (lambda ()
                                                          (gx#eval-syntax+1__%
                                                           _%prop147924%_
                                                           '#t))))
                                                (let ((_%$e147932%_
                                                       _%key147928%_))
                                                  (if (eq? 'macro:
                                                           _%$e147932%_)
                                                      (begin
                                                        (##structure-set!
                                                         _%bind147876%_
                                                         (_%eval-prop147930%_)
                                                         '6
                                                         gx#runtime-binding::t
                                                         '#f)
                                                        (_%loop147879%_
                                                         _%rest147926%_
                                                         _%props147882%_))
                                                      (if (eq? 'type:
                                                               _%$e147932%_)
                                                          (begin
                                                            (##structure-set!
                                                             _%bind147876%_
                                                             (_%eval-prop147930%_)
                                                             '5
                                                             gx#runtime-binding::t
                                                             '#f)
                                                            (_%loop147879%_
                                                             _%rest147926%_
                                                             _%props147882%_))
                                                          (_%loop147879%_
                                                           _%rest147926%_
                                                           (cons (_%eval-prop147930%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%key147928%_ _%props147882%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E147885147902%_)))))
                                  (_%E147885147902%_)))))
                        (_%E147885147902%_)))))
            (_%E147884147936%_)))))
    (define gx#core-expand-define-syntax%
      (lambda (_%stx147819%_)
        (let* ((_%e147820147833%_ _%stx147819%_)
               (_%E147822147837%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e147820147833%_)))
               (_%E147821147872%_
                (lambda ()
                  (if (gx#stx-pair? _%e147820147833%_)
                      (let ((_%e147823147841%_
                             (gx#syntax-e _%e147820147833%_)))
                        (let ((_%hd147824147844%_ (##car _%e147823147841%_))
                              (_%tl147825147846%_ (##cdr _%e147823147841%_)))
                          (if (gx#stx-pair? _%tl147825147846%_)
                              (let ((_%e147826147849%_
                                     (gx#syntax-e _%tl147825147846%_)))
                                (let ((_%hd147827147852%_
                                       (##car _%e147826147849%_))
                                      (_%tl147828147854%_
                                       (##cdr _%e147826147849%_)))
                                  (let ((_%id147857%_ _%hd147827147852%_))
                                    (if (gx#stx-pair? _%tl147828147854%_)
                                        (let ((_%e147829147859%_
                                               (gx#syntax-e
                                                _%tl147828147854%_)))
                                          (let ((_%hd147830147862%_
                                                 (##car _%e147829147859%_))
                                                (_%tl147831147864%_
                                                 (##cdr _%e147829147859%_)))
                                            (let ((_%expr147867%_
                                                   _%hd147830147862%_))
                                              (if (gx#stx-null?
                                                   _%tl147831147864%_)
                                                  (if (gx#identifier?
                                                       _%id147857%_)
                                                      (let ((_g149032_
                                                             (gx#core-expand-expression+1
                                                              _%expr147867%_)))
                                                        (begin
                                                          (let ((_g149033_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g149032_)
                             (##values-length _g149032_)
                             1)))
                    (if (not (##fx= _g149033_ 2))
                        (error "Context expects 2 values" _g149033_)))
                  (let ((_%e-stx147869%_ (##values-ref _g149032_ 0))
                        (_%e147870%_ (##values-ref _g149032_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _%id147857%_ _%e147870%_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _%id147857%_)
                                   (cons _%e-stx147869%_ '())))
                       (gx#stx-source _%stx147819%_))))))
              (_%E147822147837%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E147822147837%_)))))
                                        (_%E147822147837%_)))))
                              (_%E147822147837%_))))
                      (_%E147822147837%_)))))
          (_%E147821147872%_))))
    (define gx#core-expand-define-alias%
      (lambda (_%stx147763%_)
        (let* ((_%e147764147777%_ _%stx147763%_)
               (_%E147766147781%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e147764147777%_)))
               (_%E147765147815%_
                (lambda ()
                  (if (gx#stx-pair? _%e147764147777%_)
                      (let ((_%e147767147785%_
                             (gx#syntax-e _%e147764147777%_)))
                        (let ((_%hd147768147788%_ (##car _%e147767147785%_))
                              (_%tl147769147790%_ (##cdr _%e147767147785%_)))
                          (if (gx#stx-pair? _%tl147769147790%_)
                              (let ((_%e147770147793%_
                                     (gx#syntax-e _%tl147769147790%_)))
                                (let ((_%hd147771147796%_
                                       (##car _%e147770147793%_))
                                      (_%tl147772147798%_
                                       (##cdr _%e147770147793%_)))
                                  (let ((_%id147801%_ _%hd147771147796%_))
                                    (if (gx#stx-pair? _%tl147772147798%_)
                                        (let ((_%e147773147803%_
                                               (gx#syntax-e
                                                _%tl147772147798%_)))
                                          (let ((_%hd147774147806%_
                                                 (##car _%e147773147803%_))
                                                (_%tl147775147808%_
                                                 (##cdr _%e147773147803%_)))
                                            (let ((_%alias-id147811%_
                                                   _%hd147774147806%_))
                                              (if (gx#stx-null?
                                                   _%tl147775147808%_)
                                                  (if (and (gx#identifier?
                                                            _%id147801%_)
                                                           (gx#identifier?
                                                            _%alias-id147811%_))
                                                      (let ((_%alias-id147813%_
                                                             (gx#core-quote-syntax__0
                                                              _%alias-id147811%_)))
                                                        (gx#core-bind-alias!__0
                                                         _%id147801%_
                                                         _%alias-id147813%_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id147801%_)
                             (cons _%alias-id147813%_ '())))))
              (_%E147766147781%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E147766147781%_)))))
                                        (_%E147766147781%_)))))
                              (_%E147766147781%_))))
                      (_%E147766147781%_)))))
          (_%E147765147815%_))))
    (define gx#core-expand-lambda%__%
      (lambda (_%stx147706%_ _%wrap?147707%_)
        (let* ((_%e147708147718%_ _%stx147706%_)
               (_%E147710147722%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e147708147718%_)))
               (_%E147709147749%_
                (lambda ()
                  (if (gx#stx-pair? _%e147708147718%_)
                      (let ((_%e147711147726%_
                             (gx#syntax-e _%e147708147718%_)))
                        (let ((_%hd147712147729%_ (##car _%e147711147726%_))
                              (_%tl147713147731%_ (##cdr _%e147711147726%_)))
                          (if (gx#stx-pair? _%tl147713147731%_)
                              (let ((_%e147714147734%_
                                     (gx#syntax-e _%tl147713147731%_)))
                                (let ((_%hd147715147737%_
                                       (##car _%e147714147734%_))
                                      (_%tl147716147739%_
                                       (##cdr _%e147714147734%_)))
                                  (let* ((_%hd147742%_ _%hd147715147737%_)
                                         (_%body147744%_ _%tl147716147739%_))
                                    (if (gx#core-bind-values? _%hd147742%_)
                                        (call-with-parameters__1
                                         (lambda ()
                                           (gx#core-bind-values!__0
                                            _%hd147742%_)
                                           (let ((_%body147747%_
                                                  (cons (gx#core-quote-bind-values
                                                         _%hd147742%_)
                                                        (cons (gx#core-expand-local-block
                                                               _%stx147706%_
                                                               _%body147744%_)
                                                              '()))))
                                             (if _%wrap?147707%_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _%body147747%_)
                                                  (gx#stx-source
                                                   _%stx147706%_))
                                                 _%body147747%_)))
                                         gx#current-expander-context
                                         (let ((__obj149015
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj149015)
                                           __obj149015))
                                        (_%E147710147722%_)))))
                              (_%E147710147722%_))))
                      (_%E147710147722%_)))))
          (_%E147709147749%_))))
    (define gx#core-expand-lambda%__0
      (lambda (_%stx147756%_)
        (let ((_%wrap?147758%_ '#t))
          (gx#core-expand-lambda%__% _%stx147756%_ _%wrap?147758%_))))
    (define gx#core-expand-lambda%
      (lambda _g149034_
        (let ((_g149035_ (##length _g149034_)))
          (cond ((##fx= _g149035_ 1)
                 (apply gx#core-expand-lambda%__0 _g149034_))
                ((##fx= _g149035_ 2)
                 (apply gx#core-expand-lambda%__% _g149034_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g149034_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_%stx147670%_)
        (let* ((_%e147671147678%_ _%stx147670%_)
               (_%E147673147682%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e147671147678%_)))
               (_%E147672147701%_
                (lambda ()
                  (if (gx#stx-pair? _%e147671147678%_)
                      (let ((_%e147674147686%_
                             (gx#syntax-e _%e147671147678%_)))
                        (let ((_%hd147675147689%_ (##car _%e147674147686%_))
                              (_%tl147676147691%_ (##cdr _%e147674147686%_)))
                          (let ((_%clauses147694%_ _%tl147676147691%_))
                            (if (gx#stx-list? _%clauses147694%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_%clause147696%_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _%clause147696%_)
                                       (let ((_%$e147698%_
                                              (gx#stx-source
                                               _%clause147696%_)))
                                         (if _%$e147698%_
                                             _%$e147698%_
                                             (gx#stx-source _%stx147670%_))))
                                      '#f))
                                   _%clauses147694%_))
                                 (gx#stx-source _%stx147670%_))
                                (_%E147673147682%_)))))
                      (_%E147673147682%_)))))
          (_%E147672147701%_))))
    (define gx#core-expand-let-values%
      (lambda (_%stx147624%_)
        (let* ((_%e147625147635%_ _%stx147624%_)
               (_%E147627147639%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e147625147635%_)))
               (_%E147626147666%_
                (lambda ()
                  (if (gx#stx-pair? _%e147625147635%_)
                      (let ((_%e147628147643%_
                             (gx#syntax-e _%e147625147635%_)))
                        (let ((_%hd147629147646%_ (##car _%e147628147643%_))
                              (_%tl147630147648%_ (##cdr _%e147628147643%_)))
                          (if (gx#stx-pair? _%tl147630147648%_)
                              (let ((_%e147631147651%_
                                     (gx#syntax-e _%tl147630147648%_)))
                                (let ((_%hd147632147654%_
                                       (##car _%e147631147651%_))
                                      (_%tl147633147656%_
                                       (##cdr _%e147631147651%_)))
                                  (let* ((_%hd147659%_ _%hd147632147654%_)
                                         (_%body147661%_ _%tl147633147656%_))
                                    (if (gx#core-expand-let-bind? _%hd147659%_)
                                        (let ((_%expressions147663%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _%hd147659%_)))
                                          (call-with-parameters__1
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _%hd147659%_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _%hd147659%_
                                                           _%expressions147663%_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%stx147624%_
                         _%body147661%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _%stx147624%_)))
                                           gx#current-expander-context
                                           (let ((__obj149016
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!__0
                                              __obj149016)
                                             __obj149016)))
                                        (_%E147627147639%_)))))
                              (_%E147627147639%_))))
                      (_%E147627147639%_)))))
          (_%E147626147666%_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_%stx147569%_ _%form147570%_)
        (let* ((_%e147571147581%_ _%stx147569%_)
               (_%E147573147585%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e147571147581%_)))
               (_%E147572147610%_
                (lambda ()
                  (if (gx#stx-pair? _%e147571147581%_)
                      (let ((_%e147574147589%_
                             (gx#syntax-e _%e147571147581%_)))
                        (let ((_%hd147575147592%_ (##car _%e147574147589%_))
                              (_%tl147576147594%_ (##cdr _%e147574147589%_)))
                          (if (gx#stx-pair? _%tl147576147594%_)
                              (let ((_%e147577147597%_
                                     (gx#syntax-e _%tl147576147594%_)))
                                (let ((_%hd147578147600%_
                                       (##car _%e147577147597%_))
                                      (_%tl147579147602%_
                                       (##cdr _%e147577147597%_)))
                                  (let* ((_%hd147605%_ _%hd147578147600%_)
                                         (_%body147607%_ _%tl147579147602%_))
                                    (if (gx#core-expand-let-bind? _%hd147605%_)
                                        (call-with-parameters__1
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _%hd147605%_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _%form147570%_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _%hd147605%_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _%hd147605%_))
                                                        (cons (gx#core-expand-local-block
                                                               _%stx147569%_
                                                               _%body147607%_)
                                                              '())))
                                            (gx#stx-source _%stx147569%_)))
                                         gx#current-expander-context
                                         (let ((__obj149017
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj149017)
                                           __obj149017))
                                        (_%E147573147585%_)))))
                              (_%E147573147585%_))))
                      (_%E147573147585%_)))))
          (_%E147572147610%_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_%stx147617%_)
        (let ((_%form147619%_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _%stx147617%_ _%form147619%_))))
    (define gx#core-expand-letrec-values%
      (lambda _g149036_
        (let ((_g149037_ (##length _g149036_)))
          (cond ((##fx= _g149037_ 1)
                 (apply gx#core-expand-letrec-values%__0 _g149036_))
                ((##fx= _g149037_ 2)
                 (apply gx#core-expand-letrec-values%__% _g149036_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g149036_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_%stx147566%_)
        (gx#core-expand-letrec-values%__% _%stx147566%_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_%stx147523%_)
        (if (gx#stx-list? _%stx147523%_)
            (gx#stx-andmap
             (lambda (_%bind147525%_)
               (let* ((_%e147526147536%_ _%bind147525%_)
                      (_%E147528147540%_ (lambda () '#f))
                      (_%E147527147562%_
                       (lambda ()
                         (if (gx#stx-pair? _%e147526147536%_)
                             (let ((_%e147529147544%_
                                    (gx#syntax-e _%e147526147536%_)))
                               (let ((_%hd147530147547%_
                                      (##car _%e147529147544%_))
                                     (_%tl147531147549%_
                                      (##cdr _%e147529147544%_)))
                                 (let ((_%hd147552%_ _%hd147530147547%_))
                                   (if (gx#stx-pair? _%tl147531147549%_)
                                       (let ((_%e147532147554%_
                                              (gx#syntax-e
                                               _%tl147531147549%_)))
                                         (let ((_%hd147533147557%_
                                                (##car _%e147532147554%_))
                                               (_%tl147534147559%_
                                                (##cdr _%e147532147554%_)))
                                           (if (gx#stx-null?
                                                _%tl147534147559%_)
                                               (gx#core-bind-values?
                                                _%hd147552%_)
                                               (_%E147528147540%_))))
                                       (_%E147528147540%_)))))
                             (_%E147528147540%_)))))
                 (_%E147527147562%_)))
             _%stx147523%_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_%bind147482%_)
        (let* ((_%e147483147493%_ _%bind147482%_)
               (_%E147485147497%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e147483147493%_)))
               (_%E147484147519%_
                (lambda ()
                  (if (gx#stx-pair? _%e147483147493%_)
                      (let ((_%e147486147501%_
                             (gx#syntax-e _%e147483147493%_)))
                        (let ((_%hd147487147504%_ (##car _%e147486147501%_))
                              (_%tl147488147506%_ (##cdr _%e147486147501%_)))
                          (if (gx#stx-pair? _%tl147488147506%_)
                              (let ((_%e147489147509%_
                                     (gx#syntax-e _%tl147488147506%_)))
                                (let ((_%hd147490147512%_
                                       (##car _%e147489147509%_))
                                      (_%tl147491147514%_
                                       (##cdr _%e147489147509%_)))
                                  (let ((_%expr147517%_ _%hd147490147512%_))
                                    (if (gx#stx-null? _%tl147491147514%_)
                                        (gx#core-expand-expression
                                         _%expr147517%_)
                                        (_%E147485147497%_)))))
                              (_%E147485147497%_))))
                      (_%E147485147497%_)))))
          (_%E147484147519%_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_%bind147441%_)
        (let* ((_%e147442147452%_ _%bind147441%_)
               (_%E147444147456%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e147442147452%_)))
               (_%E147443147478%_
                (lambda ()
                  (if (gx#stx-pair? _%e147442147452%_)
                      (let ((_%e147445147460%_
                             (gx#syntax-e _%e147442147452%_)))
                        (let ((_%hd147446147463%_ (##car _%e147445147460%_))
                              (_%tl147447147465%_ (##cdr _%e147445147460%_)))
                          (let ((_%hd147468%_ _%hd147446147463%_))
                            (if (gx#stx-pair? _%tl147447147465%_)
                                (let ((_%e147448147470%_
                                       (gx#syntax-e _%tl147447147465%_)))
                                  (let ((_%hd147449147473%_
                                         (##car _%e147448147470%_))
                                        (_%tl147450147475%_
                                         (##cdr _%e147448147470%_)))
                                    (if (gx#stx-null? _%tl147450147475%_)
                                        (gx#core-bind-values!__0 _%hd147468%_)
                                        (_%E147444147456%_))))
                                (_%E147444147456%_)))))
                      (_%E147444147456%_)))))
          (_%E147443147478%_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_%bind147399%_ _%expr147400%_)
        (let* ((_%e147401147411%_ _%bind147399%_)
               (_%E147403147415%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e147401147411%_)))
               (_%E147402147437%_
                (lambda ()
                  (if (gx#stx-pair? _%e147401147411%_)
                      (let ((_%e147404147419%_
                             (gx#syntax-e _%e147401147411%_)))
                        (let ((_%hd147405147422%_ (##car _%e147404147419%_))
                              (_%tl147406147424%_ (##cdr _%e147404147419%_)))
                          (let ((_%hd147427%_ _%hd147405147422%_))
                            (if (gx#stx-pair? _%tl147406147424%_)
                                (let ((_%e147407147429%_
                                       (gx#syntax-e _%tl147406147424%_)))
                                  (let ((_%hd147408147432%_
                                         (##car _%e147407147429%_))
                                        (_%tl147409147434%_
                                         (##cdr _%e147407147429%_)))
                                    (if (gx#stx-null? _%tl147409147434%_)
                                        (cons (gx#core-quote-bind-values
                                               _%hd147427%_)
                                              (cons _%expr147400%_ '()))
                                        (_%E147403147415%_))))
                                (_%E147403147415%_)))))
                      (_%E147403147415%_)))))
          (_%E147402147437%_))))
    (define gx#core-expand-let-syntax%
      (lambda (_%stx147353%_)
        (let* ((_%e147354147364%_ _%stx147353%_)
               (_%E147356147368%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e147354147364%_)))
               (_%E147355147395%_
                (lambda ()
                  (if (gx#stx-pair? _%e147354147364%_)
                      (let ((_%e147357147372%_
                             (gx#syntax-e _%e147354147364%_)))
                        (let ((_%hd147358147375%_ (##car _%e147357147372%_))
                              (_%tl147359147377%_ (##cdr _%e147357147372%_)))
                          (if (gx#stx-pair? _%tl147359147377%_)
                              (let ((_%e147360147380%_
                                     (gx#syntax-e _%tl147359147377%_)))
                                (let ((_%hd147361147383%_
                                       (##car _%e147360147380%_))
                                      (_%tl147362147385%_
                                       (##cdr _%e147360147380%_)))
                                  (let* ((_%hd147388%_ _%hd147361147383%_)
                                         (_%body147390%_ _%tl147362147385%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd147388%_)
                                        (let ((_%expanders147392%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _%hd147388%_)))
                                          (call-with-parameters__1
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _%hd147388%_
                                              _%expanders147392%_)
                                             (gx#core-expand-local-block
                                              _%stx147353%_
                                              _%body147390%_))
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
                                             __obj149018)))
                                        (_%E147356147368%_)))))
                              (_%E147356147368%_))))
                      (_%E147356147368%_)))))
          (_%E147355147395%_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_%stx147302%_)
        (let* ((_%e147303147313%_ _%stx147302%_)
               (_%E147305147317%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e147303147313%_)))
               (_%E147304147349%_
                (lambda ()
                  (if (gx#stx-pair? _%e147303147313%_)
                      (let ((_%e147306147321%_
                             (gx#syntax-e _%e147303147313%_)))
                        (let ((_%hd147307147324%_ (##car _%e147306147321%_))
                              (_%tl147308147326%_ (##cdr _%e147306147321%_)))
                          (if (gx#stx-pair? _%tl147308147326%_)
                              (let ((_%e147309147329%_
                                     (gx#syntax-e _%tl147308147326%_)))
                                (let ((_%hd147310147332%_
                                       (##car _%e147309147329%_))
                                      (_%tl147311147334%_
                                       (##cdr _%e147309147329%_)))
                                  (let* ((_%hd147337%_ _%hd147310147332%_)
                                         (_%body147339%_ _%tl147311147334%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd147337%_)
                                        (call-with-parameters__1
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _%hd147337%_
                                            (make-list
                                             (gx#stx-length _%hd147337%_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_%g147341147344%_
                                                     _%g147342147346%_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _%g147341147344%_
                                               _%g147342147346%_
                                               '#t))
                                            _%hd147337%_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _%hd147337%_))
                                           (gx#core-expand-local-block
                                            _%stx147302%_
                                            _%body147339%_))
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
                                           __obj149019))
                                        (_%E147305147317%_)))))
                              (_%E147305147317%_))))
                      (_%E147305147317%_)))))
          (_%E147304147349%_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_%stx147259%_)
        (if (gx#stx-list? _%stx147259%_)
            (gx#stx-andmap
             (lambda (_%bind147261%_)
               (let* ((_%e147262147272%_ _%bind147261%_)
                      (_%E147264147276%_ (lambda () '#f))
                      (_%E147263147298%_
                       (lambda ()
                         (if (gx#stx-pair? _%e147262147272%_)
                             (let ((_%e147265147280%_
                                    (gx#syntax-e _%e147262147272%_)))
                               (let ((_%hd147266147283%_
                                      (##car _%e147265147280%_))
                                     (_%tl147267147285%_
                                      (##cdr _%e147265147280%_)))
                                 (let ((_%hd147288%_ _%hd147266147283%_))
                                   (if (gx#stx-pair? _%tl147267147285%_)
                                       (let ((_%e147268147290%_
                                              (gx#syntax-e
                                               _%tl147267147285%_)))
                                         (let ((_%hd147269147293%_
                                                (##car _%e147268147290%_))
                                               (_%tl147270147295%_
                                                (##cdr _%e147268147290%_)))
                                           (if (gx#stx-null?
                                                _%tl147270147295%_)
                                               (gx#identifier? _%hd147288%_)
                                               (_%E147264147276%_))))
                                       (_%E147264147276%_)))))
                             (_%E147264147276%_)))))
                 (_%E147263147298%_)))
             _%stx147259%_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_%bind147215%_)
        (let* ((_%e147216147226%_ _%bind147215%_)
               (_%E147218147230%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e147216147226%_)))
               (_%E147217147255%_
                (lambda ()
                  (if (gx#stx-pair? _%e147216147226%_)
                      (let ((_%e147219147234%_
                             (gx#syntax-e _%e147216147226%_)))
                        (let ((_%hd147220147237%_ (##car _%e147219147234%_))
                              (_%tl147221147239%_ (##cdr _%e147219147234%_)))
                          (if (gx#stx-pair? _%tl147221147239%_)
                              (let ((_%e147222147242%_
                                     (gx#syntax-e _%tl147221147239%_)))
                                (let ((_%hd147223147245%_
                                       (##car _%e147222147242%_))
                                      (_%tl147224147247%_
                                       (##cdr _%e147222147242%_)))
                                  (let ((_%expr147250%_ _%hd147223147245%_))
                                    (if (gx#stx-null? _%tl147224147247%_)
                                        (let ((_g149038_
                                               (gx#core-expand-expression+1
                                                _%expr147250%_)))
                                          (begin
                                            (let ((_g149039_
                                                   (if (##values? _g149038_)
                                                       (##values-length
                                                        _g149038_)
                                                       1)))
                                              (if (not (##fx= _g149039_ 2))
                                                  (error "Context expects 2 values"
                                                         _g149039_)))
                                            (let ((_%_147252%_
                                                   (##values-ref _g149038_ 0))
                                                  (_%e147253%_
                                                   (##values-ref _g149038_ 1)))
                                              _%e147253%_)))
                                        (_%E147218147230%_)))))
                              (_%E147218147230%_))))
                      (_%E147218147230%_)))))
          (_%E147217147255%_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_%bind147160%_ _%e147161%_ _%rebind?147162%_)
        (let* ((_%e147163147173%_ _%bind147160%_)
               (_%E147165147177%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e147163147173%_)))
               (_%E147164147199%_
                (lambda ()
                  (if (gx#stx-pair? _%e147163147173%_)
                      (let ((_%e147166147181%_
                             (gx#syntax-e _%e147163147173%_)))
                        (let ((_%hd147167147184%_ (##car _%e147166147181%_))
                              (_%tl147168147186%_ (##cdr _%e147166147181%_)))
                          (let ((_%id147189%_ _%hd147167147184%_))
                            (if (gx#stx-pair? _%tl147168147186%_)
                                (let ((_%e147169147191%_
                                       (gx#syntax-e _%tl147168147186%_)))
                                  (let ((_%hd147170147194%_
                                         (##car _%e147169147191%_))
                                        (_%tl147171147196%_
                                         (##cdr _%e147169147191%_)))
                                    (if (gx#stx-null? _%tl147171147196%_)
                                        (gx#core-bind-syntax!__1
                                         _%id147189%_
                                         _%e147161%_
                                         _%rebind?147162%_)
                                        (_%E147165147177%_))))
                                (_%E147165147177%_)))))
                      (_%E147165147177%_)))))
          (_%E147164147199%_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_%bind147206%_ _%e147207%_)
        (let ((_%rebind?147209%_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _%bind147206%_
           _%e147207%_
           _%rebind?147209%_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g149040_
        (let ((_g149041_ (##length _g149040_)))
          (cond ((##fx= _g149041_ 2)
                 (apply gx#core-expand-let-bind-syntax!__0 _g149040_))
                ((##fx= _g149041_ 3)
                 (apply gx#core-expand-let-bind-syntax!__% _g149040_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g149040_))))))
    (define gx#core-expand-expression%
      (lambda (_%stx147118%_)
        (let* ((_%e147119147129%_ _%stx147118%_)
               (_%E147121147133%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e147119147129%_)))
               (_%E147120147155%_
                (lambda ()
                  (if (gx#stx-pair? _%e147119147129%_)
                      (let ((_%e147122147137%_
                             (gx#syntax-e _%e147119147129%_)))
                        (let ((_%hd147123147140%_ (##car _%e147122147137%_))
                              (_%tl147124147142%_ (##cdr _%e147122147137%_)))
                          (if (gx#stx-pair? _%tl147124147142%_)
                              (let ((_%e147125147145%_
                                     (gx#syntax-e _%tl147124147142%_)))
                                (let ((_%hd147126147148%_
                                       (##car _%e147125147145%_))
                                      (_%tl147127147150%_
                                       (##cdr _%e147125147145%_)))
                                  (let ((_%expr147153%_ _%hd147126147148%_))
                                    (if (gx#stx-null? _%tl147127147150%_)
                                        (gx#core-expand-expression
                                         _%expr147153%_)
                                        (_%E147121147133%_)))))
                              (_%E147121147133%_))))
                      (_%E147121147133%_)))))
          (_%E147120147155%_))))
    (define gx#core-expand-quote%
      (lambda (_%stx147077%_)
        (let* ((_%e147078147088%_ _%stx147077%_)
               (_%E147080147092%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e147078147088%_)))
               (_%E147079147114%_
                (lambda ()
                  (if (gx#stx-pair? _%e147078147088%_)
                      (let ((_%e147081147096%_
                             (gx#syntax-e _%e147078147088%_)))
                        (let ((_%hd147082147099%_ (##car _%e147081147096%_))
                              (_%tl147083147101%_ (##cdr _%e147081147096%_)))
                          (if (gx#stx-pair? _%tl147083147101%_)
                              (let ((_%e147084147104%_
                                     (gx#syntax-e _%tl147083147101%_)))
                                (let ((_%hd147085147107%_
                                       (##car _%e147084147104%_))
                                      (_%tl147086147109%_
                                       (##cdr _%e147084147104%_)))
                                  (let ((_%e147112%_ _%hd147085147107%_))
                                    (if (gx#stx-null? _%tl147086147109%_)
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#quote)
                                               (cons (gx#syntax->datum
                                                      _%e147112%_)
                                                     '()))
                                         (gx#stx-source _%stx147077%_))
                                        (_%E147080147092%_)))))
                              (_%E147080147092%_))))
                      (_%E147080147092%_)))))
          (_%E147079147114%_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_%stx147036%_)
        (let* ((_%e147037147047%_ _%stx147036%_)
               (_%E147039147051%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e147037147047%_)))
               (_%E147038147073%_
                (lambda ()
                  (if (gx#stx-pair? _%e147037147047%_)
                      (let ((_%e147040147055%_
                             (gx#syntax-e _%e147037147047%_)))
                        (let ((_%hd147041147058%_ (##car _%e147040147055%_))
                              (_%tl147042147060%_ (##cdr _%e147040147055%_)))
                          (if (gx#stx-pair? _%tl147042147060%_)
                              (let ((_%e147043147063%_
                                     (gx#syntax-e _%tl147042147060%_)))
                                (let ((_%hd147044147066%_
                                       (##car _%e147043147063%_))
                                      (_%tl147045147068%_
                                       (##cdr _%e147043147063%_)))
                                  (let ((_%e147071%_ _%hd147044147066%_))
                                    (if (gx#stx-null? _%tl147045147068%_)
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#quote-syntax)
                                               (cons (gx#core-quote-syntax__0
                                                      _%e147071%_)
                                                     '()))
                                         (gx#stx-source _%stx147036%_))
                                        (_%E147039147051%_)))))
                              (_%E147039147051%_))))
                      (_%E147039147051%_)))))
          (_%E147038147073%_))))
    (define gx#core-expand-call%
      (lambda (_%stx146930%_)
        (letrec ((_%expand-runtime-call146932%_
                  (lambda (_%rator-expr147033%_ _%args147034%_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons*
                      '%#call
                      _%rator-expr147033%_
                      (gx#stx-map1 gx#core-expand-expression _%args147034%_))
                     (gx#stx-source _%stx146930%_)))))
          (let* ((_%e146933146943%_ _%stx146930%_)
                 (_%E146935146947%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e146933146943%_)))
                 (_%E146934147029%_
                  (lambda ()
                    (if (gx#stx-pair? _%e146933146943%_)
                        (let ((_%e146936146951%_
                               (gx#syntax-e _%e146933146943%_)))
                          (let ((_%hd146937146954%_ (##car _%e146936146951%_))
                                (_%tl146938146956%_ (##cdr _%e146936146951%_)))
                            (if (gx#stx-pair? _%tl146938146956%_)
                                (let ((_%e146939146959%_
                                       (gx#syntax-e _%tl146938146956%_)))
                                  (let ((_%hd146940146962%_
                                         (##car _%e146939146959%_))
                                        (_%tl146941146964%_
                                         (##cdr _%e146939146959%_)))
                                    (let* ((_%rator146967%_ _%hd146940146962%_)
                                           (_%args146969%_ _%tl146941146964%_))
                                      (if (gx#stx-list? _%args146969%_)
                                          (let* ((_%rator-expr146971%_
                                                  (gx#core-expand-expression
                                                   _%rator146967%_))
                                                 (_%e146972146982%_
                                                  _%rator-expr146971%_)
                                                 (_%E146974146986%_
                                                  (lambda ()
                                                    (_%expand-runtime-call146932%_
                                                     _%rator-expr146971%_
                                                     _%args146969%_)))
                                                 (_%E146973147025%_
                                                  (lambda ()
                                                    (if (gx#stx-pair?
                                                         _%e146972146982%_)
                                                        (let ((_%e146975146990%_
                                                               (gx#syntax-e
                                                                _%e146972146982%_)))
                                                          (let ((_%hd146976146993%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e146975146990%_))
                        (_%tl146977146995%_ (##cdr _%e146975146990%_)))
                    (if (and (gx#identifier? _%hd146976146993%_)
                             (gx#core-identifier=? _%hd146976146993%_ '%#ref))
                        (if (gx#stx-pair? _%tl146977146995%_)
                            (let ((_%e146978146998%_
                                   (gx#syntax-e _%tl146977146995%_)))
                              (let ((_%hd146979147001%_
                                     (##car _%e146978146998%_))
                                    (_%tl146980147003%_
                                     (##cdr _%e146978146998%_)))
                                (let ((_%id147006%_ _%hd146979147001%_))
                                  (if (gx#stx-null? _%tl146980147003%_)
                                      (let ((_%$e147008%_
                                             (gx#resolve-identifier__0
                                              (gx#datum->syntax__0 '#f 'id))))
                                        (if _%$e147008%_
                                            ((lambda (_%bind147011%_)
                                               (let _%again147013%_ ((_%bind147015%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%bind147011%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_%$e147017%_
                                                        (if (##structure-instance-of?
                                                             _%bind147015%_
                                                             'gx#runtime-binding::t)
                                                            (##unchecked-structure-ref
                                                             _%bind147015%_
                                                             '6
                                                             '#f
                                                             '#f)
                                                            '#f)))
                                                   (if _%$e147017%_
                                                       ((lambda (_%macro147020%_)
                                                          (gx#core-expand-expression
                                                           (gx#stx-wrap-source
                                                            (cons _%macro147020%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%args146969%_)
                    (gx#stx-source _%stx146930%_))))
                _%$e147017%_)
               (if (##structure-direct-instance-of?
                    _%bind147015%_
                    'gx#import-binding::t)
                   (_%again147013%_
                    (##unchecked-structure-ref _%bind147015%_ '5 '#f '#f))
                   (_%expand-runtime-call146932%_
                    _%rator-expr146971%_
                    _%args146969%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%$e147008%_)
                                            (_%expand-runtime-call146932%_
                                             _%rator-expr146971%_
                                             _%args146969%_)))
                                      (_%E146974146986%_)))))
                            (_%E146974146986%_))
                        (_%E146974146986%_))))
                (_%E146974146986%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E146973147025%_))
                                          (_%E146935146947%_)))))
                                (_%E146935146947%_))))
                        (_%E146935146947%_)))))
            (_%E146934147029%_)))))
    (define gx#core-expand-if%
      (lambda (_%stx146863%_)
        (let* ((_%e146864146880%_ _%stx146863%_)
               (_%E146866146884%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e146864146880%_)))
               (_%E146865146926%_
                (lambda ()
                  (if (gx#stx-pair? _%e146864146880%_)
                      (let ((_%e146867146888%_
                             (gx#syntax-e _%e146864146880%_)))
                        (let ((_%hd146868146891%_ (##car _%e146867146888%_))
                              (_%tl146869146893%_ (##cdr _%e146867146888%_)))
                          (if (gx#stx-pair? _%tl146869146893%_)
                              (let ((_%e146870146896%_
                                     (gx#syntax-e _%tl146869146893%_)))
                                (let ((_%hd146871146899%_
                                       (##car _%e146870146896%_))
                                      (_%tl146872146901%_
                                       (##cdr _%e146870146896%_)))
                                  (let ((_%test146904%_ _%hd146871146899%_))
                                    (if (gx#stx-pair? _%tl146872146901%_)
                                        (let ((_%e146873146906%_
                                               (gx#syntax-e
                                                _%tl146872146901%_)))
                                          (let ((_%hd146874146909%_
                                                 (##car _%e146873146906%_))
                                                (_%tl146875146911%_
                                                 (##cdr _%e146873146906%_)))
                                            (let ((_%K146914%_
                                                   _%hd146874146909%_))
                                              (if (gx#stx-pair?
                                                   _%tl146875146911%_)
                                                  (let ((_%e146876146916%_
                                                         (gx#syntax-e
                                                          _%tl146875146911%_)))
                                                    (let ((_%hd146877146919%_
                                                           (##car _%e146876146916%_))
                                                          (_%tl146878146921%_
                                                           (##cdr _%e146876146916%_)))
                                                      (let ((_%E146924%_
                                                             _%hd146877146919%_))
                                                        (if (gx#stx-null?
                                                             _%tl146878146921%_)
                                                            (gx#core-quote-syntax__1
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#if)
                           (cons (gx#core-expand-expression _%test146904%_)
                                 (cons (gx#core-expand-expression _%K146914%_)
                                       (cons (gx#core-expand-expression
                                              _%E146924%_)
                                             '()))))
                     (gx#stx-source _%stx146863%_))
                    (_%E146866146884%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E146866146884%_)))))
                                        (_%E146866146884%_)))))
                              (_%E146866146884%_))))
                      (_%E146866146884%_)))))
          (_%E146865146926%_))))
    (define gx#core-expand-ref%
      (lambda (_%stx146822%_)
        (let* ((_%e146823146833%_ _%stx146822%_)
               (_%E146825146837%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e146823146833%_)))
               (_%E146824146859%_
                (lambda ()
                  (if (gx#stx-pair? _%e146823146833%_)
                      (let ((_%e146826146841%_
                             (gx#syntax-e _%e146823146833%_)))
                        (let ((_%hd146827146844%_ (##car _%e146826146841%_))
                              (_%tl146828146846%_ (##cdr _%e146826146841%_)))
                          (if (gx#stx-pair? _%tl146828146846%_)
                              (let ((_%e146829146849%_
                                     (gx#syntax-e _%tl146828146846%_)))
                                (let ((_%hd146830146852%_
                                       (##car _%e146829146849%_))
                                      (_%tl146831146854%_
                                       (##cdr _%e146829146849%_)))
                                  (let ((_%id146857%_ _%hd146830146852%_))
                                    (if (gx#stx-null? _%tl146831146854%_)
                                        (if (gx#identifier? _%id146857%_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _%id146857%_
                                                          _%stx146822%_)
                                                         '()))
                                             (gx#stx-source _%stx146822%_))
                                            (_%E146825146837%_))
                                        (_%E146825146837%_)))))
                              (_%E146825146837%_))))
                      (_%E146825146837%_)))))
          (_%E146824146859%_))))
    (define gx#core-expand-setq%
      (lambda (_%stx146768%_)
        (let* ((_%e146769146782%_ _%stx146768%_)
               (_%E146771146786%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e146769146782%_)))
               (_%E146770146818%_
                (lambda ()
                  (if (gx#stx-pair? _%e146769146782%_)
                      (let ((_%e146772146790%_
                             (gx#syntax-e _%e146769146782%_)))
                        (let ((_%hd146773146793%_ (##car _%e146772146790%_))
                              (_%tl146774146795%_ (##cdr _%e146772146790%_)))
                          (if (gx#stx-pair? _%tl146774146795%_)
                              (let ((_%e146775146798%_
                                     (gx#syntax-e _%tl146774146795%_)))
                                (let ((_%hd146776146801%_
                                       (##car _%e146775146798%_))
                                      (_%tl146777146803%_
                                       (##cdr _%e146775146798%_)))
                                  (let ((_%id146806%_ _%hd146776146801%_))
                                    (if (gx#stx-pair? _%tl146777146803%_)
                                        (let ((_%e146778146808%_
                                               (gx#syntax-e
                                                _%tl146777146803%_)))
                                          (let ((_%hd146779146811%_
                                                 (##car _%e146778146808%_))
                                                (_%tl146780146813%_
                                                 (##cdr _%e146778146808%_)))
                                            (let ((_%expr146816%_
                                                   _%hd146779146811%_))
                                              (if (gx#stx-null?
                                                   _%tl146780146813%_)
                                                  (if (gx#identifier?
                                                       _%id146806%_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%id146806%_
                            _%stx146768%_)
                           (cons (gx#core-expand-expression _%expr146816%_)
                                 '())))
               (gx#stx-source _%stx146768%_))
              (_%E146771146786%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E146771146786%_)))))
                                        (_%E146771146786%_)))))
                              (_%E146771146786%_))))
                      (_%E146771146786%_)))))
          (_%E146770146818%_))))
    (define gx#macro-expand-extern
      (lambda (_%stx146613%_)
        (letrec ((_%generate146615%_
                  (lambda (_%body146645%_)
                    (let _%lp146647%_ ((_%rest146649%_ _%body146645%_)
                                       (_%ns146650%_
                                        (gx#core-context-namespace__0))
                                       (_%r146651%_ '()))
                      (let* ((_%e146652146667%_ _%rest146649%_)
                             (_%E146665146671%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _%e146652146667%_)))
                             (_%E146661146675%_
                              (lambda ()
                                (if (gx#stx-null? _%e146652146667%_)
                                    (reverse _%r146651%_)
                                    (_%E146665146671%_))))
                             (_%E146654146732%_
                              (lambda ()
                                (if (gx#stx-pair? _%e146652146667%_)
                                    (let ((_%e146662146679%_
                                           (gx#syntax-e _%e146652146667%_)))
                                      (let ((_%hd146663146682%_
                                             (##car _%e146662146679%_))
                                            (_%tl146664146684%_
                                             (##cdr _%e146662146679%_)))
                                        (let* ((_%hd146687%_
                                                _%hd146663146682%_)
                                               (_%rest146689%_
                                                _%tl146664146684%_))
                                          (if (gx#identifier? _%hd146687%_)
                                              (_%lp146647%_
                                               _%rest146689%_
                                               _%ns146650%_
                                               (cons (cons _%hd146687%_
                                                           (cons (if _%ns146650%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-identifier
                              _%hd146687%_
                              _%ns146650%_
                              '"#"
                              _%hd146687%_)
                             _%hd146687%_)
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r146651%_))
                                              (let* ((_%e146690146700%_
                                                      _%hd146687%_)
                                                     (_%E146692146704%_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid syntax-case clause"
                                                         _%e146690146700%_)))
                                                     (_%E146691146728%_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _%e146690146700%_)
                                                            (let ((_%e146693146708%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%e146690146700%_)))
                      (let ((_%hd146694146711%_ (##car _%e146693146708%_))
                            (_%tl146695146713%_ (##cdr _%e146693146708%_)))
                        (let ((_%id146716%_ _%hd146694146711%_))
                          (if (gx#stx-pair? _%tl146695146713%_)
                              (let ((_%e146696146718%_
                                     (gx#syntax-e _%tl146695146713%_)))
                                (let ((_%hd146697146721%_
                                       (##car _%e146696146718%_))
                                      (_%tl146698146723%_
                                       (##cdr _%e146696146718%_)))
                                  (let ((_%eid146726%_ _%hd146697146721%_))
                                    (if (gx#stx-null? _%tl146698146723%_)
                                        (if (and (gx#identifier? _%id146716%_)
                                                 (gx#identifier?
                                                  _%eid146726%_))
                                            (_%lp146647%_
                                             _%rest146689%_
                                             _%ns146650%_
                                             (cons (cons _%id146716%_
                                                         (cons _%eid146726%_
                                                               '()))
                                                   _%r146651%_))
                                            (_%E146692146704%_))
                                        (_%E146692146704%_)))))
                              (_%E146692146704%_)))))
                    (_%E146692146704%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E146691146728%_))))))
                                    (_%E146661146675%_))))
                             (_%E146653146764%_
                              (lambda ()
                                (if (gx#stx-pair? _%e146652146667%_)
                                    (let ((_%e146655146736%_
                                           (gx#syntax-e _%e146652146667%_)))
                                      (let ((_%hd146656146739%_
                                             (##car _%e146655146736%_))
                                            (_%tl146657146741%_
                                             (##cdr _%e146655146736%_)))
                                        (if (eq? (gx#stx-e _%hd146656146739%_)
                                                 'namespace:)
                                            (if (gx#stx-pair?
                                                 _%tl146657146741%_)
                                                (let ((_%e146658146744%_
                                                       (gx#syntax-e
                                                        _%tl146657146741%_)))
                                                  (let ((_%hd146659146747%_
                                                         (##car _%e146658146744%_))
                                                        (_%tl146660146749%_
                                                         (##cdr _%e146658146744%_)))
                                                    (let* ((_%ns146752%_
                                                            _%hd146659146747%_)
                                                           (_%rest146754%_
                                                            _%tl146660146749%_)
                                                           (_%ns146762%_
                                                            (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%ns146752%_)
                        (symbol->string (gx#stx-e _%ns146752%_))
                        (if (or (gx#stx-string? _%ns146752%_)
                                (gx#stx-false? _%ns146752%_))
                            (gx#stx-e _%ns146752%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; extern expects namespace identifier"
                             _%stx146613%_
                             _%ns146752%_)))))
              (_%lp146647%_ _%rest146754%_ _%ns146762%_ _%r146651%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E146654146732%_))
                                            (_%E146654146732%_))))
                                    (_%E146654146732%_)))))
                        (_%E146653146764%_))))))
          (let* ((_%e146616146623%_ _%stx146613%_)
                 (_%E146618146627%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e146616146623%_)))
                 (_%E146617146641%_
                  (lambda ()
                    (if (gx#stx-pair? _%e146616146623%_)
                        (let ((_%e146619146631%_
                               (gx#syntax-e _%e146616146623%_)))
                          (let ((_%hd146620146634%_ (##car _%e146619146631%_))
                                (_%tl146621146636%_ (##cdr _%e146619146631%_)))
                            (let ((_%body146639%_ _%tl146621146636%_))
                              (if (gx#stx-list? _%body146639%_)
                                  (gx#core-cons
                                   '%#extern
                                   (_%generate146615%_ _%body146639%_))
                                  (_%E146618146627%_)))))
                        (_%E146618146627%_)))))
            (_%E146617146641%_)))))
    (define gx#macro-expand-lambda%
      (lambda (_%stx146570%_)
        (let* ((_%e146571146581%_ _%stx146570%_)
               (_%E146573146585%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e146571146581%_)))
               (_%E146572146609%_
                (lambda ()
                  (if (gx#stx-pair? _%e146571146581%_)
                      (let ((_%e146574146589%_
                             (gx#syntax-e _%e146571146581%_)))
                        (let ((_%hd146575146592%_ (##car _%e146574146589%_))
                              (_%tl146576146594%_ (##cdr _%e146574146589%_)))
                          (if (gx#stx-pair? _%tl146576146594%_)
                              (let ((_%e146577146597%_
                                     (gx#syntax-e _%tl146576146594%_)))
                                (let ((_%hd146578146600%_
                                       (##car _%e146577146597%_))
                                      (_%tl146579146602%_
                                       (##cdr _%e146577146597%_)))
                                  (let* ((_%hd146605%_ _%hd146578146600%_)
                                         (_%body146607%_ _%tl146579146602%_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _%hd146605%_)
                                             (gx#stx-list? _%body146607%_)
                                             (not (gx#stx-null?
                                                   _%body146607%_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1 identity _%hd146605%_)
                                         _%body146607%_)
                                        (_%E146573146585%_)))))
                              (_%E146573146585%_))))
                      (_%E146573146585%_)))))
          (_%E146572146609%_))))
    (define gx#macro-expand-case-lambda
      (lambda (_%stx146506%_)
        (letrec ((_%generate146508%_
                  (lambda (_%clause146538%_)
                    (let* ((_%e146539146546%_ _%clause146538%_)
                           (_%E146541146550%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _%stx146506%_
                               _%clause146538%_)))
                           (_%E146540146566%_
                            (lambda ()
                              (if (gx#stx-pair? _%e146539146546%_)
                                  (let ((_%e146542146554%_
                                         (gx#syntax-e _%e146539146546%_)))
                                    (let ((_%hd146543146557%_
                                           (##car _%e146542146554%_))
                                          (_%tl146544146559%_
                                           (##cdr _%e146542146554%_)))
                                      (let* ((_%hd146562%_ _%hd146543146557%_)
                                             (_%body146564%_
                                              _%tl146544146559%_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _%hd146562%_)
                                                 (gx#stx-list? _%body146564%_)
                                                 (not (gx#stx-null?
                                                       _%body146564%_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    identity
                                                    _%hd146562%_)
                                                   _%body146564%_)
                                             (gx#stx-source _%clause146538%_))
                                            (_%E146541146550%_)))))
                                  (_%E146541146550%_)))))
                      (_%E146540146566%_)))))
          (let* ((_%e146509146516%_ _%stx146506%_)
                 (_%E146511146520%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e146509146516%_)))
                 (_%E146510146534%_
                  (lambda ()
                    (if (gx#stx-pair? _%e146509146516%_)
                        (let ((_%e146512146524%_
                               (gx#syntax-e _%e146509146516%_)))
                          (let ((_%hd146513146527%_ (##car _%e146512146524%_))
                                (_%tl146514146529%_ (##cdr _%e146512146524%_)))
                            (let ((_%clauses146532%_ _%tl146514146529%_))
                              (if (gx#stx-list? _%clauses146532%_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _%generate146508%_
                                    _%clauses146532%_))
                                  (_%E146511146520%_)))))
                        (_%E146511146520%_)))))
            (_%E146510146534%_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_%stx146407%_ _%form146408%_)
        (letrec ((_%generate146410%_
                  (lambda (_%bind146453%_)
                    (let* ((_%e146454146464%_ _%bind146453%_)
                           (_%E146456146468%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _%stx146407%_
                               _%bind146453%_)))
                           (_%E146455146492%_
                            (lambda ()
                              (if (gx#stx-pair? _%e146454146464%_)
                                  (let ((_%e146457146472%_
                                         (gx#syntax-e _%e146454146464%_)))
                                    (let ((_%hd146458146475%_
                                           (##car _%e146457146472%_))
                                          (_%tl146459146477%_
                                           (##cdr _%e146457146472%_)))
                                      (let ((_%ids146480%_ _%hd146458146475%_))
                                        (if (gx#stx-pair? _%tl146459146477%_)
                                            (let ((_%e146460146482%_
                                                   (gx#syntax-e
                                                    _%tl146459146477%_)))
                                              (let ((_%hd146461146485%_
                                                     (##car _%e146460146482%_))
                                                    (_%tl146462146487%_
                                                     (##cdr _%e146460146482%_)))
                                                (let ((_%expr146490%_
                                                       _%hd146461146485%_))
                                                  (if (gx#stx-null?
                                                       _%tl146462146487%_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _%ids146480%_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         identity
                         _%ids146480%_)
                        (cons _%expr146490%_ '()))
                  (_%E146456146468%_))
              (_%E146456146468%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E146456146468%_)))))
                                  (_%E146456146468%_)))))
                      (_%E146455146492%_)))))
          (let* ((_%e146411146421%_ _%stx146407%_)
                 (_%E146413146425%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e146411146421%_)))
                 (_%E146412146449%_
                  (lambda ()
                    (if (gx#stx-pair? _%e146411146421%_)
                        (let ((_%e146414146429%_
                               (gx#syntax-e _%e146411146421%_)))
                          (let ((_%hd146415146432%_ (##car _%e146414146429%_))
                                (_%tl146416146434%_ (##cdr _%e146414146429%_)))
                            (if (gx#stx-pair? _%tl146416146434%_)
                                (let ((_%e146417146437%_
                                       (gx#syntax-e _%tl146416146434%_)))
                                  (let ((_%hd146418146440%_
                                         (##car _%e146417146437%_))
                                        (_%tl146419146442%_
                                         (##cdr _%e146417146437%_)))
                                    (let* ((_%hd146445%_ _%hd146418146440%_)
                                           (_%body146447%_ _%tl146419146442%_))
                                      (if (and (gx#stx-list? _%hd146445%_)
                                               (gx#stx-list? _%body146447%_)
                                               (not (gx#stx-null?
                                                     _%body146447%_)))
                                          (gx#core-cons*
                                           _%form146408%_
                                           (gx#stx-map1
                                            _%generate146410%_
                                            _%hd146445%_)
                                           _%body146447%_)
                                          (_%E146413146425%_)))))
                                (_%E146413146425%_))))
                        (_%E146413146425%_)))))
            (_%E146412146449%_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_%stx146499%_)
        (let ((_%form146501%_ '%#let-values))
          (gx#macro-expand-let-values__% _%stx146499%_ _%form146501%_))))
    (define gx#macro-expand-let-values
      (lambda _g149042_
        (let ((_g149043_ (##length _g149042_)))
          (cond ((##fx= _g149043_ 1)
                 (apply gx#macro-expand-let-values__0 _g149042_))
                ((##fx= _g149043_ 2)
                 (apply gx#macro-expand-let-values__% _g149042_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g149042_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_%stx146404%_)
        (gx#macro-expand-let-values__% _%stx146404%_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_%stx146402%_)
        (gx#macro-expand-let-values__% _%stx146402%_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_%stx146293%_)
        (let* ((_%e146294146320%_ _%stx146293%_)
               (_%E146306146324%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e146294146320%_)))
               (_%E146296146366%_
                (lambda ()
                  (if (gx#stx-pair? _%e146294146320%_)
                      (let ((_%e146307146328%_
                             (gx#syntax-e _%e146294146320%_)))
                        (let ((_%hd146308146331%_ (##car _%e146307146328%_))
                              (_%tl146309146333%_ (##cdr _%e146307146328%_)))
                          (if (gx#stx-pair? _%tl146309146333%_)
                              (let ((_%e146310146336%_
                                     (gx#syntax-e _%tl146309146333%_)))
                                (let ((_%hd146311146339%_
                                       (##car _%e146310146336%_))
                                      (_%tl146312146341%_
                                       (##cdr _%e146310146336%_)))
                                  (let ((_%test146344%_ _%hd146311146339%_))
                                    (if (gx#stx-pair? _%tl146312146341%_)
                                        (let ((_%e146313146346%_
                                               (gx#syntax-e
                                                _%tl146312146341%_)))
                                          (let ((_%hd146314146349%_
                                                 (##car _%e146313146346%_))
                                                (_%tl146315146351%_
                                                 (##cdr _%e146313146346%_)))
                                            (let ((_%K146354%_
                                                   _%hd146314146349%_))
                                              (if (gx#stx-pair?
                                                   _%tl146315146351%_)
                                                  (let ((_%e146316146356%_
                                                         (gx#syntax-e
                                                          _%tl146315146351%_)))
                                                    (let ((_%hd146317146359%_
                                                           (##car _%e146316146356%_))
                                                          (_%tl146318146361%_
                                                           (##cdr _%e146316146356%_)))
                                                      (let ((_%E146364%_
                                                             _%hd146317146359%_))
                                                        (if (gx#stx-null?
                                                             _%tl146318146361%_)
                                                            (gx#core-list
                                                             '%#if
                                                             _%test146344%_
                                                             _%K146354%_
                                                             _%E146364%_)
                                                            (_%E146306146324%_)))))
                                                  (_%E146306146324%_)))))
                                        (_%E146306146324%_)))))
                              (_%E146306146324%_))))
                      (_%E146306146324%_))))
               (_%E146295146398%_
                (lambda ()
                  (if (gx#stx-pair? _%e146294146320%_)
                      (let ((_%e146297146370%_
                             (gx#syntax-e _%e146294146320%_)))
                        (let ((_%hd146298146373%_ (##car _%e146297146370%_))
                              (_%tl146299146375%_ (##cdr _%e146297146370%_)))
                          (if (gx#stx-pair? _%tl146299146375%_)
                              (let ((_%e146300146378%_
                                     (gx#syntax-e _%tl146299146375%_)))
                                (let ((_%hd146301146381%_
                                       (##car _%e146300146378%_))
                                      (_%tl146302146383%_
                                       (##cdr _%e146300146378%_)))
                                  (let ((_%test146386%_ _%hd146301146381%_))
                                    (if (gx#stx-pair? _%tl146302146383%_)
                                        (let ((_%e146303146388%_
                                               (gx#syntax-e
                                                _%tl146302146383%_)))
                                          (let ((_%hd146304146391%_
                                                 (##car _%e146303146388%_))
                                                (_%tl146305146393%_
                                                 (##cdr _%e146303146388%_)))
                                            (let ((_%K146396%_
                                                   _%hd146304146391%_))
                                              (if (gx#stx-null?
                                                   _%tl146305146393%_)
                                                  (gx#core-list
                                                   '%#if
                                                   _%test146386%_
                                                   _%K146396%_
                                                   '#!void)
                                                  (_%E146296146366%_)))))
                                        (_%E146296146366%_)))))
                              (_%E146296146366%_))))
                      (_%E146296146366%_)))))
          (_%E146295146398%_))))
    (define gx#free-identifier=?
      (lambda (_%xid146278%_ _%yid146279%_)
        (let ((_%xe146281%_ (gx#resolve-identifier__0 _%xid146278%_))
              (_%ye146282%_ (gx#resolve-identifier__0 _%yid146279%_)))
          (if (and _%xe146281%_ _%ye146282%_)
              (let ((_%$e146285%_ (eq? _%xe146281%_ _%ye146282%_)))
                (if _%$e146285%_
                    _%$e146285%_
                    (if (##structure-instance-of? _%xe146281%_ 'gx#binding::t)
                        (if (##structure-instance-of?
                             _%ye146282%_
                             'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _%xe146281%_
                                  '1
                                  '#f
                                  '#f)
                                 (##unchecked-structure-ref
                                  _%ye146282%_
                                  '1
                                  '#f
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _%xe146281%_ _%ye146282%_)
                  '#f
                  (gx#stx-eq? _%xid146278%_ _%yid146279%_))))))
    (define gx#bound-identifier=?
      (lambda (_%xid146259%_ _%yid146260%_)
        (letrec ((_%context146262%_
                  (lambda (_%e146276%_)
                    (if (##structure-direct-instance-of?
                         _%e146276%_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref _%e146276%_ '3 '#f '#f)
                        (gx#current-expander-context))))
                 (_%marks146263%_
                  (lambda (_%e146271%_)
                    (if (symbol? _%e146271%_)
                        '()
                        (if (##structure-direct-instance-of?
                             _%e146271%_
                             'gx#identifier-wrap::t)
                            (##unchecked-structure-ref _%e146271%_ '3 '#f '#f)
                            (##unchecked-structure-ref
                             _%e146271%_
                             '4
                             '#f
                             '#f)))))
                 (_%unwrap146264%_
                  (lambda (_%e146269%_)
                    (if (symbol? _%e146269%_)
                        _%e146269%_
                        (gx#syntax-local-unwrap _%e146269%_)))))
          (let ((_%x146266%_ (_%unwrap146264%_ _%xid146259%_))
                (_%y146267%_ (_%unwrap146264%_ _%yid146260%_)))
            (if (gx#stx-eq? _%x146266%_ _%y146267%_)
                (if (eq? (_%context146262%_ _%x146266%_)
                         (_%context146262%_ _%y146267%_))
                    (equal? (_%marks146263%_ _%x146266%_)
                            (_%marks146263%_ _%y146267%_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_%stx146257%_)
        (if (gx#identifier? _%stx146257%_)
            (gx#core-identifier=? _%stx146257%_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_%stx146255%_)
        (if (gx#identifier? _%stx146255%_)
            (gx#core-identifier=? _%stx146255%_ '...)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_%stx146198%_ _%where146199%_)
        (let _%lp146201%_ ((_%rest146203%_ (gx#syntax->list _%stx146198%_)))
          (let* ((_%rest146204146212%_ _%rest146203%_)
                 (_%else146206146220%_ (lambda () '#t))
                 (_%K146208146233%_
                  (lambda (_%rest146223%_ _%hd146224%_)
                    (if (gx#identifier? _%hd146224%_)
                        (if (__find (lambda (_%g146226146228%_)
                                      (gx#bound-identifier=?
                                       _%g146226146228%_
                                       _%hd146224%_))
                                    _%rest146223%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _%where146199%_
                             _%hd146224%_)
                            (_%lp146201%_ _%rest146223%_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _%where146199%_
                         _%hd146224%_)))))
            (if (pair? _%rest146204146212%_)
                (let ((_%hd146209146236%_ (##car _%rest146204146212%_))
                      (_%tl146210146238%_ (##cdr _%rest146204146212%_)))
                  (let* ((_%hd146241%_ _%hd146209146236%_)
                         (_%rest146243%_ _%tl146210146238%_))
                    (_%K146208146233%_ _%rest146243%_ _%hd146241%_)))
                (_%else146206146220%_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_%stx146248%_)
        (let ((_%where146250%_ _%stx146248%_))
          (gx#check-duplicate-identifiers__% _%stx146248%_ _%where146250%_))))
    (define gx#check-duplicate-identifiers
      (lambda _g149044_
        (let ((_g149045_ (##length _g149044_)))
          (cond ((##fx= _g149045_ 1)
                 (apply gx#check-duplicate-identifiers__0 _g149044_))
                ((##fx= _g149045_ 2)
                 (apply gx#check-duplicate-identifiers__% _g149044_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g149044_))))))
    (define gx#core-bind-values?
      (lambda (_%stx146190%_)
        (gx#stx-andmap
         (lambda (_%x146192%_)
           (let ((_%$e146194%_ (gx#identifier? _%x146192%_)))
             (if _%$e146194%_ _%$e146194%_ (gx#stx-false? _%x146192%_))))
         _%stx146190%_)))
    (define gx#core-bind-values!__%
      (lambda (_%stx146154%_ _%rebind?146155%_ _%phi146156%_ _%ctx146157%_)
        (gx#stx-for-each1
         (lambda (_%id146159%_)
           (if (gx#identifier? _%id146159%_)
               (gx#core-bind-runtime!__%
                _%id146159%_
                _%rebind?146155%_
                _%phi146156%_
                _%ctx146157%_)
               '#!void))
         _%stx146154%_)))
    (define gx#core-bind-values!__0
      (lambda (_%stx146164%_)
        (let* ((_%rebind?146166%_ '#f)
               (_%phi146168%_ (gx#current-expander-phi))
               (_%ctx146170%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx146164%_
           _%rebind?146166%_
           _%phi146168%_
           _%ctx146170%_))))
    (define gx#core-bind-values!__1
      (lambda (_%stx146172%_ _%rebind?146173%_)
        (let* ((_%phi146175%_ (gx#current-expander-phi))
               (_%ctx146177%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx146172%_
           _%rebind?146173%_
           _%phi146175%_
           _%ctx146177%_))))
    (define gx#core-bind-values!__2
      (lambda (_%stx146179%_ _%rebind?146180%_ _%phi146181%_)
        (let ((_%ctx146183%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx146179%_
           _%rebind?146180%_
           _%phi146181%_
           _%ctx146183%_))))
    (define gx#core-bind-values!
      (lambda _g149046_
        (let ((_g149047_ (##length _g149046_)))
          (cond ((##fx= _g149047_ 1) (apply gx#core-bind-values!__0 _g149046_))
                ((##fx= _g149047_ 2) (apply gx#core-bind-values!__1 _g149046_))
                ((##fx= _g149047_ 3) (apply gx#core-bind-values!__2 _g149046_))
                ((##fx= _g149047_ 4) (apply gx#core-bind-values!__% _g149046_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g149046_))))))
    (define gx#core-quote-bind-values
      (lambda (_%stx146149%_)
        (gx#stx-map1
         (lambda (_%x146151%_)
           (if (gx#identifier? _%x146151%_)
               (gx#core-quote-syntax__0 _%x146151%_)
               '#f))
         _%stx146149%_)))
    (define gx#core-runtime-ref?
      (lambda (_%stx146142%_)
        (if (gx#identifier? _%stx146142%_)
            (let* ((_%bind146144%_ (gx#resolve-identifier__0 _%stx146142%_))
                   (_%$e146146%_ (not _%bind146144%_)))
              (if _%$e146146%_
                  _%$e146146%_
                  (##structure-instance-of?
                   _%bind146144%_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_%id146131%_ _%form146132%_)
        (let ((_%bind146134%_ (gx#resolve-identifier__0 _%id146131%_)))
          (if (##structure-instance-of? _%bind146134%_ 'gx#runtime-binding::t)
              (gx#core-quote-syntax__0 _%id146131%_)
              (if (not _%bind146134%_)
                  (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                          (gx#core-extern-symbol? (gx#stx-e _%id146131%_)))
                      (gx#core-quote-syntax__0 _%id146131%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Reference to unbound identifier"
                       _%form146132%_
                       _%id146131%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; not a runtime binding"
                   _%form146132%_
                   _%id146131%_))))))
    (define gx#core-bind-runtime!__%
      (lambda (_%id146086%_ _%rebind?146087%_ _%phi146088%_ _%ctx146089%_)
        (let* ((_%key146091%_ (gx#core-identifier-key _%id146086%_))
               (_%eid146093%_
                (gx#make-binding-id__%
                 _%key146091%_
                 '#f
                 _%phi146088%_
                 _%ctx146089%_))
               (_%bind146099%_
                (if (##structure-instance-of?
                     _%ctx146089%_
                     'gx#module-context::t)
                    (let ((__obj149023
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
                       __obj149023
                       _%eid146093%_
                       _%key146091%_
                       _%phi146088%_
                       _%ctx146089%_)
                      __obj149023)
                    (if (##structure-instance-of?
                         _%ctx146089%_
                         'gx#top-context::t)
                        (let ((__obj149022
                               (##structure
                                gx#top-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#top-binding:::init!
                           __obj149022
                           _%eid146093%_
                           _%key146091%_
                           _%phi146088%_)
                          __obj149022)
                        (if (##structure-instance-of?
                             _%ctx146089%_
                             'gx#local-context::t)
                            (let ((__obj149021
                                   (##structure
                                    gx#local-binding::t
                                    '#f
                                    '#f
                                    '#f
                                    '#f
                                    '#f
                                    '#f)))
                              (gx#local-binding:::init!
                               __obj149021
                               _%eid146093%_
                               _%key146091%_
                               _%phi146088%_)
                              __obj149021)
                            (let ((__obj149020
                                   (##structure
                                    gx#runtime-binding::t
                                    '#f
                                    '#f
                                    '#f
                                    '#f
                                    '#f
                                    '#f)))
                              (gx#runtime-binding:::init!
                               __obj149020
                               _%eid146093%_
                               _%key146091%_
                               _%phi146088%_)
                              __obj149020))))))
          (gx#bind-identifier!__%
           _%id146086%_
           _%bind146099%_
           _%rebind?146087%_
           _%phi146088%_
           _%ctx146089%_))))
    (define gx#core-bind-runtime!__0
      (lambda (_%id146105%_)
        (let* ((_%rebind?146107%_ '#f)
               (_%phi146109%_ (gx#current-expander-phi))
               (_%ctx146111%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id146105%_
           _%rebind?146107%_
           _%phi146109%_
           _%ctx146111%_))))
    (define gx#core-bind-runtime!__1
      (lambda (_%id146113%_ _%rebind?146114%_)
        (let* ((_%phi146116%_ (gx#current-expander-phi))
               (_%ctx146118%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id146113%_
           _%rebind?146114%_
           _%phi146116%_
           _%ctx146118%_))))
    (define gx#core-bind-runtime!__2
      (lambda (_%id146120%_ _%rebind?146121%_ _%phi146122%_)
        (let ((_%ctx146124%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id146120%_
           _%rebind?146121%_
           _%phi146122%_
           _%ctx146124%_))))
    (define gx#core-bind-runtime!
      (lambda _g149048_
        (let ((_g149049_ (##length _g149048_)))
          (cond ((##fx= _g149049_ 1)
                 (apply gx#core-bind-runtime!__0 _g149048_))
                ((##fx= _g149049_ 2)
                 (apply gx#core-bind-runtime!__1 _g149048_))
                ((##fx= _g149049_ 3)
                 (apply gx#core-bind-runtime!__2 _g149048_))
                ((##fx= _g149049_ 4)
                 (apply gx#core-bind-runtime!__% _g149048_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g149048_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_%id146038%_
               _%eid146039%_
               _%rebind?146040%_
               _%phi146041%_
               _%ctx146042%_)
        (let* ((_%key146044%_ (gx#core-identifier-key _%id146038%_))
               (_%bind146049%_
                (if (##structure-instance-of?
                     _%ctx146042%_
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
                       _%eid146039%_
                       _%key146044%_
                       _%phi146041%_
                       _%ctx146042%_)
                      __obj149026)
                    (if (##structure-instance-of?
                         _%ctx146042%_
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
                           _%eid146039%_
                           _%key146044%_
                           _%phi146041%_)
                          __obj149025)
                        (let ((__obj149024
                               (##structure
                                gx#runtime-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#runtime-binding:::init!
                           __obj149024
                           _%eid146039%_
                           _%key146044%_
                           _%phi146041%_)
                          __obj149024)))))
          (gx#bind-identifier!__%
           _%id146038%_
           _%bind146049%_
           _%rebind?146040%_
           _%phi146041%_
           _%ctx146042%_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_%id146055%_ _%eid146056%_)
        (let* ((_%rebind?146058%_ '#f)
               (_%phi146060%_ (gx#current-expander-phi))
               (_%ctx146062%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id146055%_
           _%eid146056%_
           _%rebind?146058%_
           _%phi146060%_
           _%ctx146062%_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_%id146064%_ _%eid146065%_ _%rebind?146066%_)
        (let* ((_%phi146068%_ (gx#current-expander-phi))
               (_%ctx146070%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id146064%_
           _%eid146065%_
           _%rebind?146066%_
           _%phi146068%_
           _%ctx146070%_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_%id146072%_ _%eid146073%_ _%rebind?146074%_ _%phi146075%_)
        (let ((_%ctx146077%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id146072%_
           _%eid146073%_
           _%rebind?146074%_
           _%phi146075%_
           _%ctx146077%_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g149050_
        (let ((_g149051_ (##length _g149050_)))
          (cond ((##fx= _g149051_ 2)
                 (apply gx#core-bind-runtime-reference!__0 _g149050_))
                ((##fx= _g149051_ 3)
                 (apply gx#core-bind-runtime-reference!__1 _g149050_))
                ((##fx= _g149051_ 4)
                 (apply gx#core-bind-runtime-reference!__2 _g149050_))
                ((##fx= _g149051_ 5)
                 (apply gx#core-bind-runtime-reference!__% _g149050_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g149050_))))))
    (define gx#core-bind-extern!__%
      (lambda (_%id145998%_
               _%eid145999%_
               _%rebind?146000%_
               _%phi146001%_
               _%ctx146002%_)
        (gx#bind-identifier!__%
         _%id145998%_
         (let ((__obj149027
                (##structure gx#extern-binding::t '#f '#f '#f '#f '#f '#f)))
           (gx#extern-binding:::init!
            __obj149027
            _%eid145999%_
            (gx#core-identifier-key _%id145998%_)
            _%phi146001%_)
           __obj149027)
         _%rebind?146000%_
         _%phi146001%_
         _%ctx146002%_)))
    (define gx#core-bind-extern!__0
      (lambda (_%id146007%_ _%eid146008%_)
        (let* ((_%rebind?146010%_ '#f)
               (_%phi146012%_ (gx#current-expander-phi))
               (_%ctx146014%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id146007%_
           _%eid146008%_
           _%rebind?146010%_
           _%phi146012%_
           _%ctx146014%_))))
    (define gx#core-bind-extern!__1
      (lambda (_%id146016%_ _%eid146017%_ _%rebind?146018%_)
        (let* ((_%phi146020%_ (gx#current-expander-phi))
               (_%ctx146022%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id146016%_
           _%eid146017%_
           _%rebind?146018%_
           _%phi146020%_
           _%ctx146022%_))))
    (define gx#core-bind-extern!__2
      (lambda (_%id146024%_ _%eid146025%_ _%rebind?146026%_ _%phi146027%_)
        (let ((_%ctx146029%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id146024%_
           _%eid146025%_
           _%rebind?146026%_
           _%phi146027%_
           _%ctx146029%_))))
    (define gx#core-bind-extern!
      (lambda _g149052_
        (let ((_g149053_ (##length _g149052_)))
          (cond ((##fx= _g149053_ 2) (apply gx#core-bind-extern!__0 _g149052_))
                ((##fx= _g149053_ 3) (apply gx#core-bind-extern!__1 _g149052_))
                ((##fx= _g149053_ 4) (apply gx#core-bind-extern!__2 _g149052_))
                ((##fx= _g149053_ 5) (apply gx#core-bind-extern!__% _g149052_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g149052_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_%id145952%_
               _%e145953%_
               _%rebind?145954%_
               _%phi145955%_
               _%ctx145956%_)
        (gx#bind-identifier!__%
         _%id145952%_
         (let ((_%key145961%_ (gx#core-identifier-key _%id145952%_))
               (_%e145962%_
                (if (or (##structure-instance-of? _%e145953%_ 'gx#expander::t)
                        (##structure-instance-of?
                         _%e145953%_
                         'gx#expander-context::t))
                    _%e145953%_
                    (##structure
                     gx#user-expander::t
                     _%e145953%_
                     _%ctx145956%_
                     _%phi145955%_))))
           (let ((__obj149028
                  (##structure gx#syntax-binding::t '#f '#f '#f '#f '#f)))
             (gx#syntax-binding:::init!
              __obj149028
              (gx#make-binding-id__%
               _%key145961%_
               '#t
               _%phi145955%_
               _%ctx145956%_)
              _%key145961%_
              _%phi145955%_
              _%e145962%_)
             __obj149028))
         _%rebind?145954%_
         _%phi145955%_
         _%ctx145956%_)))
    (define gx#core-bind-syntax!__0
      (lambda (_%id145967%_ _%e145968%_)
        (let* ((_%rebind?145970%_ '#f)
               (_%phi145972%_ (gx#current-expander-phi))
               (_%ctx145974%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id145967%_
           _%e145968%_
           _%rebind?145970%_
           _%phi145972%_
           _%ctx145974%_))))
    (define gx#core-bind-syntax!__1
      (lambda (_%id145976%_ _%e145977%_ _%rebind?145978%_)
        (let* ((_%phi145980%_ (gx#current-expander-phi))
               (_%ctx145982%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id145976%_
           _%e145977%_
           _%rebind?145978%_
           _%phi145980%_
           _%ctx145982%_))))
    (define gx#core-bind-syntax!__2
      (lambda (_%id145984%_ _%e145985%_ _%rebind?145986%_ _%phi145987%_)
        (let ((_%ctx145989%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id145984%_
           _%e145985%_
           _%rebind?145986%_
           _%phi145987%_
           _%ctx145989%_))))
    (define gx#core-bind-syntax!
      (lambda _g149054_
        (let ((_g149055_ (##length _g149054_)))
          (cond ((##fx= _g149055_ 2) (apply gx#core-bind-syntax!__0 _g149054_))
                ((##fx= _g149055_ 3) (apply gx#core-bind-syntax!__1 _g149054_))
                ((##fx= _g149055_ 4) (apply gx#core-bind-syntax!__2 _g149054_))
                ((##fx= _g149055_ 5) (apply gx#core-bind-syntax!__% _g149054_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g149054_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_%id145935%_ _%e145936%_ _%rebind?145937%_)
        (gx#core-bind-syntax!__%
         _%id145935%_
         _%e145936%_
         _%rebind?145937%_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_%id145942%_ _%e145943%_)
        (let ((_%rebind?145945%_ '#f))
          (gx#core-bind-root-syntax!__%
           _%id145942%_
           _%e145943%_
           _%rebind?145945%_))))
    (define gx#core-bind-root-syntax!
      (lambda _g149056_
        (let ((_g149057_ (##length _g149056_)))
          (cond ((##fx= _g149057_ 2)
                 (apply gx#core-bind-root-syntax!__0 _g149056_))
                ((##fx= _g149057_ 3)
                 (apply gx#core-bind-root-syntax!__% _g149056_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g149056_))))))
    (define gx#core-bind-alias!__%
      (lambda (_%id145893%_
               _%alias-id145894%_
               _%rebind?145895%_
               _%phi145896%_
               _%ctx145897%_)
        (gx#bind-identifier!__%
         _%id145893%_
         (let* ((_%key145899%_ (gx#core-identifier-key _%id145893%_))
                (__obj149029
                 (##structure gx#alias-binding::t '#f '#f '#f '#f '#f)))
           (gx#alias-binding:::init!
            __obj149029
            (gx#make-binding-id__%
             _%key145899%_
             '#t
             _%phi145896%_
             _%ctx145897%_)
            _%key145899%_
            _%phi145896%_
            _%alias-id145894%_)
           __obj149029)
         _%rebind?145895%_
         _%phi145896%_
         _%ctx145897%_)))
    (define gx#core-bind-alias!__0
      (lambda (_%id145904%_ _%alias-id145905%_)
        (let* ((_%rebind?145907%_ '#f)
               (_%phi145909%_ (gx#current-expander-phi))
               (_%ctx145911%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id145904%_
           _%alias-id145905%_
           _%rebind?145907%_
           _%phi145909%_
           _%ctx145911%_))))
    (define gx#core-bind-alias!__1
      (lambda (_%id145913%_ _%alias-id145914%_ _%rebind?145915%_)
        (let* ((_%phi145917%_ (gx#current-expander-phi))
               (_%ctx145919%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id145913%_
           _%alias-id145914%_
           _%rebind?145915%_
           _%phi145917%_
           _%ctx145919%_))))
    (define gx#core-bind-alias!__2
      (lambda (_%id145921%_ _%alias-id145922%_ _%rebind?145923%_ _%phi145924%_)
        (let ((_%ctx145926%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id145921%_
           _%alias-id145922%_
           _%rebind?145923%_
           _%phi145924%_
           _%ctx145926%_))))
    (define gx#core-bind-alias!
      (lambda _g149058_
        (let ((_g149059_ (##length _g149058_)))
          (cond ((##fx= _g149059_ 2) (apply gx#core-bind-alias!__0 _g149058_))
                ((##fx= _g149059_ 3) (apply gx#core-bind-alias!__1 _g149058_))
                ((##fx= _g149059_ 4) (apply gx#core-bind-alias!__2 _g149058_))
                ((##fx= _g149059_ 5) (apply gx#core-bind-alias!__% _g149058_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g149058_))))))
    (define gx#make-binding-id__%
      (lambda (_%key145843%_ _%syntax?145844%_ _%phi145845%_ _%ctx145846%_)
        (if (uninterned-symbol? _%key145843%_)
            (##gensym 'L)
            (if (pair? _%key145843%_)
                (gensym (##car _%key145843%_))
                (if (##structure-instance-of? _%ctx145846%_ 'gx#top-context::t)
                    (let ((_%ns145851%_
                           (gx#core-context-namespace__% _%ctx145846%_)))
                      (if (and (fxzero? _%phi145845%_) (not _%syntax?145844%_))
                          (if _%ns145851%_
                              (make-symbol__1 _%ns145851%_ '"#" _%key145843%_)
                              _%key145843%_)
                          (if _%syntax?145844%_
                              (make-symbol__1
                               (let ((_%$e145855%_ _%ns145851%_))
                                 (if _%$e145855%_ _%$e145855%_ '""))
                               '"[:"
                               (number->string _%phi145845%_)
                               '":]#"
                               _%key145843%_)
                              (make-symbol__1
                               (let ((_%$e145859%_ _%ns145851%_))
                                 (if _%$e145859%_ _%$e145859%_ '""))
                               '"["
                               (number->string _%phi145845%_)
                               '"]#"
                               _%key145843%_))))
                    (gensym _%key145843%_))))))
    (define gx#make-binding-id__0
      (lambda (_%key145866%_)
        (let* ((_%syntax?145868%_ '#f)
               (_%phi145870%_ (gx#current-expander-phi))
               (_%ctx145872%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key145866%_
           _%syntax?145868%_
           _%phi145870%_
           _%ctx145872%_))))
    (define gx#make-binding-id__1
      (lambda (_%key145874%_ _%syntax?145875%_)
        (let* ((_%phi145877%_ (gx#current-expander-phi))
               (_%ctx145879%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key145874%_
           _%syntax?145875%_
           _%phi145877%_
           _%ctx145879%_))))
    (define gx#make-binding-id__2
      (lambda (_%key145881%_ _%syntax?145882%_ _%phi145883%_)
        (let ((_%ctx145885%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key145881%_
           _%syntax?145882%_
           _%phi145883%_
           _%ctx145885%_))))
    (define gx#make-binding-id
      (lambda _g149060_
        (let ((_g149061_ (##length _g149060_)))
          (cond ((##fx= _g149061_ 1) (apply gx#make-binding-id__0 _g149060_))
                ((##fx= _g149061_ 2) (apply gx#make-binding-id__1 _g149060_))
                ((##fx= _g149061_ 3) (apply gx#make-binding-id__2 _g149060_))
                ((##fx= _g149061_ 4) (apply gx#make-binding-id__% _g149060_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g149060_))))))))
