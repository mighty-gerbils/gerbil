(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1770405374)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_%stx183772%_)
        (let* ((_%e183773183780%_ _%stx183772%_)
               (_%E183775183784%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e183773183780%_)))
               (_%E183774183798%_
                (lambda ()
                  (if (gx#stx-pair? _%e183773183780%_)
                      (let ((_%e183776183788%_
                             (gx#syntax-e _%e183773183780%_)))
                        (let ((_%hd183777183791%_ (##car _%e183776183788%_))
                              (_%tl183778183793%_ (##cdr _%e183776183788%_)))
                          (let* ((_%form183796%_ _%hd183777183791%_)
                                 (__self183801
                                  (gx#syntax-local-e__0 _%form183796%_))
                                 (__method183802
                                  (__method-ref
                                   __self183801
                                   'compile-top-syntax)))
                            (if __method183802
                                (__method183802 __self183801 _%stx183772%_)
                                (begin
                                  (error '"Missing method"
                                         __self183801
                                         'compile-top-syntax)
                                  '#!void)))))
                      (_%E183775183784%_)))))
          (_%E183774183798%_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_%self183721%_ _%stx183722%_)
        (let* ((_%self183725%_ _%self183721%_)
               (_%self183734183742%_ _%self183725%_)
               (_%E183736183745%_
                (lambda ()
                  (error '"No clause matching"
                         _%self183734183742%_
                         '((core-expander _ _ K)))
                  '#!void))
               (_%K183737183758%_
                (lambda (_%K183748%_)
                  (let ((_%$e183750%_ (gx#stx-source _%stx183722%_)))
                    (if _%$e183750%_
                        ((lambda (_%g183752183754%_)
                           (gx#stx-wrap-source
                            (_%K183748%_ _%stx183722%_)
                            _%g183752183754%_))
                         _%$e183750%_)
                        (_%K183748%_ _%stx183722%_)))))
               (_%e183738183761%_
                (##unchecked-structure-ref _%self183734183742%_ '1 '#f '#f))
               (_%e183739183764%_
                (##unchecked-structure-ref _%self183734183742%_ '2 '#f '#f))
               (_%e183740183767%_
                (##unchecked-structure-ref _%self183734183742%_ '3 '#f '#f))
               (_%K183770%_ _%e183740183767%_))
          (_%K183737183758%_ _%K183770%_))))
    (__bind-method!__%
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_%stx183595%_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _%stx183595%_)))
    (define gx#core-compile-top-begin%
      (lambda (_%stx183565%_)
        (let* ((_%e183566183573%_ _%stx183565%_)
               (_%E183568183577%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e183566183573%_)))
               (_%E183567183591%_
                (lambda ()
                  (if (gx#stx-pair? _%e183566183573%_)
                      (let ((_%e183569183581%_
                             (gx#syntax-e _%e183566183573%_)))
                        (let ((_%hd183570183584%_ (##car _%e183569183581%_))
                              (_%tl183571183586%_ (##cdr _%e183569183581%_)))
                          (let ((_%body183589%_ _%tl183571183586%_))
                            (cons '%#begin
                                  (gx#stx-map1
                                   gx#core-compile-top-syntax
                                   _%body183589%_)))))
                      (_%E183568183577%_)))))
          (_%E183567183591%_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_%stx183534%_)
        (let* ((_%e183535183542%_ _%stx183534%_)
               (_%E183537183546%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e183535183542%_)))
               (_%E183536183561%_
                (lambda ()
                  (if (gx#stx-pair? _%e183535183542%_)
                      (let ((_%e183538183550%_
                             (gx#syntax-e _%e183535183542%_)))
                        (let ((_%hd183539183553%_ (##car _%e183538183550%_))
                              (_%tl183540183555%_ (##cdr _%e183538183550%_)))
                          (let ((_%body183558%_ _%tl183540183555%_))
                            (cons '%#begin-syntax
                                  (call-with-parameters__1
                                   (lambda ()
                                     (gx#stx-map1
                                      gx#core-compile-top-syntax
                                      _%body183558%_))
                                   gx#current-expander-phi
                                   (##fx+ (gx#current-expander-phi) '1))))))
                      (_%E183537183546%_)))))
          (_%E183536183561%_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_%stx183504%_)
        (let* ((_%e183505183512%_ _%stx183504%_)
               (_%E183507183516%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e183505183512%_)))
               (_%E183506183530%_
                (lambda ()
                  (if (gx#stx-pair? _%e183505183512%_)
                      (let ((_%e183508183520%_
                             (gx#syntax-e _%e183505183512%_)))
                        (let ((_%hd183509183523%_ (##car _%e183508183520%_))
                              (_%tl183510183525%_ (##cdr _%e183508183520%_)))
                          (let ((_%body183528%_ _%tl183510183525%_))
                            (cons '%#begin-foreign _%body183528%_))))
                      (_%E183507183516%_)))))
          (_%E183506183530%_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_%stx183450%_)
        (let* ((_%e183451183464%_ _%stx183450%_)
               (_%E183453183468%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e183451183464%_)))
               (_%E183452183500%_
                (lambda ()
                  (if (gx#stx-pair? _%e183451183464%_)
                      (let ((_%e183454183472%_
                             (gx#syntax-e _%e183451183464%_)))
                        (let ((_%hd183455183475%_ (##car _%e183454183472%_))
                              (_%tl183456183477%_ (##cdr _%e183454183472%_)))
                          (if (gx#stx-pair? _%tl183456183477%_)
                              (let ((_%e183457183480%_
                                     (gx#syntax-e _%tl183456183477%_)))
                                (let ((_%hd183458183483%_
                                       (##car _%e183457183480%_))
                                      (_%tl183459183485%_
                                       (##cdr _%e183457183480%_)))
                                  (let ((_%ann183488%_ _%hd183458183483%_))
                                    (if (gx#stx-pair? _%tl183459183485%_)
                                        (let ((_%e183460183490%_
                                               (gx#syntax-e
                                                _%tl183459183485%_)))
                                          (let ((_%hd183461183493%_
                                                 (##car _%e183460183490%_))
                                                (_%tl183462183495%_
                                                 (##cdr _%e183460183490%_)))
                                            (let ((_%expr183498%_
                                                   _%hd183461183493%_))
                                              (if (gx#stx-null?
                                                   _%tl183462183495%_)
                                                  (gx#core-compile-top-syntax
                                                   _%expr183498%_)
                                                  (_%E183453183468%_)))))
                                        (_%E183453183468%_)))))
                              (_%E183453183468%_))))
                      (_%E183453183468%_)))))
          (_%E183452183500%_))))
    (define gx#core-compile-top-import%
      (lambda (_%stx183420%_)
        (let* ((_%e183421183428%_ _%stx183420%_)
               (_%E183423183432%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e183421183428%_)))
               (_%E183422183446%_
                (lambda ()
                  (if (gx#stx-pair? _%e183421183428%_)
                      (let ((_%e183424183436%_
                             (gx#syntax-e _%e183421183428%_)))
                        (let ((_%hd183425183439%_ (##car _%e183424183436%_))
                              (_%tl183426183441%_ (##cdr _%e183424183436%_)))
                          (let ((_%body183444%_ _%tl183426183441%_))
                            (cons '%#import _%body183444%_))))
                      (_%E183423183432%_)))))
          (_%E183422183446%_))))
    (define gx#core-compile-top-module%
      (lambda (_%stx183377%_)
        (let* ((_%e183378183388%_ _%stx183377%_)
               (_%E183380183392%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e183378183388%_)))
               (_%E183379183416%_
                (lambda ()
                  (if (gx#stx-pair? _%e183378183388%_)
                      (let ((_%e183381183396%_
                             (gx#syntax-e _%e183378183388%_)))
                        (let ((_%hd183382183399%_ (##car _%e183381183396%_))
                              (_%tl183383183401%_ (##cdr _%e183381183396%_)))
                          (if (gx#stx-pair? _%tl183383183401%_)
                              (let ((_%e183384183404%_
                                     (gx#syntax-e _%tl183383183401%_)))
                                (let ((_%hd183385183407%_
                                       (##car _%e183384183404%_))
                                      (_%tl183386183409%_
                                       (##cdr _%e183384183404%_)))
                                  (let* ((_%hd183412%_ _%hd183385183407%_)
                                         (_%body183414%_ _%tl183386183409%_))
                                    (cons '%#module
                                          (cons (##structure-ref
                                                 (gx#syntax-local-e__0
                                                  _%hd183412%_)
                                                 '1
                                                 gx#expander-context::t
                                                 '#f)
                                                (gx#stx-map1
                                                 gx#core-compile-top-syntax
                                                 _%body183414%_))))))
                              (_%E183380183392%_))))
                      (_%E183380183392%_)))))
          (_%E183379183416%_))))
    (define gx#core-compile-top-export%
      (lambda (_%stx183347%_)
        (let* ((_%e183348183355%_ _%stx183347%_)
               (_%E183350183359%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e183348183355%_)))
               (_%E183349183373%_
                (lambda ()
                  (if (gx#stx-pair? _%e183348183355%_)
                      (let ((_%e183351183363%_
                             (gx#syntax-e _%e183348183355%_)))
                        (let ((_%hd183352183366%_ (##car _%e183351183363%_))
                              (_%tl183353183368%_ (##cdr _%e183351183363%_)))
                          (let ((_%body183371%_ _%tl183353183368%_))
                            (cons '%#export _%body183371%_))))
                      (_%E183350183359%_)))))
          (_%E183349183373%_))))
    (define gx#core-compile-top-provide%
      (lambda (_%stx183317%_)
        (let* ((_%e183318183325%_ _%stx183317%_)
               (_%E183320183329%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e183318183325%_)))
               (_%E183319183343%_
                (lambda ()
                  (if (gx#stx-pair? _%e183318183325%_)
                      (let ((_%e183321183333%_
                             (gx#syntax-e _%e183318183325%_)))
                        (let ((_%hd183322183336%_ (##car _%e183321183333%_))
                              (_%tl183323183338%_ (##cdr _%e183321183333%_)))
                          (let ((_%body183341%_ _%tl183323183338%_))
                            (cons '%#provide _%body183341%_))))
                      (_%E183320183329%_)))))
          (_%E183319183343%_))))
    (define gx#core-compile-top-extern%
      (lambda (_%stx183287%_)
        (let* ((_%e183288183295%_ _%stx183287%_)
               (_%E183290183299%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e183288183295%_)))
               (_%E183289183313%_
                (lambda ()
                  (if (gx#stx-pair? _%e183288183295%_)
                      (let ((_%e183291183303%_
                             (gx#syntax-e _%e183288183295%_)))
                        (let ((_%hd183292183306%_ (##car _%e183291183303%_))
                              (_%tl183293183308%_ (##cdr _%e183291183303%_)))
                          (let ((_%body183311%_ _%tl183293183308%_))
                            (cons '%#extern _%body183311%_))))
                      (_%E183290183299%_)))))
          (_%E183289183313%_))))
    (define gx#core-compile-top-define-values%
      (lambda (_%stx183233%_)
        (let* ((_%e183234183247%_ _%stx183233%_)
               (_%E183236183251%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e183234183247%_)))
               (_%E183235183283%_
                (lambda ()
                  (if (gx#stx-pair? _%e183234183247%_)
                      (let ((_%e183237183255%_
                             (gx#syntax-e _%e183234183247%_)))
                        (let ((_%hd183238183258%_ (##car _%e183237183255%_))
                              (_%tl183239183260%_ (##cdr _%e183237183255%_)))
                          (if (gx#stx-pair? _%tl183239183260%_)
                              (let ((_%e183240183263%_
                                     (gx#syntax-e _%tl183239183260%_)))
                                (let ((_%hd183241183266%_
                                       (##car _%e183240183263%_))
                                      (_%tl183242183268%_
                                       (##cdr _%e183240183263%_)))
                                  (let ((_%hd183271%_ _%hd183241183266%_))
                                    (if (gx#stx-pair? _%tl183242183268%_)
                                        (let ((_%e183243183273%_
                                               (gx#syntax-e
                                                _%tl183242183268%_)))
                                          (let ((_%hd183244183276%_
                                                 (##car _%e183243183273%_))
                                                (_%tl183245183278%_
                                                 (##cdr _%e183243183273%_)))
                                            (let ((_%expr183281%_
                                                   _%hd183244183276%_))
                                              (if (gx#stx-null?
                                                   _%tl183245183278%_)
                                                  (cons '%#define-values
                                                        (cons (gx#stx-map1
                                                               gx#core-compile-top-runtime-bind
                                                               _%hd183271%_)
                                                              (cons (gx#core-compile-top-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%expr183281%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E183236183251%_)))))
                                        (_%E183236183251%_)))))
                              (_%E183236183251%_))))
                      (_%E183236183251%_)))))
          (_%E183235183283%_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_%stx183178%_)
        (let* ((_%e183179183192%_ _%stx183178%_)
               (_%E183181183196%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e183179183192%_)))
               (_%E183180183229%_
                (lambda ()
                  (if (gx#stx-pair? _%e183179183192%_)
                      (let ((_%e183182183200%_
                             (gx#syntax-e _%e183179183192%_)))
                        (let ((_%hd183183183203%_ (##car _%e183182183200%_))
                              (_%tl183184183205%_ (##cdr _%e183182183200%_)))
                          (if (gx#stx-pair? _%tl183184183205%_)
                              (let ((_%e183185183208%_
                                     (gx#syntax-e _%tl183184183205%_)))
                                (let ((_%hd183186183211%_
                                       (##car _%e183185183208%_))
                                      (_%tl183187183213%_
                                       (##cdr _%e183185183208%_)))
                                  (let ((_%hd183216%_ _%hd183186183211%_))
                                    (if (gx#stx-pair? _%tl183187183213%_)
                                        (let ((_%e183188183218%_
                                               (gx#syntax-e
                                                _%tl183187183213%_)))
                                          (let ((_%hd183189183221%_
                                                 (##car _%e183188183218%_))
                                                (_%tl183190183223%_
                                                 (##cdr _%e183188183218%_)))
                                            (let ((_%expr183226%_
                                                   _%hd183189183221%_))
                                              (if (gx#stx-null?
                                                   _%tl183190183223%_)
                                                  (cons '%#define-syntax
                                                        (cons _%hd183216%_
                                                              (cons (call-with-parameters__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda ()
                               (gx#core-compile-top-syntax _%expr183226%_))
                             gx#current-expander-phi
                             (##fx+ (gx#current-expander-phi) '1))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E183181183196%_)))))
                                        (_%E183181183196%_)))))
                              (_%E183181183196%_))))
                      (_%E183181183196%_)))))
          (_%E183180183229%_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_%stx183148%_)
        (let* ((_%e183149183156%_ _%stx183148%_)
               (_%E183151183160%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e183149183156%_)))
               (_%E183150183174%_
                (lambda ()
                  (if (gx#stx-pair? _%e183149183156%_)
                      (let ((_%e183152183164%_
                             (gx#syntax-e _%e183149183156%_)))
                        (let ((_%hd183153183167%_ (##car _%e183152183164%_))
                              (_%tl183154183169%_ (##cdr _%e183152183164%_)))
                          (let ((_%body183172%_ _%tl183154183169%_))
                            (cons '%#define-alias _%body183172%_))))
                      (_%E183151183160%_)))))
          (_%E183150183174%_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_%stx183118%_)
        (let* ((_%e183119183126%_ _%stx183118%_)
               (_%E183121183130%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e183119183126%_)))
               (_%E183120183144%_
                (lambda ()
                  (if (gx#stx-pair? _%e183119183126%_)
                      (let ((_%e183122183134%_
                             (gx#syntax-e _%e183119183126%_)))
                        (let ((_%hd183123183137%_ (##car _%e183122183134%_))
                              (_%tl183124183139%_ (##cdr _%e183122183134%_)))
                          (let ((_%body183142%_ _%tl183124183139%_))
                            (cons '%#define-runtime _%body183142%_))))
                      (_%E183121183130%_)))))
          (_%E183120183144%_))))
    (define gx#core-compile-top-declare%
      (lambda (_%stx183088%_)
        (let* ((_%e183089183096%_ _%stx183088%_)
               (_%E183091183100%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e183089183096%_)))
               (_%E183090183114%_
                (lambda ()
                  (if (gx#stx-pair? _%e183089183096%_)
                      (let ((_%e183092183104%_
                             (gx#syntax-e _%e183089183096%_)))
                        (let ((_%hd183093183107%_ (##car _%e183092183104%_))
                              (_%tl183094183109%_ (##cdr _%e183092183104%_)))
                          (let ((_%decls183112%_ _%tl183094183109%_))
                            (cons '%#declare _%decls183112%_))))
                      (_%E183091183100%_)))))
          (_%E183090183114%_))))
    (define gx#core-compile-top-lambda%
      (lambda (_%stx183058%_)
        (let* ((_%e183059183066%_ _%stx183058%_)
               (_%E183061183070%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e183059183066%_)))
               (_%E183060183084%_
                (lambda ()
                  (if (gx#stx-pair? _%e183059183066%_)
                      (let ((_%e183062183074%_
                             (gx#syntax-e _%e183059183066%_)))
                        (let ((_%hd183063183077%_ (##car _%e183062183074%_))
                              (_%tl183064183079%_ (##cdr _%e183062183074%_)))
                          (let ((_%clause183082%_ _%tl183064183079%_))
                            (cons '%#lambda
                                  (gx#core-compile-top-lambda-clause
                                   _%clause183082%_)))))
                      (_%E183061183070%_)))))
          (_%E183060183084%_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_%stx183015%_)
        (let* ((_%e183016183026%_ _%stx183015%_)
               (_%E183018183030%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e183016183026%_)))
               (_%E183017183054%_
                (lambda ()
                  (if (gx#stx-pair? _%e183016183026%_)
                      (let ((_%e183019183034%_
                             (gx#syntax-e _%e183016183026%_)))
                        (let ((_%hd183020183037%_ (##car _%e183019183034%_))
                              (_%tl183021183039%_ (##cdr _%e183019183034%_)))
                          (let ((_%hd183042%_ _%hd183020183037%_))
                            (if (gx#stx-pair? _%tl183021183039%_)
                                (let ((_%e183022183044%_
                                       (gx#syntax-e _%tl183021183039%_)))
                                  (let ((_%hd183023183047%_
                                         (##car _%e183022183044%_))
                                        (_%tl183024183049%_
                                         (##cdr _%e183022183044%_)))
                                    (let ((_%body183052%_ _%hd183023183047%_))
                                      (if (gx#stx-null? _%tl183024183049%_)
                                          (cons (gx#stx-map1
                                                 gx#core-compile-top-runtime-bind
                                                 _%hd183042%_)
                                                (cons (gx#core-compile-top-syntax
                                                       _%body183052%_)
                                                      '()))
                                          (_%E183018183030%_)))))
                                (_%E183018183030%_)))))
                      (_%E183018183030%_)))))
          (_%E183017183054%_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_%stx182985%_)
        (let* ((_%e182986182993%_ _%stx182985%_)
               (_%E182988182997%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e182986182993%_)))
               (_%E182987183011%_
                (lambda ()
                  (if (gx#stx-pair? _%e182986182993%_)
                      (let ((_%e182989183001%_
                             (gx#syntax-e _%e182986182993%_)))
                        (let ((_%hd182990183004%_ (##car _%e182989183001%_))
                              (_%tl182991183006%_ (##cdr _%e182989183001%_)))
                          (let ((_%clauses183009%_ _%tl182991183006%_))
                            (cons '%#case-lambda
                                  (gx#stx-map1
                                   gx#core-compile-top-lambda-clause
                                   _%clauses183009%_)))))
                      (_%E182988182997%_)))))
          (_%E182987183011%_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_%stx182920%_ _%form182921%_)
        (let* ((_%e182922182935%_ _%stx182920%_)
               (_%E182924182939%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e182922182935%_)))
               (_%E182923182971%_
                (lambda ()
                  (if (gx#stx-pair? _%e182922182935%_)
                      (let ((_%e182925182943%_
                             (gx#syntax-e _%e182922182935%_)))
                        (let ((_%hd182926182946%_ (##car _%e182925182943%_))
                              (_%tl182927182948%_ (##cdr _%e182925182943%_)))
                          (if (gx#stx-pair? _%tl182927182948%_)
                              (let ((_%e182928182951%_
                                     (gx#syntax-e _%tl182927182948%_)))
                                (let ((_%hd182929182954%_
                                       (##car _%e182928182951%_))
                                      (_%tl182930182956%_
                                       (##cdr _%e182928182951%_)))
                                  (let ((_%hd182959%_ _%hd182929182954%_))
                                    (if (gx#stx-pair? _%tl182930182956%_)
                                        (let ((_%e182931182961%_
                                               (gx#syntax-e
                                                _%tl182930182956%_)))
                                          (let ((_%hd182932182964%_
                                                 (##car _%e182931182961%_))
                                                (_%tl182933182966%_
                                                 (##cdr _%e182931182961%_)))
                                            (let ((_%body182969%_
                                                   _%hd182932182964%_))
                                              (if (gx#stx-null?
                                                   _%tl182933182966%_)
                                                  (cons _%form182921%_
                                                        (cons (gx#stx-map1
                                                               gx#core-compile-top-lambda-clause
                                                               _%hd182959%_)
                                                              (cons (gx#core-compile-top-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%body182969%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E182924182939%_)))))
                                        (_%E182924182939%_)))))
                              (_%E182924182939%_))))
                      (_%E182924182939%_)))))
          (_%E182923182971%_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_%stx182978%_)
        (let ((_%form182980%_ '%#let-values))
          (gx#core-compile-top-let-values%__% _%stx182978%_ _%form182980%_))))
    (define gx#core-compile-top-let-values%
      (lambda _g183803_
        (let ((_g183804_ (##length _g183803_)))
          (cond ((##fx= _g183804_ 1)
                 (apply gx#core-compile-top-let-values%__0 _g183803_))
                ((##fx= _g183804_ 2)
                 (apply gx#core-compile-top-let-values%__% _g183803_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g183803_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_%stx182917%_)
        (gx#core-compile-top-let-values%__% _%stx182917%_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_%stx182915%_)
        (gx#core-compile-top-let-values%__% _%stx182915%_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_%stx182874%_)
        (let* ((_%e182875182885%_ _%stx182874%_)
               (_%E182877182889%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e182875182885%_)))
               (_%E182876182911%_
                (lambda ()
                  (if (gx#stx-pair? _%e182875182885%_)
                      (let ((_%e182878182893%_
                             (gx#syntax-e _%e182875182885%_)))
                        (let ((_%hd182879182896%_ (##car _%e182878182893%_))
                              (_%tl182880182898%_ (##cdr _%e182878182893%_)))
                          (if (gx#stx-pair? _%tl182880182898%_)
                              (let ((_%e182881182901%_
                                     (gx#syntax-e _%tl182880182898%_)))
                                (let ((_%hd182882182904%_
                                       (##car _%e182881182901%_))
                                      (_%tl182883182906%_
                                       (##cdr _%e182881182901%_)))
                                  (let ((_%e182909%_ _%hd182882182904%_))
                                    (if (gx#stx-null? _%tl182883182906%_)
                                        (cons '%#quote
                                              (cons (gx#syntax->datum
                                                     _%e182909%_)
                                                    '()))
                                        (_%E182877182889%_)))))
                              (_%E182877182889%_))))
                      (_%E182877182889%_)))))
          (_%E182876182911%_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_%stx182833%_)
        (let* ((_%e182834182844%_ _%stx182833%_)
               (_%E182836182848%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e182834182844%_)))
               (_%E182835182870%_
                (lambda ()
                  (if (gx#stx-pair? _%e182834182844%_)
                      (let ((_%e182837182852%_
                             (gx#syntax-e _%e182834182844%_)))
                        (let ((_%hd182838182855%_ (##car _%e182837182852%_))
                              (_%tl182839182857%_ (##cdr _%e182837182852%_)))
                          (if (gx#stx-pair? _%tl182839182857%_)
                              (let ((_%e182840182860%_
                                     (gx#syntax-e _%tl182839182857%_)))
                                (let ((_%hd182841182863%_
                                       (##car _%e182840182860%_))
                                      (_%tl182842182865%_
                                       (##cdr _%e182840182860%_)))
                                  (let ((_%e182868%_ _%hd182841182863%_))
                                    (if (gx#stx-null? _%tl182842182865%_)
                                        (cons '%#quote-syntax
                                              (cons (gx#core-quote-syntax__0
                                                     _%e182868%_)
                                                    '()))
                                        (_%E182836182848%_)))))
                              (_%E182836182848%_))))
                      (_%E182836182848%_)))))
          (_%E182835182870%_))))
    (define gx#core-compile-top-call%
      (lambda (_%stx182790%_)
        (let* ((_%e182791182801%_ _%stx182790%_)
               (_%E182793182805%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e182791182801%_)))
               (_%E182792182829%_
                (lambda ()
                  (if (gx#stx-pair? _%e182791182801%_)
                      (let ((_%e182794182809%_
                             (gx#syntax-e _%e182791182801%_)))
                        (let ((_%hd182795182812%_ (##car _%e182794182809%_))
                              (_%tl182796182814%_ (##cdr _%e182794182809%_)))
                          (if (gx#stx-pair? _%tl182796182814%_)
                              (let ((_%e182797182817%_
                                     (gx#syntax-e _%tl182796182814%_)))
                                (let ((_%hd182798182820%_
                                       (##car _%e182797182817%_))
                                      (_%tl182799182822%_
                                       (##cdr _%e182797182817%_)))
                                  (let* ((_%rator182825%_ _%hd182798182820%_)
                                         (_%args182827%_ _%tl182799182822%_))
                                    (cons '%#call
                                          (cons (gx#core-compile-top-syntax
                                                 _%rator182825%_)
                                                (gx#stx-map1
                                                 gx#core-compile-top-syntax
                                                 _%args182827%_))))))
                              (_%E182793182805%_))))
                      (_%E182793182805%_)))))
          (_%E182792182829%_))))
    (define gx#core-compile-top-if%
      (lambda (_%stx182723%_)
        (let* ((_%e182724182740%_ _%stx182723%_)
               (_%E182726182744%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e182724182740%_)))
               (_%E182725182786%_
                (lambda ()
                  (if (gx#stx-pair? _%e182724182740%_)
                      (let ((_%e182727182748%_
                             (gx#syntax-e _%e182724182740%_)))
                        (let ((_%hd182728182751%_ (##car _%e182727182748%_))
                              (_%tl182729182753%_ (##cdr _%e182727182748%_)))
                          (if (gx#stx-pair? _%tl182729182753%_)
                              (let ((_%e182730182756%_
                                     (gx#syntax-e _%tl182729182753%_)))
                                (let ((_%hd182731182759%_
                                       (##car _%e182730182756%_))
                                      (_%tl182732182761%_
                                       (##cdr _%e182730182756%_)))
                                  (let ((_%test182764%_ _%hd182731182759%_))
                                    (if (gx#stx-pair? _%tl182732182761%_)
                                        (let ((_%e182733182766%_
                                               (gx#syntax-e
                                                _%tl182732182761%_)))
                                          (let ((_%hd182734182769%_
                                                 (##car _%e182733182766%_))
                                                (_%tl182735182771%_
                                                 (##cdr _%e182733182766%_)))
                                            (let ((_%K182774%_
                                                   _%hd182734182769%_))
                                              (if (gx#stx-pair?
                                                   _%tl182735182771%_)
                                                  (let ((_%e182736182776%_
                                                         (gx#syntax-e
                                                          _%tl182735182771%_)))
                                                    (let ((_%hd182737182779%_
                                                           (##car _%e182736182776%_))
                                                          (_%tl182738182781%_
                                                           (##cdr _%e182736182776%_)))
                                                      (let ((_%E182784%_
                                                             _%hd182737182779%_))
                                                        (if (gx#stx-null?
                                                             _%tl182738182781%_)
                                                            (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#core-compile-top-syntax _%test182764%_)
                                (cons (gx#core-compile-top-syntax _%K182774%_)
                                      (cons (gx#core-compile-top-syntax
                                             _%E182784%_)
                                            '()))))
                    (_%E182726182744%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E182726182744%_)))))
                                        (_%E182726182744%_)))))
                              (_%E182726182744%_))))
                      (_%E182726182744%_)))))
          (_%E182725182786%_))))
    (define gx#core-compile-top-ref%
      (lambda (_%stx182682%_)
        (let* ((_%e182683182693%_ _%stx182682%_)
               (_%E182685182697%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e182683182693%_)))
               (_%E182684182719%_
                (lambda ()
                  (if (gx#stx-pair? _%e182683182693%_)
                      (let ((_%e182686182701%_
                             (gx#syntax-e _%e182683182693%_)))
                        (let ((_%hd182687182704%_ (##car _%e182686182701%_))
                              (_%tl182688182706%_ (##cdr _%e182686182701%_)))
                          (if (gx#stx-pair? _%tl182688182706%_)
                              (let ((_%e182689182709%_
                                     (gx#syntax-e _%tl182688182706%_)))
                                (let ((_%hd182690182712%_
                                       (##car _%e182689182709%_))
                                      (_%tl182691182714%_
                                       (##cdr _%e182689182709%_)))
                                  (let ((_%id182717%_ _%hd182690182712%_))
                                    (if (gx#stx-null? _%tl182691182714%_)
                                        (if (gx#identifier? _%id182717%_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _%id182717%_)
                                                        '()))
                                            (_%E182685182697%_))
                                        (_%E182685182697%_)))))
                              (_%E182685182697%_))))
                      (_%E182685182697%_)))))
          (_%E182684182719%_))))
    (define gx#core-compile-top-setq%
      (lambda (_%stx182628%_)
        (let* ((_%e182629182642%_ _%stx182628%_)
               (_%E182631182646%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e182629182642%_)))
               (_%E182630182678%_
                (lambda ()
                  (if (gx#stx-pair? _%e182629182642%_)
                      (let ((_%e182632182650%_
                             (gx#syntax-e _%e182629182642%_)))
                        (let ((_%hd182633182653%_ (##car _%e182632182650%_))
                              (_%tl182634182655%_ (##cdr _%e182632182650%_)))
                          (if (gx#stx-pair? _%tl182634182655%_)
                              (let ((_%e182635182658%_
                                     (gx#syntax-e _%tl182634182655%_)))
                                (let ((_%hd182636182661%_
                                       (##car _%e182635182658%_))
                                      (_%tl182637182663%_
                                       (##cdr _%e182635182658%_)))
                                  (let ((_%id182666%_ _%hd182636182661%_))
                                    (if (gx#stx-pair? _%tl182637182663%_)
                                        (let ((_%e182638182668%_
                                               (gx#syntax-e
                                                _%tl182637182663%_)))
                                          (let ((_%hd182639182671%_
                                                 (##car _%e182638182668%_))
                                                (_%tl182640182673%_
                                                 (##cdr _%e182638182668%_)))
                                            (let ((_%expr182676%_
                                                   _%hd182639182671%_))
                                              (if (gx#stx-null?
                                                   _%tl182640182673%_)
                                                  (if (gx#identifier?
                                                       _%id182666%_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%id182666%_)
                          (cons (gx#core-compile-top-syntax _%expr182676%_)
                                '())))
              (_%E182631182646%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E182631182646%_)))))
                                        (_%E182631182646%_)))))
                              (_%E182631182646%_))))
                      (_%E182631182646%_)))))
          (_%E182630182678%_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_%id182622%_)
        (let ((_%$e182624%_ (gx#resolve-identifier__0 _%id182622%_)))
          (if _%$e182624%_
              (##unchecked-structure-ref _%$e182624%_ '1 '#f '#f)
              _%id182622%_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_%hd182620%_)
        (if (gx#identifier? _%hd182620%_)
            (gx#core-compile-top-runtime-ref _%hd182620%_)
            '#f)))))
