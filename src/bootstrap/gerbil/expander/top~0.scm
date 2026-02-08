(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1770513296)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_%stx178825%_)
        (letrec ((_%expand-special178827%_
                  (lambda (_%hd178829%_ _%K178830%_ _%rest178831%_ _%r178832%_)
                    (_%K178830%_
                     _%rest178831%_
                     (cons (gx#core-expand-top _%hd178829%_) _%r178832%_)))))
          (gx#core-expand-block__0 _%stx178825%_ _%expand-special178827%_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_%stx178519%_)
        (letrec ((_%expand-special178521%_
                  (lambda (_%hd178643%_ _%K178644%_ _%rest178645%_ _%r178646%_)
                    (let* ((_%K178650%_
                            (lambda (_%e178648%_)
                              (_%K178644%_
                               _%rest178645%_
                               (cons _%e178648%_ _%r178646%_))))
                           (_%e178651178693%_ _%hd178643%_)
                           (_%E178688178697%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e178651178693%_)))
                           (_%E178684178709%_
                            (lambda ()
                              (if (gx#stx-pair? _%e178651178693%_)
                                  (let ((_%e178689178701%_
                                         (gx#syntax-e _%e178651178693%_)))
                                    (let ((_%hd178690178704%_
                                           (##car _%e178689178701%_))
                                          (_%tl178691178706%_
                                           (##cdr _%e178689178701%_)))
                                      (if (and (gx#identifier?
                                                _%hd178690178704%_)
                                               (gx#core-identifier=?
                                                _%hd178690178704%_
                                                '%#define-runtime))
                                          (_%K178650%_
                                           (gx#core-expand-define-runtime%
                                            _%hd178643%_))
                                          (_%E178688178697%_))))
                                  (_%E178688178697%_))))
                           (_%E178680178721%_
                            (lambda ()
                              (if (gx#stx-pair? _%e178651178693%_)
                                  (let ((_%e178685178713%_
                                         (gx#syntax-e _%e178651178693%_)))
                                    (let ((_%hd178686178716%_
                                           (##car _%e178685178713%_))
                                          (_%tl178687178718%_
                                           (##cdr _%e178685178713%_)))
                                      (if (and (gx#identifier?
                                                _%hd178686178716%_)
                                               (gx#core-identifier=?
                                                _%hd178686178716%_
                                                '%#define-alias))
                                          (_%K178650%_
                                           (gx#core-expand-define-alias%
                                            _%hd178643%_))
                                          (_%E178684178709%_))))
                                  (_%E178684178709%_))))
                           (_%E178670178733%_
                            (lambda ()
                              (if (gx#stx-pair? _%e178651178693%_)
                                  (let ((_%e178681178725%_
                                         (gx#syntax-e _%e178651178693%_)))
                                    (let ((_%hd178682178728%_
                                           (##car _%e178681178725%_))
                                          (_%tl178683178730%_
                                           (##cdr _%e178681178725%_)))
                                      (if (and (gx#identifier?
                                                _%hd178682178728%_)
                                               (gx#core-identifier=?
                                                _%hd178682178728%_
                                                '%#define-syntax))
                                          (_%K178650%_
                                           (gx#core-expand-define-syntax%
                                            _%hd178643%_))
                                          (_%E178680178721%_))))
                                  (_%E178680178721%_))))
                           (_%E178657178765%_
                            (lambda ()
                              (if (gx#stx-pair? _%e178651178693%_)
                                  (let ((_%e178671178737%_
                                         (gx#syntax-e _%e178651178693%_)))
                                    (let ((_%hd178672178740%_
                                           (##car _%e178671178737%_))
                                          (_%tl178673178742%_
                                           (##cdr _%e178671178737%_)))
                                      (if (and (gx#identifier?
                                                _%hd178672178740%_)
                                               (gx#core-identifier=?
                                                _%hd178672178740%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl178673178742%_)
                                              (let ((_%e178674178745%_
                                                     (gx#syntax-e
                                                      _%tl178673178742%_)))
                                                (let ((_%hd178675178748%_
                                                       (##car _%e178674178745%_))
                                                      (_%tl178676178750%_
                                                       (##cdr _%e178674178745%_)))
                                                  (let ((_%hd-bind178753%_
                                                         _%hd178675178748%_))
                                                    (if (gx#stx-pair?
                                                         _%tl178676178750%_)
                                                        (let ((_%e178677178755%_
                                                               (gx#syntax-e
                                                                _%tl178676178750%_)))
                                                          (let ((_%hd178678178758%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e178677178755%_))
                        (_%tl178679178760%_ (##cdr _%e178677178755%_)))
                    (let ((_%expr178763%_ _%hd178678178758%_))
                      (if (gx#stx-null? _%tl178679178760%_)
                          (if (gx#core-bind-values? _%hd-bind178753%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind178753%_)
                                (_%K178650%_ _%hd178643%_))
                              (_%E178670178733%_))
                          (_%E178670178733%_)))))
                (_%E178670178733%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E178670178733%_))
                                          (_%E178670178733%_))))
                                  (_%E178670178733%_))))
                           (_%E178653178809%_
                            (lambda ()
                              (if (gx#stx-pair? _%e178651178693%_)
                                  (let ((_%e178658178769%_
                                         (gx#syntax-e _%e178651178693%_)))
                                    (let ((_%hd178659178772%_
                                           (##car _%e178658178769%_))
                                          (_%tl178660178774%_
                                           (##cdr _%e178658178769%_)))
                                      (if (and (gx#identifier?
                                                _%hd178659178772%_)
                                               (gx#core-identifier=?
                                                _%hd178659178772%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl178660178774%_)
                                              (let ((_%e178661178777%_
                                                     (gx#syntax-e
                                                      _%tl178660178774%_)))
                                                (let ((_%hd178662178780%_
                                                       (##car _%e178661178777%_))
                                                      (_%tl178663178782%_
                                                       (##cdr _%e178661178777%_)))
                                                  (if (gx#stx-pair?
                                                       _%hd178662178780%_)
                                                      (let ((_%e178667178785%_
                                                             (gx#syntax-e
                                                              _%hd178662178780%_)))
                                                        (let ((_%hd178668178788%_
                                                               (##car _%e178667178785%_))
                                                              (_%tl178669178790%_
                                                               (##cdr _%e178667178785%_)))
                                                          (let ((_%id178793%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd178668178788%_))
                    (if (gx#stx-null? _%tl178669178790%_)
                        (if (gx#stx-pair? _%tl178663178782%_)
                            (let ((_%e178664178795%_
                                   (gx#syntax-e _%tl178663178782%_)))
                              (let ((_%hd178665178798%_
                                     (##car _%e178664178795%_))
                                    (_%tl178666178800%_
                                     (##cdr _%e178664178795%_)))
                                (let* ((_%expr178803%_ _%hd178665178798%_)
                                       (_%props178805%_ _%tl178666178800%_))
                                  (if (gx#identifier? _%id178793%_)
                                      (let ((_%bind178807%_
                                             (gx#core-bind-runtime!__0
                                              _%id178793%_)))
                                        (gx#core-bind-runtime-properties!
                                         _%bind178807%_
                                         _%props178805%_)
                                        (_%K178650%_ _%hd178643%_))
                                      (_%E178657178765%_)))))
                            (_%E178657178765%_))
                        (_%E178657178765%_)))))
              (_%E178657178765%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E178657178765%_))
                                          (_%E178657178765%_))))
                                  (_%E178657178765%_))))
                           (_%E178652178821%_
                            (lambda ()
                              (if (gx#stx-pair? _%e178651178693%_)
                                  (let ((_%e178654178813%_
                                         (gx#syntax-e _%e178651178693%_)))
                                    (let ((_%hd178655178816%_
                                           (##car _%e178654178813%_))
                                          (_%tl178656178818%_
                                           (##cdr _%e178654178813%_)))
                                      (if (and (gx#identifier?
                                                _%hd178655178816%_)
                                               (gx#core-identifier=?
                                                _%hd178655178816%_
                                                '%#begin-syntax))
                                          (_%K178650%_
                                           (gx#core-expand-begin-syntax%
                                            _%hd178643%_))
                                          (_%E178653178809%_))))
                                  (_%E178653178809%_)))))
                      (_%E178652178821%_))))
                 (_%eval-body178522%_
                  (lambda (_%rbody178530%_)
                    (let _%lp178532%_ ((_%rest178534%_ _%rbody178530%_)
                                       (_%body178535%_ '())
                                       (_%ebody178536%_ '()))
                      (let* ((_%rest178537178545%_ _%rest178534%_)
                             (_%else178539178553%_
                              (lambda ()
                                (values _%body178535%_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons
                                           '%#begin
                                           _%ebody178536%_)
                                          (gx#stx-source _%stx178519%_))))))
                             (_%K178541178631%_
                              (lambda (_%rest178556%_ _%hd178557%_)
                                (let* ((_%e178558178575%_ _%hd178557%_)
                                       (_%E178570178579%_
                                        (lambda ()
                                          (_%lp178532%_
                                           _%rest178556%_
                                           (cons _%hd178557%_ _%body178535%_)
                                           (cons _%hd178557%_
                                                 _%ebody178536%_))))
                                       (_%E178560178591%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e178558178575%_)
                                              (let ((_%e178571178583%_
                                                     (gx#syntax-e
                                                      _%e178558178575%_)))
                                                (let ((_%hd178572178586%_
                                                       (##car _%e178571178583%_))
                                                      (_%tl178573178588%_
                                                       (##cdr _%e178571178583%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd178572178586%_)
                                                           (gx#core-identifier=?
                                                            _%hd178572178586%_
                                                            '%#begin-syntax))
                                                      (_%lp178532%_
                                                       _%rest178556%_
                                                       (cons _%hd178557%_
                                                             _%body178535%_)
                                                       _%ebody178536%_)
                                                      (_%E178570178579%_))))
                                              (_%E178570178579%_))))
                                       (_%E178559178627%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e178558178575%_)
                                              (let ((_%e178561178595%_
                                                     (gx#syntax-e
                                                      _%e178558178575%_)))
                                                (let ((_%hd178562178598%_
                                                       (##car _%e178561178595%_))
                                                      (_%tl178563178600%_
                                                       (##cdr _%e178561178595%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd178562178598%_)
                                                           (gx#core-identifier=?
                                                            _%hd178562178598%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl178563178600%_)
                                                          (let ((_%e178564178603%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl178563178600%_)))
                    (let ((_%hd178565178606%_ (##car _%e178564178603%_))
                          (_%tl178566178608%_ (##cdr _%e178564178603%_)))
                      (let ((_%hd-bind178611%_ _%hd178565178606%_))
                        (if (gx#stx-pair? _%tl178566178608%_)
                            (let ((_%e178567178613%_
                                   (gx#syntax-e _%tl178566178608%_)))
                              (let ((_%hd178568178616%_
                                     (##car _%e178567178613%_))
                                    (_%tl178569178618%_
                                     (##cdr _%e178567178613%_)))
                                (let* ((_%expr178621%_ _%hd178568178616%_)
                                       (_%ignore-props178623%_
                                        _%tl178569178618%_)
                                       (_%ehd178625%_
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#define-values)
                                               (cons (gx#core-quote-bind-values
                                                      _%hd-bind178611%_)
                                                     (cons (gx#core-expand-expression
                                                            _%expr178621%_)
                                                           '())))
                                         (gx#stx-source _%hd178557%_))))
                                  (_%lp178532%_
                                   _%rest178556%_
                                   (cons _%ehd178625%_ _%body178535%_)
                                   (cons _%ehd178625%_ _%ebody178536%_)))))
                            (_%E178560178591%_)))))
                  (_%E178560178591%_))
              (_%E178560178591%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E178560178591%_)))))
                                  (_%E178559178627%_)))))
                        (if (pair? _%rest178537178545%_)
                            (let ((_%hd178542178634%_
                                   (##car _%rest178537178545%_))
                                  (_%tl178543178636%_
                                   (##cdr _%rest178537178545%_)))
                              (let* ((_%hd178639%_ _%hd178542178634%_)
                                     (_%rest178641%_ _%tl178543178636%_))
                                (_%K178541178631%_
                                 _%rest178641%_
                                 _%hd178639%_)))
                            (_%else178539178553%_)))))))
          (call-with-parameters__1
           (lambda ()
             (let* ((_%rbody178525%_
                     (gx#core-expand-block__1
                      _%stx178519%_
                      _%expand-special178521%_
                      '#f))
                    (_g178858_ (_%eval-body178522%_ _%rbody178525%_)))
               (begin
                 (let ((_g178859_
                        (if (##values? _g178858_)
                            (##values-length _g178858_)
                            1)))
                   (if (not (##fx= _g178859_ 2))
                       (error "Context expects 2 values" _g178859_)))
                 (let ((_%expanded-body178527%_ (##values-ref _g178858_ 0))
                       (_%value178528%_ (##values-ref _g178858_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _%expanded-body178527%_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _%value178528%_ '())))
                    (gx#stx-source _%stx178519%_))))))
           gx#current-expander-phi
           (##fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_%stx178489%_)
        (let* ((_%e178490178497%_ _%stx178489%_)
               (_%E178492178501%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e178490178497%_)))
               (_%E178491178515%_
                (lambda ()
                  (if (gx#stx-pair? _%e178490178497%_)
                      (let ((_%e178493178505%_
                             (gx#syntax-e _%e178490178497%_)))
                        (let ((_%hd178494178508%_ (##car _%e178493178505%_))
                              (_%tl178495178510%_ (##cdr _%e178493178505%_)))
                          (let ((_%body178513%_ _%tl178495178510%_))
                            (if (gx#stx-list? _%body178513%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _%body178513%_)
                                 (gx#stx-source _%stx178489%_))
                                (_%E178492178501%_)))))
                      (_%E178492178501%_)))))
          (_%E178491178515%_))))
    (define gx#core-expand-begin-module%
      (lambda (_%stx178487%_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _%stx178487%_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_%stx178433%_)
        (let* ((_%e178434178447%_ _%stx178433%_)
               (_%E178436178451%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e178434178447%_)))
               (_%E178435178483%_
                (lambda ()
                  (if (gx#stx-pair? _%e178434178447%_)
                      (let ((_%e178437178455%_
                             (gx#syntax-e _%e178434178447%_)))
                        (let ((_%hd178438178458%_ (##car _%e178437178455%_))
                              (_%tl178439178460%_ (##cdr _%e178437178455%_)))
                          (if (gx#stx-pair? _%tl178439178460%_)
                              (let ((_%e178440178463%_
                                     (gx#syntax-e _%tl178439178460%_)))
                                (let ((_%hd178441178466%_
                                       (##car _%e178440178463%_))
                                      (_%tl178442178468%_
                                       (##cdr _%e178440178463%_)))
                                  (let ((_%ann178471%_ _%hd178441178466%_))
                                    (if (gx#stx-pair? _%tl178442178468%_)
                                        (let ((_%e178443178473%_
                                               (gx#syntax-e
                                                _%tl178442178468%_)))
                                          (let ((_%hd178444178476%_
                                                 (##car _%e178443178473%_))
                                                (_%tl178445178478%_
                                                 (##cdr _%e178443178473%_)))
                                            (let ((_%expr178481%_
                                                   _%hd178444178476%_))
                                              (if (gx#stx-null?
                                                   _%tl178445178478%_)
                                                  (gx#core-quote-syntax__1
                                                   (cons (gx#core-quote-syntax__0
                                                          '%#begin-annotation)
                                                         (cons _%ann178471%_
                                                               (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%expr178481%_)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (gx#stx-source
                                                    _%stx178433%_))
                                                  (_%E178436178451%_)))))
                                        (_%E178436178451%_)))))
                              (_%E178436178451%_))))
                      (_%E178436178451%_)))))
          (_%E178435178483%_))))
    (define gx#core-expand-local-block
      (lambda (_%stx178098%_ _%body178099%_)
        (letrec ((_%expand-special178101%_
                  (lambda (_%hd178428%_ _%K178429%_ _%rest178430%_ _%r178431%_)
                    (_%K178429%_
                     '()
                     (cons (_%expand-internal178102%_
                            _%hd178428%_
                            _%rest178430%_)
                           _%r178431%_))))
                 (_%expand-internal178102%_
                  (lambda (_%hd178424%_ _%rest178425%_)
                    (call-with-parameters__1
                     (lambda ()
                       (_%wrap-internal178104%_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _%hd178424%_ _%rest178425%_))
                          (gx#stx-source _%stx178098%_))
                         _%expand-internal-special178103%_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj178842
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init!__0 __obj178842)
                       __obj178842))))
                 (_%expand-internal-special178103%_
                  (lambda (_%hd178262%_ _%K178263%_ _%rest178264%_ _%r178265%_)
                    (let* ((_%e178266178304%_ _%hd178262%_)
                           (_%E178299178308%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e178266178304%_)))
                           (_%E178295178320%_
                            (lambda ()
                              (if (gx#stx-pair? _%e178266178304%_)
                                  (let ((_%e178300178312%_
                                         (gx#syntax-e _%e178266178304%_)))
                                    (let ((_%hd178301178315%_
                                           (##car _%e178300178312%_))
                                          (_%tl178302178317%_
                                           (##cdr _%e178300178312%_)))
                                      (if (and (gx#identifier?
                                                _%hd178301178315%_)
                                               (gx#core-identifier=?
                                                _%hd178301178315%_
                                                '%#declare))
                                          (_%K178263%_
                                           _%rest178264%_
                                           (cons (gx#core-expand-declare%
                                                  _%hd178262%_)
                                                 _%r178265%_))
                                          (_%E178299178308%_))))
                                  (_%E178299178308%_))))
                           (_%E178291178332%_
                            (lambda ()
                              (if (gx#stx-pair? _%e178266178304%_)
                                  (let ((_%e178296178324%_
                                         (gx#syntax-e _%e178266178304%_)))
                                    (let ((_%hd178297178327%_
                                           (##car _%e178296178324%_))
                                          (_%tl178298178329%_
                                           (##cdr _%e178296178324%_)))
                                      (if (and (gx#identifier?
                                                _%hd178297178327%_)
                                               (gx#core-identifier=?
                                                _%hd178297178327%_
                                                '%#define-alias))
                                          (begin
                                            (gx#core-expand-define-alias%
                                             _%hd178262%_)
                                            (_%K178263%_
                                             _%rest178264%_
                                             _%r178265%_))
                                          (_%E178295178320%_))))
                                  (_%E178295178320%_))))
                           (_%E178281178344%_
                            (lambda ()
                              (if (gx#stx-pair? _%e178266178304%_)
                                  (let ((_%e178292178336%_
                                         (gx#syntax-e _%e178266178304%_)))
                                    (let ((_%hd178293178339%_
                                           (##car _%e178292178336%_))
                                          (_%tl178294178341%_
                                           (##cdr _%e178292178336%_)))
                                      (if (and (gx#identifier?
                                                _%hd178293178339%_)
                                               (gx#core-identifier=?
                                                _%hd178293178339%_
                                                '%#define-syntax))
                                          (begin
                                            (gx#core-expand-define-syntax%
                                             _%hd178262%_)
                                            (_%K178263%_
                                             _%rest178264%_
                                             _%r178265%_))
                                          (_%E178291178332%_))))
                                  (_%E178291178332%_))))
                           (_%E178268178376%_
                            (lambda ()
                              (if (gx#stx-pair? _%e178266178304%_)
                                  (let ((_%e178282178348%_
                                         (gx#syntax-e _%e178266178304%_)))
                                    (let ((_%hd178283178351%_
                                           (##car _%e178282178348%_))
                                          (_%tl178284178353%_
                                           (##cdr _%e178282178348%_)))
                                      (if (and (gx#identifier?
                                                _%hd178283178351%_)
                                               (gx#core-identifier=?
                                                _%hd178283178351%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl178284178353%_)
                                              (let ((_%e178285178356%_
                                                     (gx#syntax-e
                                                      _%tl178284178353%_)))
                                                (let ((_%hd178286178359%_
                                                       (##car _%e178285178356%_))
                                                      (_%tl178287178361%_
                                                       (##cdr _%e178285178356%_)))
                                                  (let ((_%hd-bind178364%_
                                                         _%hd178286178359%_))
                                                    (if (gx#stx-pair?
                                                         _%tl178287178361%_)
                                                        (let ((_%e178288178366%_
                                                               (gx#syntax-e
                                                                _%tl178287178361%_)))
                                                          (let ((_%hd178289178369%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e178288178366%_))
                        (_%tl178290178371%_ (##cdr _%e178288178366%_)))
                    (let ((_%expr178374%_ _%hd178289178369%_))
                      (if (gx#stx-null? _%tl178290178371%_)
                          (if (gx#core-bind-values? _%hd-bind178364%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind178364%_)
                                (_%K178263%_
                                 _%rest178264%_
                                 (cons _%hd178262%_ _%r178265%_)))
                              (_%E178281178344%_))
                          (_%E178281178344%_)))))
                (_%E178281178344%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E178281178344%_))
                                          (_%E178281178344%_))))
                                  (_%E178281178344%_))))
                           (_%E178267178420%_
                            (lambda ()
                              (if (gx#stx-pair? _%e178266178304%_)
                                  (let ((_%e178269178380%_
                                         (gx#syntax-e _%e178266178304%_)))
                                    (let ((_%hd178270178383%_
                                           (##car _%e178269178380%_))
                                          (_%tl178271178385%_
                                           (##cdr _%e178269178380%_)))
                                      (if (and (gx#identifier?
                                                _%hd178270178383%_)
                                               (gx#core-identifier=?
                                                _%hd178270178383%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl178271178385%_)
                                              (let ((_%e178272178388%_
                                                     (gx#syntax-e
                                                      _%tl178271178385%_)))
                                                (let ((_%hd178273178391%_
                                                       (##car _%e178272178388%_))
                                                      (_%tl178274178393%_
                                                       (##cdr _%e178272178388%_)))
                                                  (if (gx#stx-pair?
                                                       _%hd178273178391%_)
                                                      (let ((_%e178278178396%_
                                                             (gx#syntax-e
                                                              _%hd178273178391%_)))
                                                        (let ((_%hd178279178399%_
                                                               (##car _%e178278178396%_))
                                                              (_%tl178280178401%_
                                                               (##cdr _%e178278178396%_)))
                                                          (let ((_%id178404%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd178279178399%_))
                    (if (gx#stx-null? _%tl178280178401%_)
                        (if (gx#stx-pair? _%tl178274178393%_)
                            (let ((_%e178275178406%_
                                   (gx#syntax-e _%tl178274178393%_)))
                              (let ((_%hd178276178409%_
                                     (##car _%e178275178406%_))
                                    (_%tl178277178411%_
                                     (##cdr _%e178275178406%_)))
                                (let* ((_%expr178414%_ _%hd178276178409%_)
                                       (_%props178416%_ _%tl178277178411%_))
                                  (if (gx#identifier? _%id178404%_)
                                      (let ((_%bind178418%_
                                             (gx#core-bind-runtime!__0
                                              _%id178404%_)))
                                        (gx#core-bind-runtime-properties!
                                         _%bind178418%_
                                         _%props178416%_)
                                        (_%K178263%_
                                         _%rest178264%_
                                         (cons _%hd178262%_ _%r178265%_)))
                                      (_%E178268178376%_)))))
                            (_%E178268178376%_))
                        (_%E178268178376%_)))))
              (_%E178268178376%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E178268178376%_))
                                          (_%E178268178376%_))))
                                  (_%E178268178376%_)))))
                      (_%E178267178420%_))))
                 (_%wrap-internal178104%_
                  (lambda (_%rbody178106%_)
                    (let _%lp178108%_ ((_%rest178110%_ _%rbody178106%_)
                                       (_%decls178111%_ '())
                                       (_%bind178112%_ '())
                                       (_%body178113%_ '()))
                      (let* ((_%e178114178121%_ _%rest178110%_)
                             (_%E178116178170%_
                              (lambda ()
                                (let* ((_%body178165%_
                                        (let* ((_%body178124178134%_
                                                _%body178113%_)
                                               (_%else178127178142%_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _%body178113%_)
                                                   (gx#stx-source
                                                    _%stx178098%_)))))
                                          (let ((_%K178132178162%_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _%stx178098%_)))
                                                (_%K178129178148%_
                                                 (lambda (_%expr178146%_)
                                                   _%expr178146%_)))
                                            (let ((_%try-match178126178158%_
                                                   (lambda ()
                                                     (if (pair? _%body178124178134%_)
                                                         (let ((_%tl178131178153%_
                                                                (##cdr _%body178124178134%_))
                                                               (_%hd178130178151%_
                                                                (##car _%body178124178134%_)))
                                                           (if (null? _%tl178131178153%_)
                                                               (let ((_%expr178156%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd178130178151%_))
                         (_%K178129178148%_ _%expr178156%_))
                       (_%else178127178142%_)))
                 (_%else178127178142%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (null? _%body178124178134%_)
                                                  (_%K178132178162%_)
                                                  (_%try-match178126178158%_))))))
                                       (_%body178167%_
                                        (if (null? _%bind178112%_)
                                            _%body178165%_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _%bind178112%_
                                                         (cons _%body178165%_
                                                               '())))
                                             (gx#stx-source _%stx178098%_)))))
                                  (if (null? _%decls178111%_)
                                      _%body178167%_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _%decls178111%_
                                                   (cons _%body178167%_ '())))
                                       (gx#stx-source _%stx178098%_))))))
                             (_%E178115178258%_
                              (lambda ()
                                (if (gx#stx-pair? _%e178114178121%_)
                                    (let ((_%e178117178174%_
                                           (gx#syntax-e _%e178114178121%_)))
                                      (let ((_%hd178118178177%_
                                             (##car _%e178117178174%_))
                                            (_%tl178119178179%_
                                             (##cdr _%e178117178174%_)))
                                        (let* ((_%hd178182%_
                                                _%hd178118178177%_)
                                               (_%rest178184%_
                                                _%tl178119178179%_)
                                               (_%e178185178202%_ _%hd178182%_)
                                               (_%E178197178206%_
                                                (lambda ()
                                                  (if (null? _%bind178112%_)
                                                      (_%lp178108%_
                                                       _%rest178184%_
                                                       _%decls178111%_
                                                       _%bind178112%_
                                                       (cons _%hd178182%_
                                                             _%body178113%_))
                                                      (_%lp178108%_
                                                       _%rest178184%_
                                                       _%decls178111%_
                                                       (cons (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%hd178182%_ '()))
                     _%bind178112%_)
               _%body178113%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E178187178220%_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _%e178185178202%_)
                                                      (let ((_%e178198178210%_
                                                             (gx#syntax-e
                                                              _%e178185178202%_)))
                                                        (let ((_%hd178199178213%_
                                                               (##car _%e178198178210%_))
                                                              (_%tl178200178215%_
                                                               (##cdr _%e178198178210%_)))
                                                          (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%hd178199178213%_)
                           (gx#core-identifier=?
                            _%hd178199178213%_
                            '%#declare))
                      (let ((_%xdecls178218%_ _%tl178200178215%_))
                        (_%lp178108%_
                         _%rest178184%_
                         (gx#stx-foldr cons _%decls178111%_ _%xdecls178218%_)
                         _%bind178112%_
                         _%body178113%_))
                      (_%E178197178206%_))))
              (_%E178197178206%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E178186178254%_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _%e178185178202%_)
                                                      (let ((_%e178188178224%_
                                                             (gx#syntax-e
                                                              _%e178185178202%_)))
                                                        (let ((_%hd178189178227%_
                                                               (##car _%e178188178224%_))
                                                              (_%tl178190178229%_
                                                               (##cdr _%e178188178224%_)))
                                                          (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%hd178189178227%_)
                           (gx#core-identifier=?
                            _%hd178189178227%_
                            '%#define-values))
                      (if (gx#stx-pair? _%tl178190178229%_)
                          (let ((_%e178191178232%_
                                 (gx#syntax-e _%tl178190178229%_)))
                            (let ((_%hd178192178235%_
                                   (##car _%e178191178232%_))
                                  (_%tl178193178237%_
                                   (##cdr _%e178191178232%_)))
                              (let ((_%hd-bind178240%_ _%hd178192178235%_))
                                (if (gx#stx-pair? _%tl178193178237%_)
                                    (let ((_%e178194178242%_
                                           (gx#syntax-e _%tl178193178237%_)))
                                      (let ((_%hd178195178245%_
                                             (##car _%e178194178242%_))
                                            (_%tl178196178247%_
                                             (##cdr _%e178194178242%_)))
                                        (let* ((_%expr178250%_
                                                _%hd178195178245%_)
                                               (_%ignore-props178252%_
                                                _%tl178196178247%_))
                                          (_%lp178108%_
                                           _%rest178184%_
                                           _%decls178111%_
                                           (cons (cons (gx#core-quote-bind-values
                                                        _%hd-bind178240%_)
                                                       (cons (gx#core-expand-expression
                                                              _%expr178250%_)
                                                             '()))
                                                 _%bind178112%_)
                                           _%body178113%_))))
                                    (_%E178187178220%_)))))
                          (_%E178187178220%_))
                      (_%E178187178220%_))))
              (_%E178187178220%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%E178186178254%_))))
                                    (_%E178116178170%_)))))
                        (_%E178115178258%_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _%body178099%_)
            (gx#stx-source _%stx178098%_))
           _%expand-special178101%_))))
    (define gx#core-expand-declare%
      (lambda (_%stx178036%_)
        (let* ((_%e178037178044%_ _%stx178036%_)
               (_%E178039178048%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e178037178044%_)))
               (_%E178038178094%_
                (lambda ()
                  (if (gx#stx-pair? _%e178037178044%_)
                      (let ((_%e178040178052%_
                             (gx#syntax-e _%e178037178044%_)))
                        (let ((_%hd178041178055%_ (##car _%e178040178052%_))
                              (_%tl178042178057%_ (##cdr _%e178040178052%_)))
                          (let ((_%body178060%_ _%tl178042178057%_))
                            (if (gx#stx-list? _%body178060%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_%decl178062%_)
                                     (let* ((_%e178063178070%_ _%decl178062%_)
                                            (_%E178065178074%_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _%e178063178070%_)))
                                            (_%E178064178090%_
                                             (lambda ()
                                               (if (gx#stx-pair?
                                                    _%e178063178070%_)
                                                   (let ((_%e178066178078%_
                                                          (gx#syntax-e
                                                           _%e178063178070%_)))
                                                     (let ((_%hd178067178081%_
                                                            (##car _%e178066178078%_))
                                                           (_%tl178068178083%_
                                                            (##cdr _%e178066178078%_)))
                                                       (let* ((_%head178086%_
                                                               _%hd178067178081%_)
                                                              (_%args178088%_
                                                               _%tl178068178083%_))
                                                         (if (gx#stx-list?
                                                              _%args178088%_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _%decl178062%_)
                                                             (_%E178065178074%_)))))
                                                   (_%E178065178074%_)))))
                                       (_%E178064178090%_)))
                                   _%body178060%_))
                                 (gx#stx-source _%stx178036%_))
                                (_%E178039178048%_)))))
                      (_%E178039178048%_)))))
          (_%E178038178094%_))))
    (define gx#core-expand-extern%
      (lambda (_%stx177940%_)
        (let* ((_%e177941177948%_ _%stx177940%_)
               (_%E177943177952%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e177941177948%_)))
               (_%E177942178032%_
                (lambda ()
                  (if (gx#stx-pair? _%e177941177948%_)
                      (let ((_%e177944177956%_
                             (gx#syntax-e _%e177941177948%_)))
                        (let ((_%hd177945177959%_ (##car _%e177944177956%_))
                              (_%tl177946177961%_ (##cdr _%e177944177956%_)))
                          (let ((_%body177964%_ _%tl177946177961%_))
                            (let _%lp177966%_ ((_%rest177968%_ _%body177964%_)
                                               (_%r177969%_ '()))
                              (let* ((_%e177970177984%_ _%rest177968%_)
                                     (_%E177982177988%_
                                      (lambda ()
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                         _%stx177940%_)))
                                     (_%E177972177992%_
                                      (lambda ()
                                        (if (gx#stx-null? _%e177970177984%_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-cons
                                              '%#extern
                                              (reverse _%r177969%_))
                                             (gx#stx-source _%stx177940%_))
                                            (_%E177982177988%_))))
                                     (_%E177971178028%_
                                      (lambda ()
                                        (if (gx#stx-pair? _%e177970177984%_)
                                            (let ((_%e177973177996%_
                                                   (gx#syntax-e
                                                    _%e177970177984%_)))
                                              (let ((_%hd177974177999%_
                                                     (##car _%e177973177996%_))
                                                    (_%tl177975178001%_
                                                     (##cdr _%e177973177996%_)))
                                                (if (gx#stx-pair?
                                                     _%hd177974177999%_)
                                                    (let ((_%e177976178004%_
                                                           (gx#syntax-e
                                                            _%hd177974177999%_)))
                                                      (let ((_%hd177977178007%_
                                                             (##car _%e177976178004%_))
                                                            (_%tl177978178009%_
                                                             (##cdr _%e177976178004%_)))
                                                        (let ((_%id178012%_
                                                               _%hd177977178007%_))
                                                          (if (gx#stx-pair?
                                                               _%tl177978178009%_)
                                                              (let ((_%e177979178014%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl177978178009%_)))
                        (let ((_%hd177980178017%_ (##car _%e177979178014%_))
                              (_%tl177981178019%_ (##cdr _%e177979178014%_)))
                          (let ((_%eid178022%_ _%hd177980178017%_))
                            (if (gx#stx-null? _%tl177981178019%_)
                                (let ((_%rest178024%_ _%tl177975178001%_))
                                  (if (and (gx#identifier? _%id178012%_)
                                           (gx#identifier? _%eid178022%_))
                                      (let ((_%eid178026%_
                                             (gx#stx-e _%eid178022%_)))
                                        (gx#core-bind-extern!__0
                                         _%id178012%_
                                         _%eid178026%_)
                                        (_%lp177966%_
                                         _%rest178024%_
                                         (cons (cons (gx#core-quote-syntax__0
                                                      _%id178012%_)
                                                     (cons _%eid178026%_ '()))
                                               _%r177969%_)))
                                      (_%E177972177992%_)))
                                (_%E177972177992%_)))))
                      (_%E177972177992%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E177972177992%_))))
                                            (_%E177972177992%_)))))
                                (_%E177971178028%_))))))
                      (_%E177943177952%_)))))
          (_%E177942178032%_))))
    (define gx#core-expand-define-values%
      (lambda (_%stx177829%_)
        (let* ((_%e177830177856%_ _%stx177829%_)
               (_%E177845177860%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e177830177856%_)))
               (_%E177832177892%_
                (lambda ()
                  (if (gx#stx-pair? _%e177830177856%_)
                      (let ((_%e177846177864%_
                             (gx#syntax-e _%e177830177856%_)))
                        (let ((_%hd177847177867%_ (##car _%e177846177864%_))
                              (_%tl177848177869%_ (##cdr _%e177846177864%_)))
                          (if (gx#stx-pair? _%tl177848177869%_)
                              (let ((_%e177849177872%_
                                     (gx#syntax-e _%tl177848177869%_)))
                                (let ((_%hd177850177875%_
                                       (##car _%e177849177872%_))
                                      (_%tl177851177877%_
                                       (##cdr _%e177849177872%_)))
                                  (let ((_%hd177880%_ _%hd177850177875%_))
                                    (if (gx#stx-pair? _%tl177851177877%_)
                                        (let ((_%e177852177882%_
                                               (gx#syntax-e
                                                _%tl177851177877%_)))
                                          (let ((_%hd177853177885%_
                                                 (##car _%e177852177882%_))
                                                (_%tl177854177887%_
                                                 (##cdr _%e177852177882%_)))
                                            (let ((_%expr177890%_
                                                   _%hd177853177885%_))
                                              (if (gx#stx-null?
                                                   _%tl177854177887%_)
                                                  (if (gx#core-bind-values?
                                                       _%hd177880%_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _%hd177880%_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd177880%_)
                             (cons (gx#core-expand-expression _%expr177890%_)
                                   '())))
                 (gx#stx-source _%stx177829%_)))
              (_%E177845177860%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E177845177860%_)))))
                                        (_%E177845177860%_)))))
                              (_%E177845177860%_))))
                      (_%E177845177860%_))))
               (_%E177831177936%_
                (lambda ()
                  (if (gx#stx-pair? _%e177830177856%_)
                      (let ((_%e177833177896%_
                             (gx#syntax-e _%e177830177856%_)))
                        (let ((_%hd177834177899%_ (##car _%e177833177896%_))
                              (_%tl177835177901%_ (##cdr _%e177833177896%_)))
                          (if (gx#stx-pair? _%tl177835177901%_)
                              (let ((_%e177836177904%_
                                     (gx#syntax-e _%tl177835177901%_)))
                                (let ((_%hd177837177907%_
                                       (##car _%e177836177904%_))
                                      (_%tl177838177909%_
                                       (##cdr _%e177836177904%_)))
                                  (if (gx#stx-pair? _%hd177837177907%_)
                                      (let ((_%e177842177912%_
                                             (gx#syntax-e _%hd177837177907%_)))
                                        (let ((_%hd177843177915%_
                                               (##car _%e177842177912%_))
                                              (_%tl177844177917%_
                                               (##cdr _%e177842177912%_)))
                                          (let ((_%id177920%_
                                                 _%hd177843177915%_))
                                            (if (gx#stx-null?
                                                 _%tl177844177917%_)
                                                (if (gx#stx-pair?
                                                     _%tl177838177909%_)
                                                    (let ((_%e177839177922%_
                                                           (gx#syntax-e
                                                            _%tl177838177909%_)))
                                                      (let ((_%hd177840177925%_
                                                             (##car _%e177839177922%_))
                                                            (_%tl177841177927%_
                                                             (##cdr _%e177839177922%_)))
                                                        (let* ((_%expr177930%_
                                                                _%hd177840177925%_)
                                                               (_%props177932%_
                                                                _%tl177841177927%_))
                                                          (if (gx#identifier?
                                                               _%id177920%_)
                                                              (let ((_%bind177934%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#core-bind-runtime!__0 _%id177920%_)))
                        (gx#core-bind-runtime-properties!
                         _%bind177934%_
                         _%props177932%_)
                        (gx#core-quote-syntax__1
                         (cons (gx#core-quote-syntax__0 '%#define-values)
                               (cons (gx#core-quote-bind-values
                                      (cons _%id177920%_ '()))
                                     (cons (gx#core-expand-expression
                                            _%expr177930%_)
                                           '())))
                         (gx#stx-source _%stx177829%_)))
                      (_%E177832177892%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E177832177892%_))
                                                (_%E177832177892%_)))))
                                      (_%E177832177892%_))))
                              (_%E177832177892%_))))
                      (_%E177832177892%_)))))
          (_%E177831177936%_))))
    (define gx#core-expand-define-runtime%
      (lambda (_%stx177768%_)
        (let* ((_%e177769177782%_ _%stx177768%_)
               (_%E177771177786%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e177769177782%_)))
               (_%E177770177825%_
                (lambda ()
                  (if (gx#stx-pair? _%e177769177782%_)
                      (let ((_%e177772177790%_
                             (gx#syntax-e _%e177769177782%_)))
                        (let ((_%hd177773177793%_ (##car _%e177772177790%_))
                              (_%tl177774177795%_ (##cdr _%e177772177790%_)))
                          (if (gx#stx-pair? _%tl177774177795%_)
                              (let ((_%e177775177798%_
                                     (gx#syntax-e _%tl177774177795%_)))
                                (let ((_%hd177776177801%_
                                       (##car _%e177775177798%_))
                                      (_%tl177777177803%_
                                       (##cdr _%e177775177798%_)))
                                  (let ((_%id177806%_ _%hd177776177801%_))
                                    (if (gx#stx-pair? _%tl177777177803%_)
                                        (let ((_%e177778177808%_
                                               (gx#syntax-e
                                                _%tl177777177803%_)))
                                          (let ((_%hd177779177811%_
                                                 (##car _%e177778177808%_))
                                                (_%tl177780177813%_
                                                 (##cdr _%e177778177808%_)))
                                            (let* ((_%binding-id177816%_
                                                    _%hd177779177811%_)
                                                   (_%props177818%_
                                                    _%tl177780177813%_))
                                              (if (and (gx#identifier?
                                                        _%id177806%_)
                                                       (gx#identifier?
                                                        _%binding-id177816%_)
                                                       (gx#stx-list?
                                                        _%props177818%_))
                                                  (let* ((_%eid177820%_
                                                          (gx#stx-e
                                                           _%binding-id177816%_))
                                                         (_%bind177822%_
                                                          (gx#core-bind-runtime-reference!__0
                                                           _%id177806%_
                                                           _%eid177820%_)))
                                                    (gx#core-bind-runtime-properties!
                                                     _%bind177822%_
                                                     _%props177818%_)
                                                    (gx#core-quote-syntax__0
                                                     (cons (gx#core-quote-syntax__0
                                                            '%#define-runtime)
                                                           (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id177806%_)
                         (cons _%eid177820%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E177771177786%_)))))
                                        (_%E177771177786%_)))))
                              (_%E177771177786%_))))
                      (_%E177771177786%_)))))
          (_%E177770177825%_))))
    (define gx#core-bind-runtime-properties!
      (lambda (_%bind177703%_ _%props177704%_)
        (letrec ((_%eval-prop177706%_
                  (lambda (_%prop177766%_)
                    (gx#eval-expression+1 _%prop177766%_))))
          (let _%loop177708%_ ((_%rest177710%_ _%props177704%_)
                               (_%props177711%_ '()))
            (let* ((_%e177712177723%_ _%rest177710%_)
                   (_%E177721177727%_
                    (lambda ()
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _%e177712177723%_)))
                   (_%E177714177731%_
                    (lambda ()
                      (if (gx#stx-null? _%e177712177723%_)
                          (if (null? _%props177711%_)
                              '#!void
                              (##structure-set!
                               _%bind177703%_
                               (reverse! _%props177711%_)
                               '4
                               gx#binding::t
                               '#f))
                          (_%E177721177727%_))))
                   (_%E177713177762%_
                    (lambda ()
                      (if (gx#stx-pair? _%e177712177723%_)
                          (let ((_%e177715177735%_
                                 (gx#syntax-e _%e177712177723%_)))
                            (let ((_%hd177716177738%_
                                   (##car _%e177715177735%_))
                                  (_%tl177717177740%_
                                   (##cdr _%e177715177735%_)))
                              (let ((_%key177743%_ _%hd177716177738%_))
                                (if (gx#stx-pair? _%tl177717177740%_)
                                    (let ((_%e177718177745%_
                                           (gx#syntax-e _%tl177717177740%_)))
                                      (let ((_%hd177719177748%_
                                             (##car _%e177718177745%_))
                                            (_%tl177720177750%_
                                             (##cdr _%e177718177745%_)))
                                        (let* ((_%prop177753%_
                                                _%hd177719177748%_)
                                               (_%rest177755%_
                                                _%tl177720177750%_))
                                          (if (gx#stx-keyword? _%key177743%_)
                                              (let* ((_%key177757%_
                                                      (gx#stx-e _%key177743%_))
                                                     (_%$e177759%_
                                                      _%key177757%_))
                                                (if (eq? 'macro: _%$e177759%_)
                                                    (begin
                                                      (##structure-set!
                                                       _%bind177703%_
                                                       (if (gx#identifier?
                                                            _%prop177753%_)
                                                           (gx#core-quote-syntax__0
                                                            _%prop177753%_)
                                                           (gx#eval-expression+1
                                                            _%prop177753%_))
                                                       '6
                                                       gx#runtime-binding::t
                                                       '#f)
                                                      (_%loop177708%_
                                                       _%rest177755%_
                                                       _%props177711%_))
                                                    (if (eq? 'type:
                                                             _%$e177759%_)
                                                        (begin
                                                          (##structure-set!
                                                           _%bind177703%_
                                                           (gx#eval-expression+1
                                                            _%prop177753%_)
                                                           '5
                                                           gx#runtime-binding::t
                                                           '#f)
                                                          (_%loop177708%_
                                                           _%rest177755%_
                                                           _%props177711%_))
                                                        (_%loop177708%_
                                                         _%rest177755%_
                                                         (cons (gx#eval-expression+1
                                                                _%prop177753%_)
                                                               (cons _%key177757%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%props177711%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E177714177731%_)))))
                                    (_%E177714177731%_)))))
                          (_%E177714177731%_)))))
              (_%E177713177762%_))))))
    (define gx#core-expand-define-syntax%
      (lambda (_%stx177646%_)
        (let* ((_%e177647177660%_ _%stx177646%_)
               (_%E177649177664%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e177647177660%_)))
               (_%E177648177699%_
                (lambda ()
                  (if (gx#stx-pair? _%e177647177660%_)
                      (let ((_%e177650177668%_
                             (gx#syntax-e _%e177647177660%_)))
                        (let ((_%hd177651177671%_ (##car _%e177650177668%_))
                              (_%tl177652177673%_ (##cdr _%e177650177668%_)))
                          (if (gx#stx-pair? _%tl177652177673%_)
                              (let ((_%e177653177676%_
                                     (gx#syntax-e _%tl177652177673%_)))
                                (let ((_%hd177654177679%_
                                       (##car _%e177653177676%_))
                                      (_%tl177655177681%_
                                       (##cdr _%e177653177676%_)))
                                  (let ((_%id177684%_ _%hd177654177679%_))
                                    (if (gx#stx-pair? _%tl177655177681%_)
                                        (let ((_%e177656177686%_
                                               (gx#syntax-e
                                                _%tl177655177681%_)))
                                          (let ((_%hd177657177689%_
                                                 (##car _%e177656177686%_))
                                                (_%tl177658177691%_
                                                 (##cdr _%e177656177686%_)))
                                            (let ((_%expr177694%_
                                                   _%hd177657177689%_))
                                              (if (gx#stx-null?
                                                   _%tl177658177691%_)
                                                  (if (gx#identifier?
                                                       _%id177684%_)
                                                      (let ((_g178860_
                                                             (gx#core-expand-expression+1
                                                              _%expr177694%_)))
                                                        (begin
                                                          (let ((_g178861_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g178860_)
                             (##values-length _g178860_)
                             1)))
                    (if (not (##fx= _g178861_ 2))
                        (error "Context expects 2 values" _g178861_)))
                  (let ((_%e-stx177696%_ (##values-ref _g178860_ 0))
                        (_%e177697%_ (##values-ref _g178860_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _%id177684%_ _%e177697%_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _%id177684%_)
                                   (cons _%e-stx177696%_ '())))
                       (gx#stx-source _%stx177646%_))))))
              (_%E177649177664%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E177649177664%_)))))
                                        (_%E177649177664%_)))))
                              (_%E177649177664%_))))
                      (_%E177649177664%_)))))
          (_%E177648177699%_))))
    (define gx#core-expand-define-alias%
      (lambda (_%stx177590%_)
        (let* ((_%e177591177604%_ _%stx177590%_)
               (_%E177593177608%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e177591177604%_)))
               (_%E177592177642%_
                (lambda ()
                  (if (gx#stx-pair? _%e177591177604%_)
                      (let ((_%e177594177612%_
                             (gx#syntax-e _%e177591177604%_)))
                        (let ((_%hd177595177615%_ (##car _%e177594177612%_))
                              (_%tl177596177617%_ (##cdr _%e177594177612%_)))
                          (if (gx#stx-pair? _%tl177596177617%_)
                              (let ((_%e177597177620%_
                                     (gx#syntax-e _%tl177596177617%_)))
                                (let ((_%hd177598177623%_
                                       (##car _%e177597177620%_))
                                      (_%tl177599177625%_
                                       (##cdr _%e177597177620%_)))
                                  (let ((_%id177628%_ _%hd177598177623%_))
                                    (if (gx#stx-pair? _%tl177599177625%_)
                                        (let ((_%e177600177630%_
                                               (gx#syntax-e
                                                _%tl177599177625%_)))
                                          (let ((_%hd177601177633%_
                                                 (##car _%e177600177630%_))
                                                (_%tl177602177635%_
                                                 (##cdr _%e177600177630%_)))
                                            (let ((_%alias-id177638%_
                                                   _%hd177601177633%_))
                                              (if (gx#stx-null?
                                                   _%tl177602177635%_)
                                                  (if (and (gx#identifier?
                                                            _%id177628%_)
                                                           (gx#identifier?
                                                            _%alias-id177638%_))
                                                      (let ((_%alias-id177640%_
                                                             (gx#core-quote-syntax__0
                                                              _%alias-id177638%_)))
                                                        (gx#core-bind-alias!__0
                                                         _%id177628%_
                                                         _%alias-id177640%_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id177628%_)
                             (cons _%alias-id177640%_ '())))))
              (_%E177593177608%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E177593177608%_)))))
                                        (_%E177593177608%_)))))
                              (_%E177593177608%_))))
                      (_%E177593177608%_)))))
          (_%E177592177642%_))))
    (define gx#core-expand-lambda%__%
      (lambda (_%stx177533%_ _%wrap?177534%_)
        (let* ((_%e177535177545%_ _%stx177533%_)
               (_%E177537177549%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e177535177545%_)))
               (_%E177536177576%_
                (lambda ()
                  (if (gx#stx-pair? _%e177535177545%_)
                      (let ((_%e177538177553%_
                             (gx#syntax-e _%e177535177545%_)))
                        (let ((_%hd177539177556%_ (##car _%e177538177553%_))
                              (_%tl177540177558%_ (##cdr _%e177538177553%_)))
                          (if (gx#stx-pair? _%tl177540177558%_)
                              (let ((_%e177541177561%_
                                     (gx#syntax-e _%tl177540177558%_)))
                                (let ((_%hd177542177564%_
                                       (##car _%e177541177561%_))
                                      (_%tl177543177566%_
                                       (##cdr _%e177541177561%_)))
                                  (let* ((_%hd177569%_ _%hd177542177564%_)
                                         (_%body177571%_ _%tl177543177566%_))
                                    (if (gx#core-bind-values? _%hd177569%_)
                                        (call-with-parameters__1
                                         (lambda ()
                                           (gx#core-bind-values!__0
                                            _%hd177569%_)
                                           (let ((_%body177574%_
                                                  (cons (gx#core-quote-bind-values
                                                         _%hd177569%_)
                                                        (cons (gx#core-expand-local-block
                                                               _%stx177533%_
                                                               _%body177571%_)
                                                              '()))))
                                             (if _%wrap?177534%_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _%body177574%_)
                                                  (gx#stx-source
                                                   _%stx177533%_))
                                                 _%body177574%_)))
                                         gx#current-expander-context
                                         (let ((__obj178843
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj178843)
                                           __obj178843))
                                        (_%E177537177549%_)))))
                              (_%E177537177549%_))))
                      (_%E177537177549%_)))))
          (_%E177536177576%_))))
    (define gx#core-expand-lambda%__0
      (lambda (_%stx177583%_)
        (let ((_%wrap?177585%_ '#t))
          (gx#core-expand-lambda%__% _%stx177583%_ _%wrap?177585%_))))
    (define gx#core-expand-lambda%
      (lambda _g178862_
        (let ((_g178863_ (##length _g178862_)))
          (cond ((##fx= _g178863_ 1)
                 (apply gx#core-expand-lambda%__0 _g178862_))
                ((##fx= _g178863_ 2)
                 (apply gx#core-expand-lambda%__% _g178862_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g178862_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_%stx177497%_)
        (let* ((_%e177498177505%_ _%stx177497%_)
               (_%E177500177509%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e177498177505%_)))
               (_%E177499177528%_
                (lambda ()
                  (if (gx#stx-pair? _%e177498177505%_)
                      (let ((_%e177501177513%_
                             (gx#syntax-e _%e177498177505%_)))
                        (let ((_%hd177502177516%_ (##car _%e177501177513%_))
                              (_%tl177503177518%_ (##cdr _%e177501177513%_)))
                          (let ((_%clauses177521%_ _%tl177503177518%_))
                            (if (gx#stx-list? _%clauses177521%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_%clause177523%_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _%clause177523%_)
                                       (let ((_%$e177525%_
                                              (gx#stx-source
                                               _%clause177523%_)))
                                         (if _%$e177525%_
                                             _%$e177525%_
                                             (gx#stx-source _%stx177497%_))))
                                      '#f))
                                   _%clauses177521%_))
                                 (gx#stx-source _%stx177497%_))
                                (_%E177500177509%_)))))
                      (_%E177500177509%_)))))
          (_%E177499177528%_))))
    (define gx#core-expand-let-values%
      (lambda (_%stx177451%_)
        (let* ((_%e177452177462%_ _%stx177451%_)
               (_%E177454177466%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e177452177462%_)))
               (_%E177453177493%_
                (lambda ()
                  (if (gx#stx-pair? _%e177452177462%_)
                      (let ((_%e177455177470%_
                             (gx#syntax-e _%e177452177462%_)))
                        (let ((_%hd177456177473%_ (##car _%e177455177470%_))
                              (_%tl177457177475%_ (##cdr _%e177455177470%_)))
                          (if (gx#stx-pair? _%tl177457177475%_)
                              (let ((_%e177458177478%_
                                     (gx#syntax-e _%tl177457177475%_)))
                                (let ((_%hd177459177481%_
                                       (##car _%e177458177478%_))
                                      (_%tl177460177483%_
                                       (##cdr _%e177458177478%_)))
                                  (let* ((_%hd177486%_ _%hd177459177481%_)
                                         (_%body177488%_ _%tl177460177483%_))
                                    (if (gx#core-expand-let-bind? _%hd177486%_)
                                        (let ((_%expressions177490%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _%hd177486%_)))
                                          (call-with-parameters__1
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _%hd177486%_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _%hd177486%_
                                                           _%expressions177490%_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%stx177451%_
                         _%body177488%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _%stx177451%_)))
                                           gx#current-expander-context
                                           (let ((__obj178844
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!__0
                                              __obj178844)
                                             __obj178844)))
                                        (_%E177454177466%_)))))
                              (_%E177454177466%_))))
                      (_%E177454177466%_)))))
          (_%E177453177493%_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_%stx177396%_ _%form177397%_)
        (let* ((_%e177398177408%_ _%stx177396%_)
               (_%E177400177412%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e177398177408%_)))
               (_%E177399177437%_
                (lambda ()
                  (if (gx#stx-pair? _%e177398177408%_)
                      (let ((_%e177401177416%_
                             (gx#syntax-e _%e177398177408%_)))
                        (let ((_%hd177402177419%_ (##car _%e177401177416%_))
                              (_%tl177403177421%_ (##cdr _%e177401177416%_)))
                          (if (gx#stx-pair? _%tl177403177421%_)
                              (let ((_%e177404177424%_
                                     (gx#syntax-e _%tl177403177421%_)))
                                (let ((_%hd177405177427%_
                                       (##car _%e177404177424%_))
                                      (_%tl177406177429%_
                                       (##cdr _%e177404177424%_)))
                                  (let* ((_%hd177432%_ _%hd177405177427%_)
                                         (_%body177434%_ _%tl177406177429%_))
                                    (if (gx#core-expand-let-bind? _%hd177432%_)
                                        (call-with-parameters__1
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _%hd177432%_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _%form177397%_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _%hd177432%_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _%hd177432%_))
                                                        (cons (gx#core-expand-local-block
                                                               _%stx177396%_
                                                               _%body177434%_)
                                                              '())))
                                            (gx#stx-source _%stx177396%_)))
                                         gx#current-expander-context
                                         (let ((__obj178845
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj178845)
                                           __obj178845))
                                        (_%E177400177412%_)))))
                              (_%E177400177412%_))))
                      (_%E177400177412%_)))))
          (_%E177399177437%_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_%stx177444%_)
        (let ((_%form177446%_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _%stx177444%_ _%form177446%_))))
    (define gx#core-expand-letrec-values%
      (lambda _g178864_
        (let ((_g178865_ (##length _g178864_)))
          (cond ((##fx= _g178865_ 1)
                 (apply gx#core-expand-letrec-values%__0 _g178864_))
                ((##fx= _g178865_ 2)
                 (apply gx#core-expand-letrec-values%__% _g178864_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g178864_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_%stx177393%_)
        (gx#core-expand-letrec-values%__% _%stx177393%_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_%stx177350%_)
        (if (gx#stx-list? _%stx177350%_)
            (gx#stx-andmap
             (lambda (_%bind177352%_)
               (let* ((_%e177353177363%_ _%bind177352%_)
                      (_%E177355177367%_ (lambda () '#f))
                      (_%E177354177389%_
                       (lambda ()
                         (if (gx#stx-pair? _%e177353177363%_)
                             (let ((_%e177356177371%_
                                    (gx#syntax-e _%e177353177363%_)))
                               (let ((_%hd177357177374%_
                                      (##car _%e177356177371%_))
                                     (_%tl177358177376%_
                                      (##cdr _%e177356177371%_)))
                                 (let ((_%hd177379%_ _%hd177357177374%_))
                                   (if (gx#stx-pair? _%tl177358177376%_)
                                       (let ((_%e177359177381%_
                                              (gx#syntax-e
                                               _%tl177358177376%_)))
                                         (let ((_%hd177360177384%_
                                                (##car _%e177359177381%_))
                                               (_%tl177361177386%_
                                                (##cdr _%e177359177381%_)))
                                           (if (gx#stx-null?
                                                _%tl177361177386%_)
                                               (gx#core-bind-values?
                                                _%hd177379%_)
                                               (_%E177355177367%_))))
                                       (_%E177355177367%_)))))
                             (_%E177355177367%_)))))
                 (_%E177354177389%_)))
             _%stx177350%_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_%bind177309%_)
        (let* ((_%e177310177320%_ _%bind177309%_)
               (_%E177312177324%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e177310177320%_)))
               (_%E177311177346%_
                (lambda ()
                  (if (gx#stx-pair? _%e177310177320%_)
                      (let ((_%e177313177328%_
                             (gx#syntax-e _%e177310177320%_)))
                        (let ((_%hd177314177331%_ (##car _%e177313177328%_))
                              (_%tl177315177333%_ (##cdr _%e177313177328%_)))
                          (if (gx#stx-pair? _%tl177315177333%_)
                              (let ((_%e177316177336%_
                                     (gx#syntax-e _%tl177315177333%_)))
                                (let ((_%hd177317177339%_
                                       (##car _%e177316177336%_))
                                      (_%tl177318177341%_
                                       (##cdr _%e177316177336%_)))
                                  (let ((_%expr177344%_ _%hd177317177339%_))
                                    (if (gx#stx-null? _%tl177318177341%_)
                                        (gx#core-expand-expression
                                         _%expr177344%_)
                                        (_%E177312177324%_)))))
                              (_%E177312177324%_))))
                      (_%E177312177324%_)))))
          (_%E177311177346%_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_%bind177268%_)
        (let* ((_%e177269177279%_ _%bind177268%_)
               (_%E177271177283%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e177269177279%_)))
               (_%E177270177305%_
                (lambda ()
                  (if (gx#stx-pair? _%e177269177279%_)
                      (let ((_%e177272177287%_
                             (gx#syntax-e _%e177269177279%_)))
                        (let ((_%hd177273177290%_ (##car _%e177272177287%_))
                              (_%tl177274177292%_ (##cdr _%e177272177287%_)))
                          (let ((_%hd177295%_ _%hd177273177290%_))
                            (if (gx#stx-pair? _%tl177274177292%_)
                                (let ((_%e177275177297%_
                                       (gx#syntax-e _%tl177274177292%_)))
                                  (let ((_%hd177276177300%_
                                         (##car _%e177275177297%_))
                                        (_%tl177277177302%_
                                         (##cdr _%e177275177297%_)))
                                    (if (gx#stx-null? _%tl177277177302%_)
                                        (gx#core-bind-values!__0 _%hd177295%_)
                                        (_%E177271177283%_))))
                                (_%E177271177283%_)))))
                      (_%E177271177283%_)))))
          (_%E177270177305%_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_%bind177226%_ _%expr177227%_)
        (let* ((_%e177228177238%_ _%bind177226%_)
               (_%E177230177242%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e177228177238%_)))
               (_%E177229177264%_
                (lambda ()
                  (if (gx#stx-pair? _%e177228177238%_)
                      (let ((_%e177231177246%_
                             (gx#syntax-e _%e177228177238%_)))
                        (let ((_%hd177232177249%_ (##car _%e177231177246%_))
                              (_%tl177233177251%_ (##cdr _%e177231177246%_)))
                          (let ((_%hd177254%_ _%hd177232177249%_))
                            (if (gx#stx-pair? _%tl177233177251%_)
                                (let ((_%e177234177256%_
                                       (gx#syntax-e _%tl177233177251%_)))
                                  (let ((_%hd177235177259%_
                                         (##car _%e177234177256%_))
                                        (_%tl177236177261%_
                                         (##cdr _%e177234177256%_)))
                                    (if (gx#stx-null? _%tl177236177261%_)
                                        (cons (gx#core-quote-bind-values
                                               _%hd177254%_)
                                              (cons _%expr177227%_ '()))
                                        (_%E177230177242%_))))
                                (_%E177230177242%_)))))
                      (_%E177230177242%_)))))
          (_%E177229177264%_))))
    (define gx#core-expand-let-syntax%
      (lambda (_%stx177180%_)
        (let* ((_%e177181177191%_ _%stx177180%_)
               (_%E177183177195%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e177181177191%_)))
               (_%E177182177222%_
                (lambda ()
                  (if (gx#stx-pair? _%e177181177191%_)
                      (let ((_%e177184177199%_
                             (gx#syntax-e _%e177181177191%_)))
                        (let ((_%hd177185177202%_ (##car _%e177184177199%_))
                              (_%tl177186177204%_ (##cdr _%e177184177199%_)))
                          (if (gx#stx-pair? _%tl177186177204%_)
                              (let ((_%e177187177207%_
                                     (gx#syntax-e _%tl177186177204%_)))
                                (let ((_%hd177188177210%_
                                       (##car _%e177187177207%_))
                                      (_%tl177189177212%_
                                       (##cdr _%e177187177207%_)))
                                  (let* ((_%hd177215%_ _%hd177188177210%_)
                                         (_%body177217%_ _%tl177189177212%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd177215%_)
                                        (let ((_%expanders177219%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _%hd177215%_)))
                                          (call-with-parameters__1
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _%hd177215%_
                                              _%expanders177219%_)
                                             (gx#core-expand-local-block
                                              _%stx177180%_
                                              _%body177217%_))
                                           gx#current-expander-context
                                           (let ((__obj178846
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!__0
                                              __obj178846)
                                             __obj178846)))
                                        (_%E177183177195%_)))))
                              (_%E177183177195%_))))
                      (_%E177183177195%_)))))
          (_%E177182177222%_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_%stx177129%_)
        (let* ((_%e177130177140%_ _%stx177129%_)
               (_%E177132177144%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e177130177140%_)))
               (_%E177131177176%_
                (lambda ()
                  (if (gx#stx-pair? _%e177130177140%_)
                      (let ((_%e177133177148%_
                             (gx#syntax-e _%e177130177140%_)))
                        (let ((_%hd177134177151%_ (##car _%e177133177148%_))
                              (_%tl177135177153%_ (##cdr _%e177133177148%_)))
                          (if (gx#stx-pair? _%tl177135177153%_)
                              (let ((_%e177136177156%_
                                     (gx#syntax-e _%tl177135177153%_)))
                                (let ((_%hd177137177159%_
                                       (##car _%e177136177156%_))
                                      (_%tl177138177161%_
                                       (##cdr _%e177136177156%_)))
                                  (let* ((_%hd177164%_ _%hd177137177159%_)
                                         (_%body177166%_ _%tl177138177161%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd177164%_)
                                        (call-with-parameters__1
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _%hd177164%_
                                            (make-list
                                             (gx#stx-length _%hd177164%_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_%g177168177171%_
                                                     _%g177169177173%_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _%g177168177171%_
                                               _%g177169177173%_
                                               '#t))
                                            _%hd177164%_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _%hd177164%_))
                                           (gx#core-expand-local-block
                                            _%stx177129%_
                                            _%body177166%_))
                                         gx#current-expander-context
                                         (let ((__obj178847
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj178847)
                                           __obj178847))
                                        (_%E177132177144%_)))))
                              (_%E177132177144%_))))
                      (_%E177132177144%_)))))
          (_%E177131177176%_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_%stx177086%_)
        (if (gx#stx-list? _%stx177086%_)
            (gx#stx-andmap
             (lambda (_%bind177088%_)
               (let* ((_%e177089177099%_ _%bind177088%_)
                      (_%E177091177103%_ (lambda () '#f))
                      (_%E177090177125%_
                       (lambda ()
                         (if (gx#stx-pair? _%e177089177099%_)
                             (let ((_%e177092177107%_
                                    (gx#syntax-e _%e177089177099%_)))
                               (let ((_%hd177093177110%_
                                      (##car _%e177092177107%_))
                                     (_%tl177094177112%_
                                      (##cdr _%e177092177107%_)))
                                 (let ((_%hd177115%_ _%hd177093177110%_))
                                   (if (gx#stx-pair? _%tl177094177112%_)
                                       (let ((_%e177095177117%_
                                              (gx#syntax-e
                                               _%tl177094177112%_)))
                                         (let ((_%hd177096177120%_
                                                (##car _%e177095177117%_))
                                               (_%tl177097177122%_
                                                (##cdr _%e177095177117%_)))
                                           (if (gx#stx-null?
                                                _%tl177097177122%_)
                                               (gx#identifier? _%hd177115%_)
                                               (_%E177091177103%_))))
                                       (_%E177091177103%_)))))
                             (_%E177091177103%_)))))
                 (_%E177090177125%_)))
             _%stx177086%_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_%bind177042%_)
        (let* ((_%e177043177053%_ _%bind177042%_)
               (_%E177045177057%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e177043177053%_)))
               (_%E177044177082%_
                (lambda ()
                  (if (gx#stx-pair? _%e177043177053%_)
                      (let ((_%e177046177061%_
                             (gx#syntax-e _%e177043177053%_)))
                        (let ((_%hd177047177064%_ (##car _%e177046177061%_))
                              (_%tl177048177066%_ (##cdr _%e177046177061%_)))
                          (if (gx#stx-pair? _%tl177048177066%_)
                              (let ((_%e177049177069%_
                                     (gx#syntax-e _%tl177048177066%_)))
                                (let ((_%hd177050177072%_
                                       (##car _%e177049177069%_))
                                      (_%tl177051177074%_
                                       (##cdr _%e177049177069%_)))
                                  (let ((_%expr177077%_ _%hd177050177072%_))
                                    (if (gx#stx-null? _%tl177051177074%_)
                                        (let ((_g178866_
                                               (gx#core-expand-expression+1
                                                _%expr177077%_)))
                                          (begin
                                            (let ((_g178867_
                                                   (if (##values? _g178866_)
                                                       (##values-length
                                                        _g178866_)
                                                       1)))
                                              (if (not (##fx= _g178867_ 2))
                                                  (error "Context expects 2 values"
                                                         _g178867_)))
                                            (let ((_%_177079%_
                                                   (##values-ref _g178866_ 0))
                                                  (_%e177080%_
                                                   (##values-ref _g178866_ 1)))
                                              _%e177080%_)))
                                        (_%E177045177057%_)))))
                              (_%E177045177057%_))))
                      (_%E177045177057%_)))))
          (_%E177044177082%_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_%bind176987%_ _%e176988%_ _%rebind?176989%_)
        (let* ((_%e176990177000%_ _%bind176987%_)
               (_%E176992177004%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e176990177000%_)))
               (_%E176991177026%_
                (lambda ()
                  (if (gx#stx-pair? _%e176990177000%_)
                      (let ((_%e176993177008%_
                             (gx#syntax-e _%e176990177000%_)))
                        (let ((_%hd176994177011%_ (##car _%e176993177008%_))
                              (_%tl176995177013%_ (##cdr _%e176993177008%_)))
                          (let ((_%id177016%_ _%hd176994177011%_))
                            (if (gx#stx-pair? _%tl176995177013%_)
                                (let ((_%e176996177018%_
                                       (gx#syntax-e _%tl176995177013%_)))
                                  (let ((_%hd176997177021%_
                                         (##car _%e176996177018%_))
                                        (_%tl176998177023%_
                                         (##cdr _%e176996177018%_)))
                                    (if (gx#stx-null? _%tl176998177023%_)
                                        (gx#core-bind-syntax!__1
                                         _%id177016%_
                                         _%e176988%_
                                         _%rebind?176989%_)
                                        (_%E176992177004%_))))
                                (_%E176992177004%_)))))
                      (_%E176992177004%_)))))
          (_%E176991177026%_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_%bind177033%_ _%e177034%_)
        (let ((_%rebind?177036%_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _%bind177033%_
           _%e177034%_
           _%rebind?177036%_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g178868_
        (let ((_g178869_ (##length _g178868_)))
          (cond ((##fx= _g178869_ 2)
                 (apply gx#core-expand-let-bind-syntax!__0 _g178868_))
                ((##fx= _g178869_ 3)
                 (apply gx#core-expand-let-bind-syntax!__% _g178868_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g178868_))))))
    (define gx#core-expand-expression%
      (lambda (_%stx176945%_)
        (let* ((_%e176946176956%_ _%stx176945%_)
               (_%E176948176960%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e176946176956%_)))
               (_%E176947176982%_
                (lambda ()
                  (if (gx#stx-pair? _%e176946176956%_)
                      (let ((_%e176949176964%_
                             (gx#syntax-e _%e176946176956%_)))
                        (let ((_%hd176950176967%_ (##car _%e176949176964%_))
                              (_%tl176951176969%_ (##cdr _%e176949176964%_)))
                          (if (gx#stx-pair? _%tl176951176969%_)
                              (let ((_%e176952176972%_
                                     (gx#syntax-e _%tl176951176969%_)))
                                (let ((_%hd176953176975%_
                                       (##car _%e176952176972%_))
                                      (_%tl176954176977%_
                                       (##cdr _%e176952176972%_)))
                                  (let ((_%expr176980%_ _%hd176953176975%_))
                                    (if (gx#stx-null? _%tl176954176977%_)
                                        (gx#core-expand-expression
                                         _%expr176980%_)
                                        (_%E176948176960%_)))))
                              (_%E176948176960%_))))
                      (_%E176948176960%_)))))
          (_%E176947176982%_))))
    (define gx#core-expand-quote%
      (lambda (_%stx176904%_)
        (let* ((_%e176905176915%_ _%stx176904%_)
               (_%E176907176919%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e176905176915%_)))
               (_%E176906176941%_
                (lambda ()
                  (if (gx#stx-pair? _%e176905176915%_)
                      (let ((_%e176908176923%_
                             (gx#syntax-e _%e176905176915%_)))
                        (let ((_%hd176909176926%_ (##car _%e176908176923%_))
                              (_%tl176910176928%_ (##cdr _%e176908176923%_)))
                          (if (gx#stx-pair? _%tl176910176928%_)
                              (let ((_%e176911176931%_
                                     (gx#syntax-e _%tl176910176928%_)))
                                (let ((_%hd176912176934%_
                                       (##car _%e176911176931%_))
                                      (_%tl176913176936%_
                                       (##cdr _%e176911176931%_)))
                                  (let ((_%e176939%_ _%hd176912176934%_))
                                    (if (gx#stx-null? _%tl176913176936%_)
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#quote)
                                               (cons (gx#syntax->datum
                                                      _%e176939%_)
                                                     '()))
                                         (gx#stx-source _%stx176904%_))
                                        (_%E176907176919%_)))))
                              (_%E176907176919%_))))
                      (_%E176907176919%_)))))
          (_%E176906176941%_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_%stx176863%_)
        (let* ((_%e176864176874%_ _%stx176863%_)
               (_%E176866176878%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e176864176874%_)))
               (_%E176865176900%_
                (lambda ()
                  (if (gx#stx-pair? _%e176864176874%_)
                      (let ((_%e176867176882%_
                             (gx#syntax-e _%e176864176874%_)))
                        (let ((_%hd176868176885%_ (##car _%e176867176882%_))
                              (_%tl176869176887%_ (##cdr _%e176867176882%_)))
                          (if (gx#stx-pair? _%tl176869176887%_)
                              (let ((_%e176870176890%_
                                     (gx#syntax-e _%tl176869176887%_)))
                                (let ((_%hd176871176893%_
                                       (##car _%e176870176890%_))
                                      (_%tl176872176895%_
                                       (##cdr _%e176870176890%_)))
                                  (let ((_%e176898%_ _%hd176871176893%_))
                                    (if (gx#stx-null? _%tl176872176895%_)
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#quote-syntax)
                                               (cons (gx#core-quote-syntax__0
                                                      _%e176898%_)
                                                     '()))
                                         (gx#stx-source _%stx176863%_))
                                        (_%E176866176878%_)))))
                              (_%E176866176878%_))))
                      (_%E176866176878%_)))))
          (_%E176865176900%_))))
    (define gx#core-expand-call%
      (lambda (_%stx176757%_)
        (letrec ((_%expand-runtime-call176759%_
                  (lambda (_%rator-expr176860%_ _%args176861%_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons*
                      '%#call
                      _%rator-expr176860%_
                      (gx#stx-map1 gx#core-expand-expression _%args176861%_))
                     (gx#stx-source _%stx176757%_)))))
          (let* ((_%e176760176770%_ _%stx176757%_)
                 (_%E176762176774%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e176760176770%_)))
                 (_%E176761176856%_
                  (lambda ()
                    (if (gx#stx-pair? _%e176760176770%_)
                        (let ((_%e176763176778%_
                               (gx#syntax-e _%e176760176770%_)))
                          (let ((_%hd176764176781%_ (##car _%e176763176778%_))
                                (_%tl176765176783%_ (##cdr _%e176763176778%_)))
                            (if (gx#stx-pair? _%tl176765176783%_)
                                (let ((_%e176766176786%_
                                       (gx#syntax-e _%tl176765176783%_)))
                                  (let ((_%hd176767176789%_
                                         (##car _%e176766176786%_))
                                        (_%tl176768176791%_
                                         (##cdr _%e176766176786%_)))
                                    (let* ((_%rator176794%_ _%hd176767176789%_)
                                           (_%args176796%_ _%tl176768176791%_))
                                      (if (gx#stx-list? _%args176796%_)
                                          (let* ((_%rator-expr176798%_
                                                  (gx#core-expand-expression
                                                   _%rator176794%_))
                                                 (_%e176799176809%_
                                                  _%rator-expr176798%_)
                                                 (_%E176801176813%_
                                                  (lambda ()
                                                    (_%expand-runtime-call176759%_
                                                     _%rator-expr176798%_
                                                     _%args176796%_)))
                                                 (_%E176800176852%_
                                                  (lambda ()
                                                    (if (gx#stx-pair?
                                                         _%e176799176809%_)
                                                        (let ((_%e176802176817%_
                                                               (gx#syntax-e
                                                                _%e176799176809%_)))
                                                          (let ((_%hd176803176820%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e176802176817%_))
                        (_%tl176804176822%_ (##cdr _%e176802176817%_)))
                    (if (and (gx#identifier? _%hd176803176820%_)
                             (gx#core-identifier=? _%hd176803176820%_ '%#ref))
                        (if (gx#stx-pair? _%tl176804176822%_)
                            (let ((_%e176805176825%_
                                   (gx#syntax-e _%tl176804176822%_)))
                              (let ((_%hd176806176828%_
                                     (##car _%e176805176825%_))
                                    (_%tl176807176830%_
                                     (##cdr _%e176805176825%_)))
                                (let ((_%id176833%_ _%hd176806176828%_))
                                  (if (gx#stx-null? _%tl176807176830%_)
                                      (let ((_%$e176835%_
                                             (gx#resolve-identifier__0
                                              _%id176833%_)))
                                        (if _%$e176835%_
                                            ((lambda (_%bind176838%_)
                                               (let _%again176840%_ ((_%bind176842%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%bind176838%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_%$e176844%_
                                                        (if (##structure-instance-of?
                                                             _%bind176842%_
                                                             'gx#runtime-binding::t)
                                                            (##unchecked-structure-ref
                                                             _%bind176842%_
                                                             '6
                                                             '#f
                                                             '#f)
                                                            '#f)))
                                                   (if _%$e176844%_
                                                       ((lambda (_%macro176847%_)
                                                          (gx#core-expand-expression
                                                           (gx#stx-wrap-source
                                                            (cons _%macro176847%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%args176796%_)
                    (gx#stx-source _%stx176757%_))))
                _%$e176844%_)
               (if (##structure-direct-instance-of?
                    _%bind176842%_
                    'gx#import-binding::t)
                   (_%again176840%_
                    (##unchecked-structure-ref _%bind176842%_ '5 '#f '#f))
                   (_%expand-runtime-call176759%_
                    _%rator-expr176798%_
                    _%args176796%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%$e176835%_)
                                            (_%expand-runtime-call176759%_
                                             _%rator-expr176798%_
                                             _%args176796%_)))
                                      (_%E176801176813%_)))))
                            (_%E176801176813%_))
                        (_%E176801176813%_))))
                (_%E176801176813%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E176800176852%_))
                                          (_%E176762176774%_)))))
                                (_%E176762176774%_))))
                        (_%E176762176774%_)))))
            (_%E176761176856%_)))))
    (define gx#core-expand-if%
      (lambda (_%stx176690%_)
        (let* ((_%e176691176707%_ _%stx176690%_)
               (_%E176693176711%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e176691176707%_)))
               (_%E176692176753%_
                (lambda ()
                  (if (gx#stx-pair? _%e176691176707%_)
                      (let ((_%e176694176715%_
                             (gx#syntax-e _%e176691176707%_)))
                        (let ((_%hd176695176718%_ (##car _%e176694176715%_))
                              (_%tl176696176720%_ (##cdr _%e176694176715%_)))
                          (if (gx#stx-pair? _%tl176696176720%_)
                              (let ((_%e176697176723%_
                                     (gx#syntax-e _%tl176696176720%_)))
                                (let ((_%hd176698176726%_
                                       (##car _%e176697176723%_))
                                      (_%tl176699176728%_
                                       (##cdr _%e176697176723%_)))
                                  (let ((_%test176731%_ _%hd176698176726%_))
                                    (if (gx#stx-pair? _%tl176699176728%_)
                                        (let ((_%e176700176733%_
                                               (gx#syntax-e
                                                _%tl176699176728%_)))
                                          (let ((_%hd176701176736%_
                                                 (##car _%e176700176733%_))
                                                (_%tl176702176738%_
                                                 (##cdr _%e176700176733%_)))
                                            (let ((_%K176741%_
                                                   _%hd176701176736%_))
                                              (if (gx#stx-pair?
                                                   _%tl176702176738%_)
                                                  (let ((_%e176703176743%_
                                                         (gx#syntax-e
                                                          _%tl176702176738%_)))
                                                    (let ((_%hd176704176746%_
                                                           (##car _%e176703176743%_))
                                                          (_%tl176705176748%_
                                                           (##cdr _%e176703176743%_)))
                                                      (let ((_%E176751%_
                                                             _%hd176704176746%_))
                                                        (if (gx#stx-null?
                                                             _%tl176705176748%_)
                                                            (gx#core-quote-syntax__1
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#if)
                           (cons (gx#core-expand-expression _%test176731%_)
                                 (cons (gx#core-expand-expression _%K176741%_)
                                       (cons (gx#core-expand-expression
                                              _%E176751%_)
                                             '()))))
                     (gx#stx-source _%stx176690%_))
                    (_%E176693176711%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E176693176711%_)))))
                                        (_%E176693176711%_)))))
                              (_%E176693176711%_))))
                      (_%E176693176711%_)))))
          (_%E176692176753%_))))
    (define gx#core-expand-ref%
      (lambda (_%stx176649%_)
        (let* ((_%e176650176660%_ _%stx176649%_)
               (_%E176652176664%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e176650176660%_)))
               (_%E176651176686%_
                (lambda ()
                  (if (gx#stx-pair? _%e176650176660%_)
                      (let ((_%e176653176668%_
                             (gx#syntax-e _%e176650176660%_)))
                        (let ((_%hd176654176671%_ (##car _%e176653176668%_))
                              (_%tl176655176673%_ (##cdr _%e176653176668%_)))
                          (if (gx#stx-pair? _%tl176655176673%_)
                              (let ((_%e176656176676%_
                                     (gx#syntax-e _%tl176655176673%_)))
                                (let ((_%hd176657176679%_
                                       (##car _%e176656176676%_))
                                      (_%tl176658176681%_
                                       (##cdr _%e176656176676%_)))
                                  (let ((_%id176684%_ _%hd176657176679%_))
                                    (if (gx#stx-null? _%tl176658176681%_)
                                        (if (gx#identifier? _%id176684%_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _%id176684%_
                                                          _%stx176649%_)
                                                         '()))
                                             (gx#stx-source _%stx176649%_))
                                            (_%E176652176664%_))
                                        (_%E176652176664%_)))))
                              (_%E176652176664%_))))
                      (_%E176652176664%_)))))
          (_%E176651176686%_))))
    (define gx#core-expand-setq%
      (lambda (_%stx176595%_)
        (let* ((_%e176596176609%_ _%stx176595%_)
               (_%E176598176613%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e176596176609%_)))
               (_%E176597176645%_
                (lambda ()
                  (if (gx#stx-pair? _%e176596176609%_)
                      (let ((_%e176599176617%_
                             (gx#syntax-e _%e176596176609%_)))
                        (let ((_%hd176600176620%_ (##car _%e176599176617%_))
                              (_%tl176601176622%_ (##cdr _%e176599176617%_)))
                          (if (gx#stx-pair? _%tl176601176622%_)
                              (let ((_%e176602176625%_
                                     (gx#syntax-e _%tl176601176622%_)))
                                (let ((_%hd176603176628%_
                                       (##car _%e176602176625%_))
                                      (_%tl176604176630%_
                                       (##cdr _%e176602176625%_)))
                                  (let ((_%id176633%_ _%hd176603176628%_))
                                    (if (gx#stx-pair? _%tl176604176630%_)
                                        (let ((_%e176605176635%_
                                               (gx#syntax-e
                                                _%tl176604176630%_)))
                                          (let ((_%hd176606176638%_
                                                 (##car _%e176605176635%_))
                                                (_%tl176607176640%_
                                                 (##cdr _%e176605176635%_)))
                                            (let ((_%expr176643%_
                                                   _%hd176606176638%_))
                                              (if (gx#stx-null?
                                                   _%tl176607176640%_)
                                                  (if (gx#identifier?
                                                       _%id176633%_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%id176633%_
                            _%stx176595%_)
                           (cons (gx#core-expand-expression _%expr176643%_)
                                 '())))
               (gx#stx-source _%stx176595%_))
              (_%E176598176613%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E176598176613%_)))))
                                        (_%E176598176613%_)))))
                              (_%E176598176613%_))))
                      (_%E176598176613%_)))))
          (_%E176597176645%_))))
    (define gx#macro-expand-extern
      (lambda (_%stx176440%_)
        (letrec ((_%generate176442%_
                  (lambda (_%body176472%_)
                    (let _%lp176474%_ ((_%rest176476%_ _%body176472%_)
                                       (_%ns176477%_
                                        (gx#core-context-namespace__0))
                                       (_%r176478%_ '()))
                      (let* ((_%e176479176494%_ _%rest176476%_)
                             (_%E176492176498%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _%e176479176494%_)))
                             (_%E176488176502%_
                              (lambda ()
                                (if (gx#stx-null? _%e176479176494%_)
                                    (reverse _%r176478%_)
                                    (_%E176492176498%_))))
                             (_%E176481176559%_
                              (lambda ()
                                (if (gx#stx-pair? _%e176479176494%_)
                                    (let ((_%e176489176506%_
                                           (gx#syntax-e _%e176479176494%_)))
                                      (let ((_%hd176490176509%_
                                             (##car _%e176489176506%_))
                                            (_%tl176491176511%_
                                             (##cdr _%e176489176506%_)))
                                        (let* ((_%hd176514%_
                                                _%hd176490176509%_)
                                               (_%rest176516%_
                                                _%tl176491176511%_))
                                          (if (gx#identifier? _%hd176514%_)
                                              (_%lp176474%_
                                               _%rest176516%_
                                               _%ns176477%_
                                               (cons (cons _%hd176514%_
                                                           (cons (if _%ns176477%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-identifier
                              _%hd176514%_
                              _%ns176477%_
                              '"#"
                              _%hd176514%_)
                             _%hd176514%_)
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r176478%_))
                                              (let* ((_%e176517176527%_
                                                      _%hd176514%_)
                                                     (_%E176519176531%_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid syntax-case clause"
                                                         _%e176517176527%_)))
                                                     (_%E176518176555%_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _%e176517176527%_)
                                                            (let ((_%e176520176535%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%e176517176527%_)))
                      (let ((_%hd176521176538%_ (##car _%e176520176535%_))
                            (_%tl176522176540%_ (##cdr _%e176520176535%_)))
                        (let ((_%id176543%_ _%hd176521176538%_))
                          (if (gx#stx-pair? _%tl176522176540%_)
                              (let ((_%e176523176545%_
                                     (gx#syntax-e _%tl176522176540%_)))
                                (let ((_%hd176524176548%_
                                       (##car _%e176523176545%_))
                                      (_%tl176525176550%_
                                       (##cdr _%e176523176545%_)))
                                  (let ((_%eid176553%_ _%hd176524176548%_))
                                    (if (gx#stx-null? _%tl176525176550%_)
                                        (if (and (gx#identifier? _%id176543%_)
                                                 (gx#identifier?
                                                  _%eid176553%_))
                                            (_%lp176474%_
                                             _%rest176516%_
                                             _%ns176477%_
                                             (cons (cons _%id176543%_
                                                         (cons _%eid176553%_
                                                               '()))
                                                   _%r176478%_))
                                            (_%E176519176531%_))
                                        (_%E176519176531%_)))))
                              (_%E176519176531%_)))))
                    (_%E176519176531%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E176518176555%_))))))
                                    (_%E176488176502%_))))
                             (_%E176480176591%_
                              (lambda ()
                                (if (gx#stx-pair? _%e176479176494%_)
                                    (let ((_%e176482176563%_
                                           (gx#syntax-e _%e176479176494%_)))
                                      (let ((_%hd176483176566%_
                                             (##car _%e176482176563%_))
                                            (_%tl176484176568%_
                                             (##cdr _%e176482176563%_)))
                                        (if (eq? (gx#stx-e _%hd176483176566%_)
                                                 'namespace:)
                                            (if (gx#stx-pair?
                                                 _%tl176484176568%_)
                                                (let ((_%e176485176571%_
                                                       (gx#syntax-e
                                                        _%tl176484176568%_)))
                                                  (let ((_%hd176486176574%_
                                                         (##car _%e176485176571%_))
                                                        (_%tl176487176576%_
                                                         (##cdr _%e176485176571%_)))
                                                    (let* ((_%ns176579%_
                                                            _%hd176486176574%_)
                                                           (_%rest176581%_
                                                            _%tl176487176576%_)
                                                           (_%ns176589%_
                                                            (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%ns176579%_)
                        (symbol->string (gx#stx-e _%ns176579%_))
                        (if (or (gx#stx-string? _%ns176579%_)
                                (gx#stx-false? _%ns176579%_))
                            (gx#stx-e _%ns176579%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; extern expects namespace identifier"
                             _%stx176440%_
                             _%ns176579%_)))))
              (_%lp176474%_ _%rest176581%_ _%ns176589%_ _%r176478%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E176481176559%_))
                                            (_%E176481176559%_))))
                                    (_%E176481176559%_)))))
                        (_%E176480176591%_))))))
          (let* ((_%e176443176450%_ _%stx176440%_)
                 (_%E176445176454%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e176443176450%_)))
                 (_%E176444176468%_
                  (lambda ()
                    (if (gx#stx-pair? _%e176443176450%_)
                        (let ((_%e176446176458%_
                               (gx#syntax-e _%e176443176450%_)))
                          (let ((_%hd176447176461%_ (##car _%e176446176458%_))
                                (_%tl176448176463%_ (##cdr _%e176446176458%_)))
                            (let ((_%body176466%_ _%tl176448176463%_))
                              (if (gx#stx-list? _%body176466%_)
                                  (gx#core-cons
                                   '%#extern
                                   (_%generate176442%_ _%body176466%_))
                                  (_%E176445176454%_)))))
                        (_%E176445176454%_)))))
            (_%E176444176468%_)))))
    (define gx#macro-expand-lambda%
      (lambda (_%stx176397%_)
        (let* ((_%e176398176408%_ _%stx176397%_)
               (_%E176400176412%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e176398176408%_)))
               (_%E176399176436%_
                (lambda ()
                  (if (gx#stx-pair? _%e176398176408%_)
                      (let ((_%e176401176416%_
                             (gx#syntax-e _%e176398176408%_)))
                        (let ((_%hd176402176419%_ (##car _%e176401176416%_))
                              (_%tl176403176421%_ (##cdr _%e176401176416%_)))
                          (if (gx#stx-pair? _%tl176403176421%_)
                              (let ((_%e176404176424%_
                                     (gx#syntax-e _%tl176403176421%_)))
                                (let ((_%hd176405176427%_
                                       (##car _%e176404176424%_))
                                      (_%tl176406176429%_
                                       (##cdr _%e176404176424%_)))
                                  (let* ((_%hd176432%_ _%hd176405176427%_)
                                         (_%body176434%_ _%tl176406176429%_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _%hd176432%_)
                                             (gx#stx-list? _%body176434%_)
                                             (not (gx#stx-null?
                                                   _%body176434%_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1 identity _%hd176432%_)
                                         _%body176434%_)
                                        (_%E176400176412%_)))))
                              (_%E176400176412%_))))
                      (_%E176400176412%_)))))
          (_%E176399176436%_))))
    (define gx#macro-expand-case-lambda
      (lambda (_%stx176333%_)
        (letrec ((_%generate176335%_
                  (lambda (_%clause176365%_)
                    (let* ((_%e176366176373%_ _%clause176365%_)
                           (_%E176368176377%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _%stx176333%_
                               _%clause176365%_)))
                           (_%E176367176393%_
                            (lambda ()
                              (if (gx#stx-pair? _%e176366176373%_)
                                  (let ((_%e176369176381%_
                                         (gx#syntax-e _%e176366176373%_)))
                                    (let ((_%hd176370176384%_
                                           (##car _%e176369176381%_))
                                          (_%tl176371176386%_
                                           (##cdr _%e176369176381%_)))
                                      (let* ((_%hd176389%_ _%hd176370176384%_)
                                             (_%body176391%_
                                              _%tl176371176386%_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _%hd176389%_)
                                                 (gx#stx-list? _%body176391%_)
                                                 (not (gx#stx-null?
                                                       _%body176391%_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    identity
                                                    _%hd176389%_)
                                                   _%body176391%_)
                                             (gx#stx-source _%clause176365%_))
                                            (_%E176368176377%_)))))
                                  (_%E176368176377%_)))))
                      (_%E176367176393%_)))))
          (let* ((_%e176336176343%_ _%stx176333%_)
                 (_%E176338176347%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e176336176343%_)))
                 (_%E176337176361%_
                  (lambda ()
                    (if (gx#stx-pair? _%e176336176343%_)
                        (let ((_%e176339176351%_
                               (gx#syntax-e _%e176336176343%_)))
                          (let ((_%hd176340176354%_ (##car _%e176339176351%_))
                                (_%tl176341176356%_ (##cdr _%e176339176351%_)))
                            (let ((_%clauses176359%_ _%tl176341176356%_))
                              (if (gx#stx-list? _%clauses176359%_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _%generate176335%_
                                    _%clauses176359%_))
                                  (_%E176338176347%_)))))
                        (_%E176338176347%_)))))
            (_%E176337176361%_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_%stx176234%_ _%form176235%_)
        (letrec ((_%generate176237%_
                  (lambda (_%bind176280%_)
                    (let* ((_%e176281176291%_ _%bind176280%_)
                           (_%E176283176295%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _%stx176234%_
                               _%bind176280%_)))
                           (_%E176282176319%_
                            (lambda ()
                              (if (gx#stx-pair? _%e176281176291%_)
                                  (let ((_%e176284176299%_
                                         (gx#syntax-e _%e176281176291%_)))
                                    (let ((_%hd176285176302%_
                                           (##car _%e176284176299%_))
                                          (_%tl176286176304%_
                                           (##cdr _%e176284176299%_)))
                                      (let ((_%ids176307%_ _%hd176285176302%_))
                                        (if (gx#stx-pair? _%tl176286176304%_)
                                            (let ((_%e176287176309%_
                                                   (gx#syntax-e
                                                    _%tl176286176304%_)))
                                              (let ((_%hd176288176312%_
                                                     (##car _%e176287176309%_))
                                                    (_%tl176289176314%_
                                                     (##cdr _%e176287176309%_)))
                                                (let ((_%expr176317%_
                                                       _%hd176288176312%_))
                                                  (if (gx#stx-null?
                                                       _%tl176289176314%_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _%ids176307%_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         identity
                         _%ids176307%_)
                        (cons _%expr176317%_ '()))
                  (_%E176283176295%_))
              (_%E176283176295%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E176283176295%_)))))
                                  (_%E176283176295%_)))))
                      (_%E176282176319%_)))))
          (let* ((_%e176238176248%_ _%stx176234%_)
                 (_%E176240176252%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e176238176248%_)))
                 (_%E176239176276%_
                  (lambda ()
                    (if (gx#stx-pair? _%e176238176248%_)
                        (let ((_%e176241176256%_
                               (gx#syntax-e _%e176238176248%_)))
                          (let ((_%hd176242176259%_ (##car _%e176241176256%_))
                                (_%tl176243176261%_ (##cdr _%e176241176256%_)))
                            (if (gx#stx-pair? _%tl176243176261%_)
                                (let ((_%e176244176264%_
                                       (gx#syntax-e _%tl176243176261%_)))
                                  (let ((_%hd176245176267%_
                                         (##car _%e176244176264%_))
                                        (_%tl176246176269%_
                                         (##cdr _%e176244176264%_)))
                                    (let* ((_%hd176272%_ _%hd176245176267%_)
                                           (_%body176274%_ _%tl176246176269%_))
                                      (if (and (gx#stx-list? _%hd176272%_)
                                               (gx#stx-list? _%body176274%_)
                                               (not (gx#stx-null?
                                                     _%body176274%_)))
                                          (gx#core-cons*
                                           _%form176235%_
                                           (gx#stx-map1
                                            _%generate176237%_
                                            _%hd176272%_)
                                           _%body176274%_)
                                          (_%E176240176252%_)))))
                                (_%E176240176252%_))))
                        (_%E176240176252%_)))))
            (_%E176239176276%_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_%stx176326%_)
        (let ((_%form176328%_ '%#let-values))
          (gx#macro-expand-let-values__% _%stx176326%_ _%form176328%_))))
    (define gx#macro-expand-let-values
      (lambda _g178870_
        (let ((_g178871_ (##length _g178870_)))
          (cond ((##fx= _g178871_ 1)
                 (apply gx#macro-expand-let-values__0 _g178870_))
                ((##fx= _g178871_ 2)
                 (apply gx#macro-expand-let-values__% _g178870_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g178870_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_%stx176231%_)
        (gx#macro-expand-let-values__% _%stx176231%_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_%stx176229%_)
        (gx#macro-expand-let-values__% _%stx176229%_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_%stx176120%_)
        (let* ((_%e176121176147%_ _%stx176120%_)
               (_%E176133176151%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e176121176147%_)))
               (_%E176123176193%_
                (lambda ()
                  (if (gx#stx-pair? _%e176121176147%_)
                      (let ((_%e176134176155%_
                             (gx#syntax-e _%e176121176147%_)))
                        (let ((_%hd176135176158%_ (##car _%e176134176155%_))
                              (_%tl176136176160%_ (##cdr _%e176134176155%_)))
                          (if (gx#stx-pair? _%tl176136176160%_)
                              (let ((_%e176137176163%_
                                     (gx#syntax-e _%tl176136176160%_)))
                                (let ((_%hd176138176166%_
                                       (##car _%e176137176163%_))
                                      (_%tl176139176168%_
                                       (##cdr _%e176137176163%_)))
                                  (let ((_%test176171%_ _%hd176138176166%_))
                                    (if (gx#stx-pair? _%tl176139176168%_)
                                        (let ((_%e176140176173%_
                                               (gx#syntax-e
                                                _%tl176139176168%_)))
                                          (let ((_%hd176141176176%_
                                                 (##car _%e176140176173%_))
                                                (_%tl176142176178%_
                                                 (##cdr _%e176140176173%_)))
                                            (let ((_%K176181%_
                                                   _%hd176141176176%_))
                                              (if (gx#stx-pair?
                                                   _%tl176142176178%_)
                                                  (let ((_%e176143176183%_
                                                         (gx#syntax-e
                                                          _%tl176142176178%_)))
                                                    (let ((_%hd176144176186%_
                                                           (##car _%e176143176183%_))
                                                          (_%tl176145176188%_
                                                           (##cdr _%e176143176183%_)))
                                                      (let ((_%E176191%_
                                                             _%hd176144176186%_))
                                                        (if (gx#stx-null?
                                                             _%tl176145176188%_)
                                                            (gx#core-list
                                                             '%#if
                                                             _%test176171%_
                                                             _%K176181%_
                                                             _%E176191%_)
                                                            (_%E176133176151%_)))))
                                                  (_%E176133176151%_)))))
                                        (_%E176133176151%_)))))
                              (_%E176133176151%_))))
                      (_%E176133176151%_))))
               (_%E176122176225%_
                (lambda ()
                  (if (gx#stx-pair? _%e176121176147%_)
                      (let ((_%e176124176197%_
                             (gx#syntax-e _%e176121176147%_)))
                        (let ((_%hd176125176200%_ (##car _%e176124176197%_))
                              (_%tl176126176202%_ (##cdr _%e176124176197%_)))
                          (if (gx#stx-pair? _%tl176126176202%_)
                              (let ((_%e176127176205%_
                                     (gx#syntax-e _%tl176126176202%_)))
                                (let ((_%hd176128176208%_
                                       (##car _%e176127176205%_))
                                      (_%tl176129176210%_
                                       (##cdr _%e176127176205%_)))
                                  (let ((_%test176213%_ _%hd176128176208%_))
                                    (if (gx#stx-pair? _%tl176129176210%_)
                                        (let ((_%e176130176215%_
                                               (gx#syntax-e
                                                _%tl176129176210%_)))
                                          (let ((_%hd176131176218%_
                                                 (##car _%e176130176215%_))
                                                (_%tl176132176220%_
                                                 (##cdr _%e176130176215%_)))
                                            (let ((_%K176223%_
                                                   _%hd176131176218%_))
                                              (if (gx#stx-null?
                                                   _%tl176132176220%_)
                                                  (gx#core-list
                                                   '%#if
                                                   _%test176213%_
                                                   _%K176223%_
                                                   '#!void)
                                                  (_%E176123176193%_)))))
                                        (_%E176123176193%_)))))
                              (_%E176123176193%_))))
                      (_%E176123176193%_)))))
          (_%E176122176225%_))))
    (define gx#free-identifier=?
      (lambda (_%xid176105%_ _%yid176106%_)
        (let ((_%xe176108%_ (gx#resolve-identifier__0 _%xid176105%_))
              (_%ye176109%_ (gx#resolve-identifier__0 _%yid176106%_)))
          (if (and _%xe176108%_ _%ye176109%_)
              (let ((_%$e176112%_ (eq? _%xe176108%_ _%ye176109%_)))
                (if _%$e176112%_
                    _%$e176112%_
                    (if (##structure-instance-of? _%xe176108%_ 'gx#binding::t)
                        (if (##structure-instance-of?
                             _%ye176109%_
                             'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _%xe176108%_
                                  '1
                                  '#f
                                  '#f)
                                 (##unchecked-structure-ref
                                  _%ye176109%_
                                  '1
                                  '#f
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _%xe176108%_ _%ye176109%_)
                  '#f
                  (gx#stx-eq? _%xid176105%_ _%yid176106%_))))))
    (define gx#bound-identifier=?
      (lambda (_%xid176086%_ _%yid176087%_)
        (letrec ((_%context176089%_
                  (lambda (_%e176103%_)
                    (if (##structure-direct-instance-of?
                         _%e176103%_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref _%e176103%_ '3 '#f '#f)
                        (gx#current-expander-context))))
                 (_%marks176090%_
                  (lambda (_%e176098%_)
                    (if (symbol? _%e176098%_)
                        '()
                        (if (##structure-direct-instance-of?
                             _%e176098%_
                             'gx#identifier-wrap::t)
                            (##unchecked-structure-ref _%e176098%_ '3 '#f '#f)
                            (##unchecked-structure-ref
                             _%e176098%_
                             '4
                             '#f
                             '#f)))))
                 (_%unwrap176091%_
                  (lambda (_%e176096%_)
                    (if (symbol? _%e176096%_)
                        _%e176096%_
                        (gx#syntax-local-unwrap _%e176096%_)))))
          (let ((_%x176093%_ (_%unwrap176091%_ _%xid176086%_))
                (_%y176094%_ (_%unwrap176091%_ _%yid176087%_)))
            (if (gx#stx-eq? _%x176093%_ _%y176094%_)
                (if (eq? (_%context176089%_ _%x176093%_)
                         (_%context176089%_ _%y176094%_))
                    (equal? (_%marks176090%_ _%x176093%_)
                            (_%marks176090%_ _%y176094%_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_%stx176084%_)
        (if (gx#identifier? _%stx176084%_)
            (gx#core-identifier=? _%stx176084%_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_%stx176082%_)
        (if (gx#identifier? _%stx176082%_)
            (gx#core-identifier=? _%stx176082%_ '...)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_%stx176025%_ _%where176026%_)
        (let _%lp176028%_ ((_%rest176030%_ (gx#syntax->list _%stx176025%_)))
          (let* ((_%rest176031176039%_ _%rest176030%_)
                 (_%else176033176047%_ (lambda () '#t))
                 (_%K176035176060%_
                  (lambda (_%rest176050%_ _%hd176051%_)
                    (if (gx#identifier? _%hd176051%_)
                        (if (__find (lambda (_%g176053176055%_)
                                      (gx#bound-identifier=?
                                       _%g176053176055%_
                                       _%hd176051%_))
                                    _%rest176050%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _%where176026%_
                             _%hd176051%_)
                            (_%lp176028%_ _%rest176050%_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _%where176026%_
                         _%hd176051%_)))))
            (if (pair? _%rest176031176039%_)
                (let ((_%hd176036176063%_ (##car _%rest176031176039%_))
                      (_%tl176037176065%_ (##cdr _%rest176031176039%_)))
                  (let* ((_%hd176068%_ _%hd176036176063%_)
                         (_%rest176070%_ _%tl176037176065%_))
                    (_%K176035176060%_ _%rest176070%_ _%hd176068%_)))
                (_%else176033176047%_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_%stx176075%_)
        (let ((_%where176077%_ _%stx176075%_))
          (gx#check-duplicate-identifiers__% _%stx176075%_ _%where176077%_))))
    (define gx#check-duplicate-identifiers
      (lambda _g178872_
        (let ((_g178873_ (##length _g178872_)))
          (cond ((##fx= _g178873_ 1)
                 (apply gx#check-duplicate-identifiers__0 _g178872_))
                ((##fx= _g178873_ 2)
                 (apply gx#check-duplicate-identifiers__% _g178872_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g178872_))))))
    (define gx#core-bind-values?
      (lambda (_%stx176017%_)
        (gx#stx-andmap
         (lambda (_%x176019%_)
           (let ((_%$e176021%_ (gx#identifier? _%x176019%_)))
             (if _%$e176021%_ _%$e176021%_ (gx#stx-false? _%x176019%_))))
         _%stx176017%_)))
    (define gx#core-bind-values!__%
      (lambda (_%stx175981%_ _%rebind?175982%_ _%phi175983%_ _%ctx175984%_)
        (gx#stx-for-each1
         (lambda (_%id175986%_)
           (if (gx#identifier? _%id175986%_)
               (gx#core-bind-runtime!__%
                _%id175986%_
                _%rebind?175982%_
                _%phi175983%_
                _%ctx175984%_)
               '#!void))
         _%stx175981%_)))
    (define gx#core-bind-values!__0
      (lambda (_%stx175991%_)
        (let* ((_%rebind?175993%_ '#f)
               (_%phi175995%_ (gx#current-expander-phi))
               (_%ctx175997%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx175991%_
           _%rebind?175993%_
           _%phi175995%_
           _%ctx175997%_))))
    (define gx#core-bind-values!__1
      (lambda (_%stx175999%_ _%rebind?176000%_)
        (let* ((_%phi176002%_ (gx#current-expander-phi))
               (_%ctx176004%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx175999%_
           _%rebind?176000%_
           _%phi176002%_
           _%ctx176004%_))))
    (define gx#core-bind-values!__2
      (lambda (_%stx176006%_ _%rebind?176007%_ _%phi176008%_)
        (let ((_%ctx176010%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx176006%_
           _%rebind?176007%_
           _%phi176008%_
           _%ctx176010%_))))
    (define gx#core-bind-values!
      (lambda _g178874_
        (let ((_g178875_ (##length _g178874_)))
          (cond ((##fx= _g178875_ 1) (apply gx#core-bind-values!__0 _g178874_))
                ((##fx= _g178875_ 2) (apply gx#core-bind-values!__1 _g178874_))
                ((##fx= _g178875_ 3) (apply gx#core-bind-values!__2 _g178874_))
                ((##fx= _g178875_ 4) (apply gx#core-bind-values!__% _g178874_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g178874_))))))
    (define gx#core-quote-bind-values
      (lambda (_%stx175976%_)
        (gx#stx-map1
         (lambda (_%x175978%_)
           (if (gx#identifier? _%x175978%_)
               (gx#core-quote-syntax__0 _%x175978%_)
               '#f))
         _%stx175976%_)))
    (define gx#core-runtime-ref?
      (lambda (_%stx175969%_)
        (if (gx#identifier? _%stx175969%_)
            (let* ((_%bind175971%_ (gx#resolve-identifier__0 _%stx175969%_))
                   (_%$e175973%_ (not _%bind175971%_)))
              (if _%$e175973%_
                  _%$e175973%_
                  (##structure-instance-of?
                   _%bind175971%_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_%id175958%_ _%form175959%_)
        (let ((_%bind175961%_ (gx#resolve-identifier__0 _%id175958%_)))
          (if (##structure-instance-of? _%bind175961%_ 'gx#runtime-binding::t)
              (gx#core-quote-syntax__0 _%id175958%_)
              (if (not _%bind175961%_)
                  (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                          (gx#core-extern-symbol? (gx#stx-e _%id175958%_)))
                      (gx#core-quote-syntax__0 _%id175958%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Reference to unbound identifier"
                       _%form175959%_
                       _%id175958%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; not a runtime binding"
                   _%form175959%_
                   _%id175958%_))))))
    (define gx#core-bind-runtime!__%
      (lambda (_%id175913%_ _%rebind?175914%_ _%phi175915%_ _%ctx175916%_)
        (let* ((_%key175918%_ (gx#core-identifier-key _%id175913%_))
               (_%eid175920%_
                (gx#make-binding-id__%
                 _%key175918%_
                 '#f
                 _%phi175915%_
                 _%ctx175916%_))
               (_%bind175926%_
                (if (##structure-instance-of?
                     _%ctx175916%_
                     'gx#module-context::t)
                    (let ((__obj178851
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
                       __obj178851
                       _%eid175920%_
                       _%key175918%_
                       _%phi175915%_
                       _%ctx175916%_)
                      __obj178851)
                    (if (##structure-instance-of?
                         _%ctx175916%_
                         'gx#top-context::t)
                        (let ((__obj178850
                               (##structure
                                gx#top-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#top-binding:::init!
                           __obj178850
                           _%eid175920%_
                           _%key175918%_
                           _%phi175915%_)
                          __obj178850)
                        (if (##structure-instance-of?
                             _%ctx175916%_
                             'gx#local-context::t)
                            (let ((__obj178849
                                   (##structure
                                    gx#local-binding::t
                                    '#f
                                    '#f
                                    '#f
                                    '#f
                                    '#f
                                    '#f)))
                              (gx#local-binding:::init!
                               __obj178849
                               _%eid175920%_
                               _%key175918%_
                               _%phi175915%_)
                              __obj178849)
                            (let ((__obj178848
                                   (##structure
                                    gx#runtime-binding::t
                                    '#f
                                    '#f
                                    '#f
                                    '#f
                                    '#f
                                    '#f)))
                              (gx#runtime-binding:::init!
                               __obj178848
                               _%eid175920%_
                               _%key175918%_
                               _%phi175915%_)
                              __obj178848))))))
          (gx#bind-identifier!__%
           _%id175913%_
           _%bind175926%_
           _%rebind?175914%_
           _%phi175915%_
           _%ctx175916%_))))
    (define gx#core-bind-runtime!__0
      (lambda (_%id175932%_)
        (let* ((_%rebind?175934%_ '#f)
               (_%phi175936%_ (gx#current-expander-phi))
               (_%ctx175938%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id175932%_
           _%rebind?175934%_
           _%phi175936%_
           _%ctx175938%_))))
    (define gx#core-bind-runtime!__1
      (lambda (_%id175940%_ _%rebind?175941%_)
        (let* ((_%phi175943%_ (gx#current-expander-phi))
               (_%ctx175945%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id175940%_
           _%rebind?175941%_
           _%phi175943%_
           _%ctx175945%_))))
    (define gx#core-bind-runtime!__2
      (lambda (_%id175947%_ _%rebind?175948%_ _%phi175949%_)
        (let ((_%ctx175951%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id175947%_
           _%rebind?175948%_
           _%phi175949%_
           _%ctx175951%_))))
    (define gx#core-bind-runtime!
      (lambda _g178876_
        (let ((_g178877_ (##length _g178876_)))
          (cond ((##fx= _g178877_ 1)
                 (apply gx#core-bind-runtime!__0 _g178876_))
                ((##fx= _g178877_ 2)
                 (apply gx#core-bind-runtime!__1 _g178876_))
                ((##fx= _g178877_ 3)
                 (apply gx#core-bind-runtime!__2 _g178876_))
                ((##fx= _g178877_ 4)
                 (apply gx#core-bind-runtime!__% _g178876_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g178876_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_%id175865%_
               _%eid175866%_
               _%rebind?175867%_
               _%phi175868%_
               _%ctx175869%_)
        (let* ((_%key175871%_ (gx#core-identifier-key _%id175865%_))
               (_%bind175876%_
                (if (##structure-instance-of?
                     _%ctx175869%_
                     'gx#module-context::t)
                    (let ((__obj178854
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
                       __obj178854
                       _%eid175866%_
                       _%key175871%_
                       _%phi175868%_
                       _%ctx175869%_)
                      __obj178854)
                    (if (##structure-instance-of?
                         _%ctx175869%_
                         'gx#top-context::t)
                        (let ((__obj178853
                               (##structure
                                gx#top-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#top-binding:::init!
                           __obj178853
                           _%eid175866%_
                           _%key175871%_
                           _%phi175868%_)
                          __obj178853)
                        (let ((__obj178852
                               (##structure
                                gx#runtime-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#runtime-binding:::init!
                           __obj178852
                           _%eid175866%_
                           _%key175871%_
                           _%phi175868%_)
                          __obj178852)))))
          (gx#bind-identifier!__%
           _%id175865%_
           _%bind175876%_
           _%rebind?175867%_
           _%phi175868%_
           _%ctx175869%_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_%id175882%_ _%eid175883%_)
        (let* ((_%rebind?175885%_ '#f)
               (_%phi175887%_ (gx#current-expander-phi))
               (_%ctx175889%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id175882%_
           _%eid175883%_
           _%rebind?175885%_
           _%phi175887%_
           _%ctx175889%_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_%id175891%_ _%eid175892%_ _%rebind?175893%_)
        (let* ((_%phi175895%_ (gx#current-expander-phi))
               (_%ctx175897%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id175891%_
           _%eid175892%_
           _%rebind?175893%_
           _%phi175895%_
           _%ctx175897%_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_%id175899%_ _%eid175900%_ _%rebind?175901%_ _%phi175902%_)
        (let ((_%ctx175904%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id175899%_
           _%eid175900%_
           _%rebind?175901%_
           _%phi175902%_
           _%ctx175904%_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g178878_
        (let ((_g178879_ (##length _g178878_)))
          (cond ((##fx= _g178879_ 2)
                 (apply gx#core-bind-runtime-reference!__0 _g178878_))
                ((##fx= _g178879_ 3)
                 (apply gx#core-bind-runtime-reference!__1 _g178878_))
                ((##fx= _g178879_ 4)
                 (apply gx#core-bind-runtime-reference!__2 _g178878_))
                ((##fx= _g178879_ 5)
                 (apply gx#core-bind-runtime-reference!__% _g178878_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g178878_))))))
    (define gx#core-bind-extern!__%
      (lambda (_%id175825%_
               _%eid175826%_
               _%rebind?175827%_
               _%phi175828%_
               _%ctx175829%_)
        (gx#bind-identifier!__%
         _%id175825%_
         (let ((__obj178855
                (##structure gx#extern-binding::t '#f '#f '#f '#f '#f '#f)))
           (gx#extern-binding:::init!
            __obj178855
            _%eid175826%_
            (gx#core-identifier-key _%id175825%_)
            _%phi175828%_)
           __obj178855)
         _%rebind?175827%_
         _%phi175828%_
         _%ctx175829%_)))
    (define gx#core-bind-extern!__0
      (lambda (_%id175834%_ _%eid175835%_)
        (let* ((_%rebind?175837%_ '#f)
               (_%phi175839%_ (gx#current-expander-phi))
               (_%ctx175841%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id175834%_
           _%eid175835%_
           _%rebind?175837%_
           _%phi175839%_
           _%ctx175841%_))))
    (define gx#core-bind-extern!__1
      (lambda (_%id175843%_ _%eid175844%_ _%rebind?175845%_)
        (let* ((_%phi175847%_ (gx#current-expander-phi))
               (_%ctx175849%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id175843%_
           _%eid175844%_
           _%rebind?175845%_
           _%phi175847%_
           _%ctx175849%_))))
    (define gx#core-bind-extern!__2
      (lambda (_%id175851%_ _%eid175852%_ _%rebind?175853%_ _%phi175854%_)
        (let ((_%ctx175856%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id175851%_
           _%eid175852%_
           _%rebind?175853%_
           _%phi175854%_
           _%ctx175856%_))))
    (define gx#core-bind-extern!
      (lambda _g178880_
        (let ((_g178881_ (##length _g178880_)))
          (cond ((##fx= _g178881_ 2) (apply gx#core-bind-extern!__0 _g178880_))
                ((##fx= _g178881_ 3) (apply gx#core-bind-extern!__1 _g178880_))
                ((##fx= _g178881_ 4) (apply gx#core-bind-extern!__2 _g178880_))
                ((##fx= _g178881_ 5) (apply gx#core-bind-extern!__% _g178880_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g178880_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_%id175779%_
               _%e175780%_
               _%rebind?175781%_
               _%phi175782%_
               _%ctx175783%_)
        (gx#bind-identifier!__%
         _%id175779%_
         (let ((_%key175788%_ (gx#core-identifier-key _%id175779%_))
               (_%e175789%_
                (if (or (##structure-instance-of? _%e175780%_ 'gx#expander::t)
                        (##structure-instance-of?
                         _%e175780%_
                         'gx#expander-context::t))
                    _%e175780%_
                    (##structure
                     gx#user-expander::t
                     _%e175780%_
                     _%ctx175783%_
                     _%phi175782%_))))
           (let ((__obj178856
                  (##structure gx#syntax-binding::t '#f '#f '#f '#f '#f)))
             (gx#syntax-binding:::init!
              __obj178856
              (gx#make-binding-id__%
               _%key175788%_
               '#t
               _%phi175782%_
               _%ctx175783%_)
              _%key175788%_
              _%phi175782%_
              _%e175789%_)
             __obj178856))
         _%rebind?175781%_
         _%phi175782%_
         _%ctx175783%_)))
    (define gx#core-bind-syntax!__0
      (lambda (_%id175794%_ _%e175795%_)
        (let* ((_%rebind?175797%_ '#f)
               (_%phi175799%_ (gx#current-expander-phi))
               (_%ctx175801%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id175794%_
           _%e175795%_
           _%rebind?175797%_
           _%phi175799%_
           _%ctx175801%_))))
    (define gx#core-bind-syntax!__1
      (lambda (_%id175803%_ _%e175804%_ _%rebind?175805%_)
        (let* ((_%phi175807%_ (gx#current-expander-phi))
               (_%ctx175809%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id175803%_
           _%e175804%_
           _%rebind?175805%_
           _%phi175807%_
           _%ctx175809%_))))
    (define gx#core-bind-syntax!__2
      (lambda (_%id175811%_ _%e175812%_ _%rebind?175813%_ _%phi175814%_)
        (let ((_%ctx175816%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id175811%_
           _%e175812%_
           _%rebind?175813%_
           _%phi175814%_
           _%ctx175816%_))))
    (define gx#core-bind-syntax!
      (lambda _g178882_
        (let ((_g178883_ (##length _g178882_)))
          (cond ((##fx= _g178883_ 2) (apply gx#core-bind-syntax!__0 _g178882_))
                ((##fx= _g178883_ 3) (apply gx#core-bind-syntax!__1 _g178882_))
                ((##fx= _g178883_ 4) (apply gx#core-bind-syntax!__2 _g178882_))
                ((##fx= _g178883_ 5) (apply gx#core-bind-syntax!__% _g178882_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g178882_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_%id175762%_ _%e175763%_ _%rebind?175764%_)
        (gx#core-bind-syntax!__%
         _%id175762%_
         _%e175763%_
         _%rebind?175764%_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_%id175769%_ _%e175770%_)
        (let ((_%rebind?175772%_ '#f))
          (gx#core-bind-root-syntax!__%
           _%id175769%_
           _%e175770%_
           _%rebind?175772%_))))
    (define gx#core-bind-root-syntax!
      (lambda _g178884_
        (let ((_g178885_ (##length _g178884_)))
          (cond ((##fx= _g178885_ 2)
                 (apply gx#core-bind-root-syntax!__0 _g178884_))
                ((##fx= _g178885_ 3)
                 (apply gx#core-bind-root-syntax!__% _g178884_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g178884_))))))
    (define gx#core-bind-alias!__%
      (lambda (_%id175720%_
               _%alias-id175721%_
               _%rebind?175722%_
               _%phi175723%_
               _%ctx175724%_)
        (gx#bind-identifier!__%
         _%id175720%_
         (let* ((_%key175726%_ (gx#core-identifier-key _%id175720%_))
                (__obj178857
                 (##structure gx#alias-binding::t '#f '#f '#f '#f '#f)))
           (gx#alias-binding:::init!
            __obj178857
            (gx#make-binding-id__%
             _%key175726%_
             '#t
             _%phi175723%_
             _%ctx175724%_)
            _%key175726%_
            _%phi175723%_
            _%alias-id175721%_)
           __obj178857)
         _%rebind?175722%_
         _%phi175723%_
         _%ctx175724%_)))
    (define gx#core-bind-alias!__0
      (lambda (_%id175731%_ _%alias-id175732%_)
        (let* ((_%rebind?175734%_ '#f)
               (_%phi175736%_ (gx#current-expander-phi))
               (_%ctx175738%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id175731%_
           _%alias-id175732%_
           _%rebind?175734%_
           _%phi175736%_
           _%ctx175738%_))))
    (define gx#core-bind-alias!__1
      (lambda (_%id175740%_ _%alias-id175741%_ _%rebind?175742%_)
        (let* ((_%phi175744%_ (gx#current-expander-phi))
               (_%ctx175746%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id175740%_
           _%alias-id175741%_
           _%rebind?175742%_
           _%phi175744%_
           _%ctx175746%_))))
    (define gx#core-bind-alias!__2
      (lambda (_%id175748%_ _%alias-id175749%_ _%rebind?175750%_ _%phi175751%_)
        (let ((_%ctx175753%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id175748%_
           _%alias-id175749%_
           _%rebind?175750%_
           _%phi175751%_
           _%ctx175753%_))))
    (define gx#core-bind-alias!
      (lambda _g178886_
        (let ((_g178887_ (##length _g178886_)))
          (cond ((##fx= _g178887_ 2) (apply gx#core-bind-alias!__0 _g178886_))
                ((##fx= _g178887_ 3) (apply gx#core-bind-alias!__1 _g178886_))
                ((##fx= _g178887_ 4) (apply gx#core-bind-alias!__2 _g178886_))
                ((##fx= _g178887_ 5) (apply gx#core-bind-alias!__% _g178886_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g178886_))))))
    (define gx#make-binding-id__%
      (lambda (_%key175670%_ _%syntax?175671%_ _%phi175672%_ _%ctx175673%_)
        (if (uninterned-symbol? _%key175670%_)
            (##gensym 'L)
            (if (pair? _%key175670%_)
                (gensym (##car _%key175670%_))
                (if (##structure-instance-of? _%ctx175673%_ 'gx#top-context::t)
                    (let ((_%ns175678%_
                           (gx#core-context-namespace__% _%ctx175673%_)))
                      (if (and (fxzero? _%phi175672%_) (not _%syntax?175671%_))
                          (if _%ns175678%_
                              (make-symbol__1 _%ns175678%_ '"#" _%key175670%_)
                              _%key175670%_)
                          (if _%syntax?175671%_
                              (make-symbol__1
                               (let ((_%$e175682%_ _%ns175678%_))
                                 (if _%$e175682%_ _%$e175682%_ '""))
                               '"[:"
                               (number->string _%phi175672%_)
                               '":]#"
                               _%key175670%_)
                              (make-symbol__1
                               (let ((_%$e175686%_ _%ns175678%_))
                                 (if _%$e175686%_ _%$e175686%_ '""))
                               '"["
                               (number->string _%phi175672%_)
                               '"]#"
                               _%key175670%_))))
                    (gensym _%key175670%_))))))
    (define gx#make-binding-id__0
      (lambda (_%key175693%_)
        (let* ((_%syntax?175695%_ '#f)
               (_%phi175697%_ (gx#current-expander-phi))
               (_%ctx175699%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key175693%_
           _%syntax?175695%_
           _%phi175697%_
           _%ctx175699%_))))
    (define gx#make-binding-id__1
      (lambda (_%key175701%_ _%syntax?175702%_)
        (let* ((_%phi175704%_ (gx#current-expander-phi))
               (_%ctx175706%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key175701%_
           _%syntax?175702%_
           _%phi175704%_
           _%ctx175706%_))))
    (define gx#make-binding-id__2
      (lambda (_%key175708%_ _%syntax?175709%_ _%phi175710%_)
        (let ((_%ctx175712%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key175708%_
           _%syntax?175709%_
           _%phi175710%_
           _%ctx175712%_))))
    (define gx#make-binding-id
      (lambda _g178888_
        (let ((_g178889_ (##length _g178888_)))
          (cond ((##fx= _g178889_ 1) (apply gx#make-binding-id__0 _g178888_))
                ((##fx= _g178889_ 2) (apply gx#make-binding-id__1 _g178888_))
                ((##fx= _g178889_ 3) (apply gx#make-binding-id__2 _g178888_))
                ((##fx= _g178889_ 4) (apply gx#make-binding-id__% _g178888_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g178888_))))))))
