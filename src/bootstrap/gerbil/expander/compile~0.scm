(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1712299485)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_%stx127063%_)
        (let* ((_%e127064127071%_ _%stx127063%_)
               (_%E127066127075%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e127064127071%_)))
               (_%E127065127089%_
                (lambda ()
                  (if (gx#stx-pair? _%e127064127071%_)
                      (let ((_%e127067127079%_
                             (gx#syntax-e _%e127064127071%_)))
                        (let ((_%hd127068127082%_ (##car _%e127067127079%_))
                              (_%tl127069127084%_ (##cdr _%e127067127079%_)))
                          (let ((_%form127087%_ _%hd127068127082%_))
                            (if '#t
                                (let* ((__self127092
                                        (gx#syntax-local-e__0 _%form127087%_))
                                       (__method127093
                                        (__method-ref
                                         __self127092
                                         'compile-top-syntax)))
                                  (if __method127093
                                      (__method127093
                                       __self127092
                                       _%stx127063%_)
                                      (error '"Missing method"
                                             __self127092
                                             'compile-top-syntax)))
                                (_%E127066127075%_)))))
                      (_%E127066127075%_)))))
          (_%E127065127089%_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_%self127011%_ _%stx127012%_)
        (let ((_%self127015%_ _%self127011%_))
          (let* ((_%self127024127032%_ _%self127015%_)
                 (_%E127026127036%_
                  (lambda ()
                    (error '"No clause matching"
                           _%self127024127032%_
                           '((core-expander _ _ K)))
                    '#!void))
                 (_%K127027127049%_
                  (lambda (_%K127039%_)
                    (let ((_%$e127041%_ (gx#stx-source _%stx127012%_)))
                      (if _%$e127041%_
                          ((lambda (_%g127043127045%_)
                             (gx#stx-wrap-source
                              (_%K127039%_ _%stx127012%_)
                              _%g127043127045%_))
                           _%$e127041%_)
                          (let () (_%K127039%_ _%stx127012%_)))))))
            (if '#t
                (let* ((_%e127028127052%_
                        (##unchecked-structure-ref
                         _%self127024127032%_
                         '1
                         '#f
                         '#f))
                       (_%e127029127055%_
                        (##unchecked-structure-ref
                         _%self127024127032%_
                         '2
                         '#f
                         '#f))
                       (_%e127030127058%_
                        (##unchecked-structure-ref
                         _%self127024127032%_
                         '3
                         '#f
                         '#f))
                       (_%K127061%_ _%e127030127058%_))
                  (_%K127027127049%_ _%K127061%_))
                (_%E127026127036%_))))))
    (__bind-method!
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_%stx126885%_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _%stx126885%_)))
    (define gx#core-compile-top-begin%
      (lambda (_%stx126855%_)
        (let* ((_%e126856126863%_ _%stx126855%_)
               (_%E126858126867%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126856126863%_)))
               (_%E126857126881%_
                (lambda ()
                  (if (gx#stx-pair? _%e126856126863%_)
                      (let ((_%e126859126871%_
                             (gx#syntax-e _%e126856126863%_)))
                        (let ((_%hd126860126874%_ (##car _%e126859126871%_))
                              (_%tl126861126876%_ (##cdr _%e126859126871%_)))
                          (let ((_%body126879%_ _%tl126861126876%_))
                            (if '#t
                                (cons '%#begin
                                      (gx#stx-map1
                                       gx#core-compile-top-syntax
                                       _%body126879%_))
                                (_%E126858126867%_)))))
                      (_%E126858126867%_)))))
          (_%E126857126881%_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_%stx126824%_)
        (let* ((_%e126825126832%_ _%stx126824%_)
               (_%E126827126836%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126825126832%_)))
               (_%E126826126851%_
                (lambda ()
                  (if (gx#stx-pair? _%e126825126832%_)
                      (let ((_%e126828126840%_
                             (gx#syntax-e _%e126825126832%_)))
                        (let ((_%hd126829126843%_ (##car _%e126828126840%_))
                              (_%tl126830126845%_ (##cdr _%e126828126840%_)))
                          (let ((_%body126848%_ _%tl126830126845%_))
                            (if '#t
                                (cons '%#begin-syntax
                                      (__call-with-parameters
                                       (lambda ()
                                         (gx#stx-map1
                                          gx#core-compile-top-syntax
                                          _%body126848%_))
                                       gx#current-expander-phi
                                       (##fx+ (gx#current-expander-phi) '1)))
                                (_%E126827126836%_)))))
                      (_%E126827126836%_)))))
          (_%E126826126851%_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_%stx126794%_)
        (let* ((_%e126795126802%_ _%stx126794%_)
               (_%E126797126806%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126795126802%_)))
               (_%E126796126820%_
                (lambda ()
                  (if (gx#stx-pair? _%e126795126802%_)
                      (let ((_%e126798126810%_
                             (gx#syntax-e _%e126795126802%_)))
                        (let ((_%hd126799126813%_ (##car _%e126798126810%_))
                              (_%tl126800126815%_ (##cdr _%e126798126810%_)))
                          (let ((_%body126818%_ _%tl126800126815%_))
                            (if '#t
                                (cons '%#begin-foreign _%body126818%_)
                                (_%E126797126806%_)))))
                      (_%E126797126806%_)))))
          (_%E126796126820%_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_%stx126740%_)
        (let* ((_%e126741126754%_ _%stx126740%_)
               (_%E126743126758%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126741126754%_)))
               (_%E126742126790%_
                (lambda ()
                  (if (gx#stx-pair? _%e126741126754%_)
                      (let ((_%e126744126762%_
                             (gx#syntax-e _%e126741126754%_)))
                        (let ((_%hd126745126765%_ (##car _%e126744126762%_))
                              (_%tl126746126767%_ (##cdr _%e126744126762%_)))
                          (if (gx#stx-pair? _%tl126746126767%_)
                              (let ((_%e126747126770%_
                                     (gx#syntax-e _%tl126746126767%_)))
                                (let ((_%hd126748126773%_
                                       (##car _%e126747126770%_))
                                      (_%tl126749126775%_
                                       (##cdr _%e126747126770%_)))
                                  (let ((_%ann126778%_ _%hd126748126773%_))
                                    (if (gx#stx-pair? _%tl126749126775%_)
                                        (let ((_%e126750126780%_
                                               (gx#syntax-e
                                                _%tl126749126775%_)))
                                          (let ((_%hd126751126783%_
                                                 (##car _%e126750126780%_))
                                                (_%tl126752126785%_
                                                 (##cdr _%e126750126780%_)))
                                            (let ((_%expr126788%_
                                                   _%hd126751126783%_))
                                              (if (gx#stx-null?
                                                   _%tl126752126785%_)
                                                  (if '#t
                                                      (gx#core-compile-top-syntax
                                                       _%expr126788%_)
                                                      (_%E126743126758%_))
                                                  (_%E126743126758%_)))))
                                        (_%E126743126758%_)))))
                              (_%E126743126758%_))))
                      (_%E126743126758%_)))))
          (_%E126742126790%_))))
    (define gx#core-compile-top-import%
      (lambda (_%stx126710%_)
        (let* ((_%e126711126718%_ _%stx126710%_)
               (_%E126713126722%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126711126718%_)))
               (_%E126712126736%_
                (lambda ()
                  (if (gx#stx-pair? _%e126711126718%_)
                      (let ((_%e126714126726%_
                             (gx#syntax-e _%e126711126718%_)))
                        (let ((_%hd126715126729%_ (##car _%e126714126726%_))
                              (_%tl126716126731%_ (##cdr _%e126714126726%_)))
                          (let ((_%body126734%_ _%tl126716126731%_))
                            (if '#t
                                (cons '%#import _%body126734%_)
                                (_%E126713126722%_)))))
                      (_%E126713126722%_)))))
          (_%E126712126736%_))))
    (define gx#core-compile-top-module%
      (lambda (_%stx126667%_)
        (let* ((_%e126668126678%_ _%stx126667%_)
               (_%E126670126682%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126668126678%_)))
               (_%E126669126706%_
                (lambda ()
                  (if (gx#stx-pair? _%e126668126678%_)
                      (let ((_%e126671126686%_
                             (gx#syntax-e _%e126668126678%_)))
                        (let ((_%hd126672126689%_ (##car _%e126671126686%_))
                              (_%tl126673126691%_ (##cdr _%e126671126686%_)))
                          (if (gx#stx-pair? _%tl126673126691%_)
                              (let ((_%e126674126694%_
                                     (gx#syntax-e _%tl126673126691%_)))
                                (let ((_%hd126675126697%_
                                       (##car _%e126674126694%_))
                                      (_%tl126676126699%_
                                       (##cdr _%e126674126694%_)))
                                  (let* ((_%hd126702%_ _%hd126675126697%_)
                                         (_%body126704%_ _%tl126676126699%_))
                                    (if '#t
                                        (cons '%#module
                                              (cons (##structure-ref
                                                     (gx#syntax-local-e__0
                                                      _%hd126702%_)
                                                     '1
                                                     gx#expander-context::t
                                                     '#f)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _%body126704%_)))
                                        (_%E126670126682%_)))))
                              (_%E126670126682%_))))
                      (_%E126670126682%_)))))
          (_%E126669126706%_))))
    (define gx#core-compile-top-export%
      (lambda (_%stx126637%_)
        (let* ((_%e126638126645%_ _%stx126637%_)
               (_%E126640126649%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126638126645%_)))
               (_%E126639126663%_
                (lambda ()
                  (if (gx#stx-pair? _%e126638126645%_)
                      (let ((_%e126641126653%_
                             (gx#syntax-e _%e126638126645%_)))
                        (let ((_%hd126642126656%_ (##car _%e126641126653%_))
                              (_%tl126643126658%_ (##cdr _%e126641126653%_)))
                          (let ((_%body126661%_ _%tl126643126658%_))
                            (if '#t
                                (cons '%#export _%body126661%_)
                                (_%E126640126649%_)))))
                      (_%E126640126649%_)))))
          (_%E126639126663%_))))
    (define gx#core-compile-top-provide%
      (lambda (_%stx126607%_)
        (let* ((_%e126608126615%_ _%stx126607%_)
               (_%E126610126619%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126608126615%_)))
               (_%E126609126633%_
                (lambda ()
                  (if (gx#stx-pair? _%e126608126615%_)
                      (let ((_%e126611126623%_
                             (gx#syntax-e _%e126608126615%_)))
                        (let ((_%hd126612126626%_ (##car _%e126611126623%_))
                              (_%tl126613126628%_ (##cdr _%e126611126623%_)))
                          (let ((_%body126631%_ _%tl126613126628%_))
                            (if '#t
                                (cons '%#provide _%body126631%_)
                                (_%E126610126619%_)))))
                      (_%E126610126619%_)))))
          (_%E126609126633%_))))
    (define gx#core-compile-top-extern%
      (lambda (_%stx126577%_)
        (let* ((_%e126578126585%_ _%stx126577%_)
               (_%E126580126589%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126578126585%_)))
               (_%E126579126603%_
                (lambda ()
                  (if (gx#stx-pair? _%e126578126585%_)
                      (let ((_%e126581126593%_
                             (gx#syntax-e _%e126578126585%_)))
                        (let ((_%hd126582126596%_ (##car _%e126581126593%_))
                              (_%tl126583126598%_ (##cdr _%e126581126593%_)))
                          (let ((_%body126601%_ _%tl126583126598%_))
                            (if '#t
                                (cons '%#extern _%body126601%_)
                                (_%E126580126589%_)))))
                      (_%E126580126589%_)))))
          (_%E126579126603%_))))
    (define gx#core-compile-top-define-values%
      (lambda (_%stx126523%_)
        (let* ((_%e126524126537%_ _%stx126523%_)
               (_%E126526126541%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126524126537%_)))
               (_%E126525126573%_
                (lambda ()
                  (if (gx#stx-pair? _%e126524126537%_)
                      (let ((_%e126527126545%_
                             (gx#syntax-e _%e126524126537%_)))
                        (let ((_%hd126528126548%_ (##car _%e126527126545%_))
                              (_%tl126529126550%_ (##cdr _%e126527126545%_)))
                          (if (gx#stx-pair? _%tl126529126550%_)
                              (let ((_%e126530126553%_
                                     (gx#syntax-e _%tl126529126550%_)))
                                (let ((_%hd126531126556%_
                                       (##car _%e126530126553%_))
                                      (_%tl126532126558%_
                                       (##cdr _%e126530126553%_)))
                                  (let ((_%hd126561%_ _%hd126531126556%_))
                                    (if (gx#stx-pair? _%tl126532126558%_)
                                        (let ((_%e126533126563%_
                                               (gx#syntax-e
                                                _%tl126532126558%_)))
                                          (let ((_%hd126534126566%_
                                                 (##car _%e126533126563%_))
                                                (_%tl126535126568%_
                                                 (##cdr _%e126533126563%_)))
                                            (let ((_%expr126571%_
                                                   _%hd126534126566%_))
                                              (if (gx#stx-null?
                                                   _%tl126535126568%_)
                                                  (if '#t
                                                      (cons '%#define-values
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-runtime-bind
                           _%hd126561%_)
                          (cons (gx#core-compile-top-syntax _%expr126571%_)
                                '())))
              (_%E126526126541%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E126526126541%_)))))
                                        (_%E126526126541%_)))))
                              (_%E126526126541%_))))
                      (_%E126526126541%_)))))
          (_%E126525126573%_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_%stx126468%_)
        (let* ((_%e126469126482%_ _%stx126468%_)
               (_%E126471126486%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126469126482%_)))
               (_%E126470126519%_
                (lambda ()
                  (if (gx#stx-pair? _%e126469126482%_)
                      (let ((_%e126472126490%_
                             (gx#syntax-e _%e126469126482%_)))
                        (let ((_%hd126473126493%_ (##car _%e126472126490%_))
                              (_%tl126474126495%_ (##cdr _%e126472126490%_)))
                          (if (gx#stx-pair? _%tl126474126495%_)
                              (let ((_%e126475126498%_
                                     (gx#syntax-e _%tl126474126495%_)))
                                (let ((_%hd126476126501%_
                                       (##car _%e126475126498%_))
                                      (_%tl126477126503%_
                                       (##cdr _%e126475126498%_)))
                                  (let ((_%hd126506%_ _%hd126476126501%_))
                                    (if (gx#stx-pair? _%tl126477126503%_)
                                        (let ((_%e126478126508%_
                                               (gx#syntax-e
                                                _%tl126477126503%_)))
                                          (let ((_%hd126479126511%_
                                                 (##car _%e126478126508%_))
                                                (_%tl126480126513%_
                                                 (##cdr _%e126478126508%_)))
                                            (let ((_%expr126516%_
                                                   _%hd126479126511%_))
                                              (if (gx#stx-null?
                                                   _%tl126480126513%_)
                                                  (if '#t
                                                      (cons '%#define-syntax
                                                            (cons _%hd126506%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (__call-with-parameters
                                 (lambda ()
                                   (gx#core-compile-top-syntax _%expr126516%_))
                                 gx#current-expander-phi
                                 (##fx+ (gx#current-expander-phi) '1))
                                '())))
              (_%E126471126486%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E126471126486%_)))))
                                        (_%E126471126486%_)))))
                              (_%E126471126486%_))))
                      (_%E126471126486%_)))))
          (_%E126470126519%_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_%stx126438%_)
        (let* ((_%e126439126446%_ _%stx126438%_)
               (_%E126441126450%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126439126446%_)))
               (_%E126440126464%_
                (lambda ()
                  (if (gx#stx-pair? _%e126439126446%_)
                      (let ((_%e126442126454%_
                             (gx#syntax-e _%e126439126446%_)))
                        (let ((_%hd126443126457%_ (##car _%e126442126454%_))
                              (_%tl126444126459%_ (##cdr _%e126442126454%_)))
                          (let ((_%body126462%_ _%tl126444126459%_))
                            (if '#t
                                (cons '%#define-alias _%body126462%_)
                                (_%E126441126450%_)))))
                      (_%E126441126450%_)))))
          (_%E126440126464%_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_%stx126408%_)
        (let* ((_%e126409126416%_ _%stx126408%_)
               (_%E126411126420%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126409126416%_)))
               (_%E126410126434%_
                (lambda ()
                  (if (gx#stx-pair? _%e126409126416%_)
                      (let ((_%e126412126424%_
                             (gx#syntax-e _%e126409126416%_)))
                        (let ((_%hd126413126427%_ (##car _%e126412126424%_))
                              (_%tl126414126429%_ (##cdr _%e126412126424%_)))
                          (let ((_%body126432%_ _%tl126414126429%_))
                            (if '#t
                                (cons '%#define-runtime _%body126432%_)
                                (_%E126411126420%_)))))
                      (_%E126411126420%_)))))
          (_%E126410126434%_))))
    (define gx#core-compile-top-declare%
      (lambda (_%stx126378%_)
        (let* ((_%e126379126386%_ _%stx126378%_)
               (_%E126381126390%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126379126386%_)))
               (_%E126380126404%_
                (lambda ()
                  (if (gx#stx-pair? _%e126379126386%_)
                      (let ((_%e126382126394%_
                             (gx#syntax-e _%e126379126386%_)))
                        (let ((_%hd126383126397%_ (##car _%e126382126394%_))
                              (_%tl126384126399%_ (##cdr _%e126382126394%_)))
                          (let ((_%decls126402%_ _%tl126384126399%_))
                            (if '#t
                                (cons '%#declare _%decls126402%_)
                                (_%E126381126390%_)))))
                      (_%E126381126390%_)))))
          (_%E126380126404%_))))
    (define gx#core-compile-top-lambda%
      (lambda (_%stx126348%_)
        (let* ((_%e126349126356%_ _%stx126348%_)
               (_%E126351126360%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126349126356%_)))
               (_%E126350126374%_
                (lambda ()
                  (if (gx#stx-pair? _%e126349126356%_)
                      (let ((_%e126352126364%_
                             (gx#syntax-e _%e126349126356%_)))
                        (let ((_%hd126353126367%_ (##car _%e126352126364%_))
                              (_%tl126354126369%_ (##cdr _%e126352126364%_)))
                          (let ((_%clause126372%_ _%tl126354126369%_))
                            (if '#t
                                (cons '%#lambda
                                      (gx#core-compile-top-lambda-clause
                                       _%clause126372%_))
                                (_%E126351126360%_)))))
                      (_%E126351126360%_)))))
          (_%E126350126374%_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_%stx126305%_)
        (let* ((_%e126306126316%_ _%stx126305%_)
               (_%E126308126320%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126306126316%_)))
               (_%E126307126344%_
                (lambda ()
                  (if (gx#stx-pair? _%e126306126316%_)
                      (let ((_%e126309126324%_
                             (gx#syntax-e _%e126306126316%_)))
                        (let ((_%hd126310126327%_ (##car _%e126309126324%_))
                              (_%tl126311126329%_ (##cdr _%e126309126324%_)))
                          (let ((_%hd126332%_ _%hd126310126327%_))
                            (if (gx#stx-pair? _%tl126311126329%_)
                                (let ((_%e126312126334%_
                                       (gx#syntax-e _%tl126311126329%_)))
                                  (let ((_%hd126313126337%_
                                         (##car _%e126312126334%_))
                                        (_%tl126314126339%_
                                         (##cdr _%e126312126334%_)))
                                    (let ((_%body126342%_ _%hd126313126337%_))
                                      (if (gx#stx-null? _%tl126314126339%_)
                                          (if '#t
                                              (cons (gx#stx-map1
                                                     gx#core-compile-top-runtime-bind
                                                     _%hd126332%_)
                                                    (cons (gx#core-compile-top-syntax
                                                           _%body126342%_)
                                                          '()))
                                              (_%E126308126320%_))
                                          (_%E126308126320%_)))))
                                (_%E126308126320%_)))))
                      (_%E126308126320%_)))))
          (_%E126307126344%_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_%stx126275%_)
        (let* ((_%e126276126283%_ _%stx126275%_)
               (_%E126278126287%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126276126283%_)))
               (_%E126277126301%_
                (lambda ()
                  (if (gx#stx-pair? _%e126276126283%_)
                      (let ((_%e126279126291%_
                             (gx#syntax-e _%e126276126283%_)))
                        (let ((_%hd126280126294%_ (##car _%e126279126291%_))
                              (_%tl126281126296%_ (##cdr _%e126279126291%_)))
                          (let ((_%clauses126299%_ _%tl126281126296%_))
                            (if '#t
                                (cons '%#case-lambda
                                      (gx#stx-map1
                                       gx#core-compile-top-lambda-clause
                                       _%clauses126299%_))
                                (_%E126278126287%_)))))
                      (_%E126278126287%_)))))
          (_%E126277126301%_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_%stx126210%_ _%form126211%_)
        (let* ((_%e126212126225%_ _%stx126210%_)
               (_%E126214126229%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126212126225%_)))
               (_%E126213126261%_
                (lambda ()
                  (if (gx#stx-pair? _%e126212126225%_)
                      (let ((_%e126215126233%_
                             (gx#syntax-e _%e126212126225%_)))
                        (let ((_%hd126216126236%_ (##car _%e126215126233%_))
                              (_%tl126217126238%_ (##cdr _%e126215126233%_)))
                          (if (gx#stx-pair? _%tl126217126238%_)
                              (let ((_%e126218126241%_
                                     (gx#syntax-e _%tl126217126238%_)))
                                (let ((_%hd126219126244%_
                                       (##car _%e126218126241%_))
                                      (_%tl126220126246%_
                                       (##cdr _%e126218126241%_)))
                                  (let ((_%hd126249%_ _%hd126219126244%_))
                                    (if (gx#stx-pair? _%tl126220126246%_)
                                        (let ((_%e126221126251%_
                                               (gx#syntax-e
                                                _%tl126220126246%_)))
                                          (let ((_%hd126222126254%_
                                                 (##car _%e126221126251%_))
                                                (_%tl126223126256%_
                                                 (##cdr _%e126221126251%_)))
                                            (let ((_%body126259%_
                                                   _%hd126222126254%_))
                                              (if (gx#stx-null?
                                                   _%tl126223126256%_)
                                                  (if '#t
                                                      (cons _%form126211%_
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-lambda-clause
                           _%hd126249%_)
                          (cons (gx#core-compile-top-syntax _%body126259%_)
                                '())))
              (_%E126214126229%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E126214126229%_)))))
                                        (_%E126214126229%_)))))
                              (_%E126214126229%_))))
                      (_%E126214126229%_)))))
          (_%E126213126261%_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_%stx126268%_)
        (let ((_%form126270%_ '%#let-values))
          (gx#core-compile-top-let-values%__% _%stx126268%_ _%form126270%_))))
    (define gx#core-compile-top-let-values%
      (lambda _g127095_
        (let ((_g127094_ (##length _g127095_)))
          (cond ((##fx= _g127094_ 1)
                 (apply (lambda (_%stx126268%_)
                          (gx#core-compile-top-let-values%__0 _%stx126268%_))
                        _g127095_))
                ((##fx= _g127094_ 2)
                 (apply (lambda (_%stx126272%_ _%form126273%_)
                          (gx#core-compile-top-let-values%__%
                           _%stx126272%_
                           _%form126273%_))
                        _g127095_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g127095_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_%stx126207%_)
        (gx#core-compile-top-let-values%__% _%stx126207%_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_%stx126205%_)
        (gx#core-compile-top-let-values%__% _%stx126205%_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_%stx126164%_)
        (let* ((_%e126165126175%_ _%stx126164%_)
               (_%E126167126179%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126165126175%_)))
               (_%E126166126201%_
                (lambda ()
                  (if (gx#stx-pair? _%e126165126175%_)
                      (let ((_%e126168126183%_
                             (gx#syntax-e _%e126165126175%_)))
                        (let ((_%hd126169126186%_ (##car _%e126168126183%_))
                              (_%tl126170126188%_ (##cdr _%e126168126183%_)))
                          (if (gx#stx-pair? _%tl126170126188%_)
                              (let ((_%e126171126191%_
                                     (gx#syntax-e _%tl126170126188%_)))
                                (let ((_%hd126172126194%_
                                       (##car _%e126171126191%_))
                                      (_%tl126173126196%_
                                       (##cdr _%e126171126191%_)))
                                  (let ((_%e126199%_ _%hd126172126194%_))
                                    (if (gx#stx-null? _%tl126173126196%_)
                                        (if '#t
                                            (cons '%#quote
                                                  (cons (gx#syntax->datum
                                                         _%e126199%_)
                                                        '()))
                                            (_%E126167126179%_))
                                        (_%E126167126179%_)))))
                              (_%E126167126179%_))))
                      (_%E126167126179%_)))))
          (_%E126166126201%_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_%stx126123%_)
        (let* ((_%e126124126134%_ _%stx126123%_)
               (_%E126126126138%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126124126134%_)))
               (_%E126125126160%_
                (lambda ()
                  (if (gx#stx-pair? _%e126124126134%_)
                      (let ((_%e126127126142%_
                             (gx#syntax-e _%e126124126134%_)))
                        (let ((_%hd126128126145%_ (##car _%e126127126142%_))
                              (_%tl126129126147%_ (##cdr _%e126127126142%_)))
                          (if (gx#stx-pair? _%tl126129126147%_)
                              (let ((_%e126130126150%_
                                     (gx#syntax-e _%tl126129126147%_)))
                                (let ((_%hd126131126153%_
                                       (##car _%e126130126150%_))
                                      (_%tl126132126155%_
                                       (##cdr _%e126130126150%_)))
                                  (let ((_%e126158%_ _%hd126131126153%_))
                                    (if (gx#stx-null? _%tl126132126155%_)
                                        (if '#t
                                            (cons '%#quote-syntax
                                                  (cons (gx#core-quote-syntax__0
                                                         _%e126158%_)
                                                        '()))
                                            (_%E126126126138%_))
                                        (_%E126126126138%_)))))
                              (_%E126126126138%_))))
                      (_%E126126126138%_)))))
          (_%E126125126160%_))))
    (define gx#core-compile-top-call%
      (lambda (_%stx126080%_)
        (let* ((_%e126081126091%_ _%stx126080%_)
               (_%E126083126095%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126081126091%_)))
               (_%E126082126119%_
                (lambda ()
                  (if (gx#stx-pair? _%e126081126091%_)
                      (let ((_%e126084126099%_
                             (gx#syntax-e _%e126081126091%_)))
                        (let ((_%hd126085126102%_ (##car _%e126084126099%_))
                              (_%tl126086126104%_ (##cdr _%e126084126099%_)))
                          (if (gx#stx-pair? _%tl126086126104%_)
                              (let ((_%e126087126107%_
                                     (gx#syntax-e _%tl126086126104%_)))
                                (let ((_%hd126088126110%_
                                       (##car _%e126087126107%_))
                                      (_%tl126089126112%_
                                       (##cdr _%e126087126107%_)))
                                  (let* ((_%rator126115%_ _%hd126088126110%_)
                                         (_%args126117%_ _%tl126089126112%_))
                                    (if '#t
                                        (cons '%#call
                                              (cons (gx#core-compile-top-syntax
                                                     _%rator126115%_)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _%args126117%_)))
                                        (_%E126083126095%_)))))
                              (_%E126083126095%_))))
                      (_%E126083126095%_)))))
          (_%E126082126119%_))))
    (define gx#core-compile-top-if%
      (lambda (_%stx126013%_)
        (let* ((_%e126014126030%_ _%stx126013%_)
               (_%E126016126034%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126014126030%_)))
               (_%E126015126076%_
                (lambda ()
                  (if (gx#stx-pair? _%e126014126030%_)
                      (let ((_%e126017126038%_
                             (gx#syntax-e _%e126014126030%_)))
                        (let ((_%hd126018126041%_ (##car _%e126017126038%_))
                              (_%tl126019126043%_ (##cdr _%e126017126038%_)))
                          (if (gx#stx-pair? _%tl126019126043%_)
                              (let ((_%e126020126046%_
                                     (gx#syntax-e _%tl126019126043%_)))
                                (let ((_%hd126021126049%_
                                       (##car _%e126020126046%_))
                                      (_%tl126022126051%_
                                       (##cdr _%e126020126046%_)))
                                  (let ((_%test126054%_ _%hd126021126049%_))
                                    (if (gx#stx-pair? _%tl126022126051%_)
                                        (let ((_%e126023126056%_
                                               (gx#syntax-e
                                                _%tl126022126051%_)))
                                          (let ((_%hd126024126059%_
                                                 (##car _%e126023126056%_))
                                                (_%tl126025126061%_
                                                 (##cdr _%e126023126056%_)))
                                            (let ((_%K126064%_
                                                   _%hd126024126059%_))
                                              (if (gx#stx-pair?
                                                   _%tl126025126061%_)
                                                  (let ((_%e126026126066%_
                                                         (gx#syntax-e
                                                          _%tl126025126061%_)))
                                                    (let ((_%hd126027126069%_
                                                           (##car _%e126026126066%_))
                                                          (_%tl126028126071%_
                                                           (##cdr _%e126026126066%_)))
                                                      (let ((_%E126074%_
                                                             _%hd126027126069%_))
                                                        (if (gx#stx-null?
                                                             _%tl126028126071%_)
                                                            (if '#t
                                                                (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#core-compile-top-syntax _%test126054%_)
                                    (cons (gx#core-compile-top-syntax
                                           _%K126064%_)
                                          (cons (gx#core-compile-top-syntax
                                                 _%E126074%_)
                                                '()))))
                        (_%E126016126034%_))
                    (_%E126016126034%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E126016126034%_)))))
                                        (_%E126016126034%_)))))
                              (_%E126016126034%_))))
                      (_%E126016126034%_)))))
          (_%E126015126076%_))))
    (define gx#core-compile-top-ref%
      (lambda (_%stx125972%_)
        (let* ((_%e125973125983%_ _%stx125972%_)
               (_%E125975125987%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125973125983%_)))
               (_%E125974126009%_
                (lambda ()
                  (if (gx#stx-pair? _%e125973125983%_)
                      (let ((_%e125976125991%_
                             (gx#syntax-e _%e125973125983%_)))
                        (let ((_%hd125977125994%_ (##car _%e125976125991%_))
                              (_%tl125978125996%_ (##cdr _%e125976125991%_)))
                          (if (gx#stx-pair? _%tl125978125996%_)
                              (let ((_%e125979125999%_
                                     (gx#syntax-e _%tl125978125996%_)))
                                (let ((_%hd125980126002%_
                                       (##car _%e125979125999%_))
                                      (_%tl125981126004%_
                                       (##cdr _%e125979125999%_)))
                                  (let ((_%id126007%_ _%hd125980126002%_))
                                    (if (gx#stx-null? _%tl125981126004%_)
                                        (if (gx#identifier? _%id126007%_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _%id126007%_)
                                                        '()))
                                            (_%E125975125987%_))
                                        (_%E125975125987%_)))))
                              (_%E125975125987%_))))
                      (_%E125975125987%_)))))
          (_%E125974126009%_))))
    (define gx#core-compile-top-setq%
      (lambda (_%stx125918%_)
        (let* ((_%e125919125932%_ _%stx125918%_)
               (_%E125921125936%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125919125932%_)))
               (_%E125920125968%_
                (lambda ()
                  (if (gx#stx-pair? _%e125919125932%_)
                      (let ((_%e125922125940%_
                             (gx#syntax-e _%e125919125932%_)))
                        (let ((_%hd125923125943%_ (##car _%e125922125940%_))
                              (_%tl125924125945%_ (##cdr _%e125922125940%_)))
                          (if (gx#stx-pair? _%tl125924125945%_)
                              (let ((_%e125925125948%_
                                     (gx#syntax-e _%tl125924125945%_)))
                                (let ((_%hd125926125951%_
                                       (##car _%e125925125948%_))
                                      (_%tl125927125953%_
                                       (##cdr _%e125925125948%_)))
                                  (let ((_%id125956%_ _%hd125926125951%_))
                                    (if (gx#stx-pair? _%tl125927125953%_)
                                        (let ((_%e125928125958%_
                                               (gx#syntax-e
                                                _%tl125927125953%_)))
                                          (let ((_%hd125929125961%_
                                                 (##car _%e125928125958%_))
                                                (_%tl125930125963%_
                                                 (##cdr _%e125928125958%_)))
                                            (let ((_%expr125966%_
                                                   _%hd125929125961%_))
                                              (if (gx#stx-null?
                                                   _%tl125930125963%_)
                                                  (if (gx#identifier?
                                                       _%id125956%_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%id125956%_)
                          (cons (gx#core-compile-top-syntax _%expr125966%_)
                                '())))
              (_%E125921125936%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E125921125936%_)))))
                                        (_%E125921125936%_)))))
                              (_%E125921125936%_))))
                      (_%E125921125936%_)))))
          (_%E125920125968%_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_%id125912%_)
        (let ((_%$e125914%_ (gx#resolve-identifier__0 _%id125912%_)))
          (if _%$e125914%_
              (##unchecked-structure-ref _%$e125914%_ '1 '#f '#f)
              (let () _%id125912%_)))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_%hd125910%_)
        (if (gx#identifier? _%hd125910%_)
            (gx#core-compile-top-runtime-ref _%hd125910%_)
            '#f)))))
