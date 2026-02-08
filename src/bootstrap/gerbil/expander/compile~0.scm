(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1770513297)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_%stx183864%_)
        (let* ((_%e183865183872%_ _%stx183864%_)
               (_%E183867183876%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e183865183872%_)))
               (_%E183866183890%_
                (lambda ()
                  (if (gx#stx-pair? _%e183865183872%_)
                      (let ((_%e183868183880%_
                             (gx#syntax-e _%e183865183872%_)))
                        (let ((_%hd183869183883%_ (##car _%e183868183880%_))
                              (_%tl183870183885%_ (##cdr _%e183868183880%_)))
                          (let* ((_%form183888%_ _%hd183869183883%_)
                                 (__self183893
                                  (gx#syntax-local-e__0 _%form183888%_))
                                 (__method183894
                                  (__method-ref
                                   __self183893
                                   'compile-top-syntax)))
                            (if __method183894
                                (__method183894 __self183893 _%stx183864%_)
                                (begin
                                  (error '"Missing method"
                                         __self183893
                                         'compile-top-syntax)
                                  '#!void)))))
                      (_%E183867183876%_)))))
          (_%E183866183890%_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_%self183813%_ _%stx183814%_)
        (let* ((_%self183817%_ _%self183813%_)
               (_%self183826183834%_ _%self183817%_)
               (_%E183828183837%_
                (lambda ()
                  (error '"No clause matching"
                         _%self183826183834%_
                         '((core-expander _ _ K)))
                  '#!void))
               (_%K183829183850%_
                (lambda (_%K183840%_)
                  (let ((_%$e183842%_ (gx#stx-source _%stx183814%_)))
                    (if _%$e183842%_
                        ((lambda (_%g183844183846%_)
                           (gx#stx-wrap-source
                            (_%K183840%_ _%stx183814%_)
                            _%g183844183846%_))
                         _%$e183842%_)
                        (_%K183840%_ _%stx183814%_)))))
               (_%e183830183853%_
                (##unchecked-structure-ref _%self183826183834%_ '1 '#f '#f))
               (_%e183831183856%_
                (##unchecked-structure-ref _%self183826183834%_ '2 '#f '#f))
               (_%e183832183859%_
                (##unchecked-structure-ref _%self183826183834%_ '3 '#f '#f))
               (_%K183862%_ _%e183832183859%_))
          (_%K183829183850%_ _%K183862%_))))
    (__bind-method!__%
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_%stx183687%_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _%stx183687%_)))
    (define gx#core-compile-top-begin%
      (lambda (_%stx183657%_)
        (let* ((_%e183658183665%_ _%stx183657%_)
               (_%E183660183669%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e183658183665%_)))
               (_%E183659183683%_
                (lambda ()
                  (if (gx#stx-pair? _%e183658183665%_)
                      (let ((_%e183661183673%_
                             (gx#syntax-e _%e183658183665%_)))
                        (let ((_%hd183662183676%_ (##car _%e183661183673%_))
                              (_%tl183663183678%_ (##cdr _%e183661183673%_)))
                          (let ((_%body183681%_ _%tl183663183678%_))
                            (cons '%#begin
                                  (gx#stx-map1
                                   gx#core-compile-top-syntax
                                   _%body183681%_)))))
                      (_%E183660183669%_)))))
          (_%E183659183683%_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_%stx183626%_)
        (let* ((_%e183627183634%_ _%stx183626%_)
               (_%E183629183638%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e183627183634%_)))
               (_%E183628183653%_
                (lambda ()
                  (if (gx#stx-pair? _%e183627183634%_)
                      (let ((_%e183630183642%_
                             (gx#syntax-e _%e183627183634%_)))
                        (let ((_%hd183631183645%_ (##car _%e183630183642%_))
                              (_%tl183632183647%_ (##cdr _%e183630183642%_)))
                          (let ((_%body183650%_ _%tl183632183647%_))
                            (cons '%#begin-syntax
                                  (call-with-parameters__1
                                   (lambda ()
                                     (gx#stx-map1
                                      gx#core-compile-top-syntax
                                      _%body183650%_))
                                   gx#current-expander-phi
                                   (##fx+ (gx#current-expander-phi) '1))))))
                      (_%E183629183638%_)))))
          (_%E183628183653%_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_%stx183596%_)
        (let* ((_%e183597183604%_ _%stx183596%_)
               (_%E183599183608%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e183597183604%_)))
               (_%E183598183622%_
                (lambda ()
                  (if (gx#stx-pair? _%e183597183604%_)
                      (let ((_%e183600183612%_
                             (gx#syntax-e _%e183597183604%_)))
                        (let ((_%hd183601183615%_ (##car _%e183600183612%_))
                              (_%tl183602183617%_ (##cdr _%e183600183612%_)))
                          (let ((_%body183620%_ _%tl183602183617%_))
                            (cons '%#begin-foreign _%body183620%_))))
                      (_%E183599183608%_)))))
          (_%E183598183622%_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_%stx183542%_)
        (let* ((_%e183543183556%_ _%stx183542%_)
               (_%E183545183560%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e183543183556%_)))
               (_%E183544183592%_
                (lambda ()
                  (if (gx#stx-pair? _%e183543183556%_)
                      (let ((_%e183546183564%_
                             (gx#syntax-e _%e183543183556%_)))
                        (let ((_%hd183547183567%_ (##car _%e183546183564%_))
                              (_%tl183548183569%_ (##cdr _%e183546183564%_)))
                          (if (gx#stx-pair? _%tl183548183569%_)
                              (let ((_%e183549183572%_
                                     (gx#syntax-e _%tl183548183569%_)))
                                (let ((_%hd183550183575%_
                                       (##car _%e183549183572%_))
                                      (_%tl183551183577%_
                                       (##cdr _%e183549183572%_)))
                                  (let ((_%ann183580%_ _%hd183550183575%_))
                                    (if (gx#stx-pair? _%tl183551183577%_)
                                        (let ((_%e183552183582%_
                                               (gx#syntax-e
                                                _%tl183551183577%_)))
                                          (let ((_%hd183553183585%_
                                                 (##car _%e183552183582%_))
                                                (_%tl183554183587%_
                                                 (##cdr _%e183552183582%_)))
                                            (let ((_%expr183590%_
                                                   _%hd183553183585%_))
                                              (if (gx#stx-null?
                                                   _%tl183554183587%_)
                                                  (gx#core-compile-top-syntax
                                                   _%expr183590%_)
                                                  (_%E183545183560%_)))))
                                        (_%E183545183560%_)))))
                              (_%E183545183560%_))))
                      (_%E183545183560%_)))))
          (_%E183544183592%_))))
    (define gx#core-compile-top-import%
      (lambda (_%stx183512%_)
        (let* ((_%e183513183520%_ _%stx183512%_)
               (_%E183515183524%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e183513183520%_)))
               (_%E183514183538%_
                (lambda ()
                  (if (gx#stx-pair? _%e183513183520%_)
                      (let ((_%e183516183528%_
                             (gx#syntax-e _%e183513183520%_)))
                        (let ((_%hd183517183531%_ (##car _%e183516183528%_))
                              (_%tl183518183533%_ (##cdr _%e183516183528%_)))
                          (let ((_%body183536%_ _%tl183518183533%_))
                            (cons '%#import _%body183536%_))))
                      (_%E183515183524%_)))))
          (_%E183514183538%_))))
    (define gx#core-compile-top-module%
      (lambda (_%stx183469%_)
        (let* ((_%e183470183480%_ _%stx183469%_)
               (_%E183472183484%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e183470183480%_)))
               (_%E183471183508%_
                (lambda ()
                  (if (gx#stx-pair? _%e183470183480%_)
                      (let ((_%e183473183488%_
                             (gx#syntax-e _%e183470183480%_)))
                        (let ((_%hd183474183491%_ (##car _%e183473183488%_))
                              (_%tl183475183493%_ (##cdr _%e183473183488%_)))
                          (if (gx#stx-pair? _%tl183475183493%_)
                              (let ((_%e183476183496%_
                                     (gx#syntax-e _%tl183475183493%_)))
                                (let ((_%hd183477183499%_
                                       (##car _%e183476183496%_))
                                      (_%tl183478183501%_
                                       (##cdr _%e183476183496%_)))
                                  (let* ((_%hd183504%_ _%hd183477183499%_)
                                         (_%body183506%_ _%tl183478183501%_))
                                    (cons '%#module
                                          (cons (##structure-ref
                                                 (gx#syntax-local-e__0
                                                  _%hd183504%_)
                                                 '1
                                                 gx#expander-context::t
                                                 '#f)
                                                (gx#stx-map1
                                                 gx#core-compile-top-syntax
                                                 _%body183506%_))))))
                              (_%E183472183484%_))))
                      (_%E183472183484%_)))))
          (_%E183471183508%_))))
    (define gx#core-compile-top-export%
      (lambda (_%stx183439%_)
        (let* ((_%e183440183447%_ _%stx183439%_)
               (_%E183442183451%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e183440183447%_)))
               (_%E183441183465%_
                (lambda ()
                  (if (gx#stx-pair? _%e183440183447%_)
                      (let ((_%e183443183455%_
                             (gx#syntax-e _%e183440183447%_)))
                        (let ((_%hd183444183458%_ (##car _%e183443183455%_))
                              (_%tl183445183460%_ (##cdr _%e183443183455%_)))
                          (let ((_%body183463%_ _%tl183445183460%_))
                            (cons '%#export _%body183463%_))))
                      (_%E183442183451%_)))))
          (_%E183441183465%_))))
    (define gx#core-compile-top-provide%
      (lambda (_%stx183409%_)
        (let* ((_%e183410183417%_ _%stx183409%_)
               (_%E183412183421%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e183410183417%_)))
               (_%E183411183435%_
                (lambda ()
                  (if (gx#stx-pair? _%e183410183417%_)
                      (let ((_%e183413183425%_
                             (gx#syntax-e _%e183410183417%_)))
                        (let ((_%hd183414183428%_ (##car _%e183413183425%_))
                              (_%tl183415183430%_ (##cdr _%e183413183425%_)))
                          (let ((_%body183433%_ _%tl183415183430%_))
                            (cons '%#provide _%body183433%_))))
                      (_%E183412183421%_)))))
          (_%E183411183435%_))))
    (define gx#core-compile-top-extern%
      (lambda (_%stx183379%_)
        (let* ((_%e183380183387%_ _%stx183379%_)
               (_%E183382183391%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e183380183387%_)))
               (_%E183381183405%_
                (lambda ()
                  (if (gx#stx-pair? _%e183380183387%_)
                      (let ((_%e183383183395%_
                             (gx#syntax-e _%e183380183387%_)))
                        (let ((_%hd183384183398%_ (##car _%e183383183395%_))
                              (_%tl183385183400%_ (##cdr _%e183383183395%_)))
                          (let ((_%body183403%_ _%tl183385183400%_))
                            (cons '%#extern _%body183403%_))))
                      (_%E183382183391%_)))))
          (_%E183381183405%_))))
    (define gx#core-compile-top-define-values%
      (lambda (_%stx183325%_)
        (let* ((_%e183326183339%_ _%stx183325%_)
               (_%E183328183343%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e183326183339%_)))
               (_%E183327183375%_
                (lambda ()
                  (if (gx#stx-pair? _%e183326183339%_)
                      (let ((_%e183329183347%_
                             (gx#syntax-e _%e183326183339%_)))
                        (let ((_%hd183330183350%_ (##car _%e183329183347%_))
                              (_%tl183331183352%_ (##cdr _%e183329183347%_)))
                          (if (gx#stx-pair? _%tl183331183352%_)
                              (let ((_%e183332183355%_
                                     (gx#syntax-e _%tl183331183352%_)))
                                (let ((_%hd183333183358%_
                                       (##car _%e183332183355%_))
                                      (_%tl183334183360%_
                                       (##cdr _%e183332183355%_)))
                                  (let ((_%hd183363%_ _%hd183333183358%_))
                                    (if (gx#stx-pair? _%tl183334183360%_)
                                        (let ((_%e183335183365%_
                                               (gx#syntax-e
                                                _%tl183334183360%_)))
                                          (let ((_%hd183336183368%_
                                                 (##car _%e183335183365%_))
                                                (_%tl183337183370%_
                                                 (##cdr _%e183335183365%_)))
                                            (let ((_%expr183373%_
                                                   _%hd183336183368%_))
                                              (if (gx#stx-null?
                                                   _%tl183337183370%_)
                                                  (cons '%#define-values
                                                        (cons (gx#stx-map1
                                                               gx#core-compile-top-runtime-bind
                                                               _%hd183363%_)
                                                              (cons (gx#core-compile-top-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%expr183373%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E183328183343%_)))))
                                        (_%E183328183343%_)))))
                              (_%E183328183343%_))))
                      (_%E183328183343%_)))))
          (_%E183327183375%_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_%stx183270%_)
        (let* ((_%e183271183284%_ _%stx183270%_)
               (_%E183273183288%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e183271183284%_)))
               (_%E183272183321%_
                (lambda ()
                  (if (gx#stx-pair? _%e183271183284%_)
                      (let ((_%e183274183292%_
                             (gx#syntax-e _%e183271183284%_)))
                        (let ((_%hd183275183295%_ (##car _%e183274183292%_))
                              (_%tl183276183297%_ (##cdr _%e183274183292%_)))
                          (if (gx#stx-pair? _%tl183276183297%_)
                              (let ((_%e183277183300%_
                                     (gx#syntax-e _%tl183276183297%_)))
                                (let ((_%hd183278183303%_
                                       (##car _%e183277183300%_))
                                      (_%tl183279183305%_
                                       (##cdr _%e183277183300%_)))
                                  (let ((_%hd183308%_ _%hd183278183303%_))
                                    (if (gx#stx-pair? _%tl183279183305%_)
                                        (let ((_%e183280183310%_
                                               (gx#syntax-e
                                                _%tl183279183305%_)))
                                          (let ((_%hd183281183313%_
                                                 (##car _%e183280183310%_))
                                                (_%tl183282183315%_
                                                 (##cdr _%e183280183310%_)))
                                            (let ((_%expr183318%_
                                                   _%hd183281183313%_))
                                              (if (gx#stx-null?
                                                   _%tl183282183315%_)
                                                  (cons '%#define-syntax
                                                        (cons _%hd183308%_
                                                              (cons (call-with-parameters__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda ()
                               (gx#core-compile-top-syntax _%expr183318%_))
                             gx#current-expander-phi
                             (##fx+ (gx#current-expander-phi) '1))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E183273183288%_)))))
                                        (_%E183273183288%_)))))
                              (_%E183273183288%_))))
                      (_%E183273183288%_)))))
          (_%E183272183321%_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_%stx183240%_)
        (let* ((_%e183241183248%_ _%stx183240%_)
               (_%E183243183252%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e183241183248%_)))
               (_%E183242183266%_
                (lambda ()
                  (if (gx#stx-pair? _%e183241183248%_)
                      (let ((_%e183244183256%_
                             (gx#syntax-e _%e183241183248%_)))
                        (let ((_%hd183245183259%_ (##car _%e183244183256%_))
                              (_%tl183246183261%_ (##cdr _%e183244183256%_)))
                          (let ((_%body183264%_ _%tl183246183261%_))
                            (cons '%#define-alias _%body183264%_))))
                      (_%E183243183252%_)))))
          (_%E183242183266%_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_%stx183210%_)
        (let* ((_%e183211183218%_ _%stx183210%_)
               (_%E183213183222%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e183211183218%_)))
               (_%E183212183236%_
                (lambda ()
                  (if (gx#stx-pair? _%e183211183218%_)
                      (let ((_%e183214183226%_
                             (gx#syntax-e _%e183211183218%_)))
                        (let ((_%hd183215183229%_ (##car _%e183214183226%_))
                              (_%tl183216183231%_ (##cdr _%e183214183226%_)))
                          (let ((_%body183234%_ _%tl183216183231%_))
                            (cons '%#define-runtime _%body183234%_))))
                      (_%E183213183222%_)))))
          (_%E183212183236%_))))
    (define gx#core-compile-top-declare%
      (lambda (_%stx183180%_)
        (let* ((_%e183181183188%_ _%stx183180%_)
               (_%E183183183192%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e183181183188%_)))
               (_%E183182183206%_
                (lambda ()
                  (if (gx#stx-pair? _%e183181183188%_)
                      (let ((_%e183184183196%_
                             (gx#syntax-e _%e183181183188%_)))
                        (let ((_%hd183185183199%_ (##car _%e183184183196%_))
                              (_%tl183186183201%_ (##cdr _%e183184183196%_)))
                          (let ((_%decls183204%_ _%tl183186183201%_))
                            (cons '%#declare _%decls183204%_))))
                      (_%E183183183192%_)))))
          (_%E183182183206%_))))
    (define gx#core-compile-top-lambda%
      (lambda (_%stx183150%_)
        (let* ((_%e183151183158%_ _%stx183150%_)
               (_%E183153183162%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e183151183158%_)))
               (_%E183152183176%_
                (lambda ()
                  (if (gx#stx-pair? _%e183151183158%_)
                      (let ((_%e183154183166%_
                             (gx#syntax-e _%e183151183158%_)))
                        (let ((_%hd183155183169%_ (##car _%e183154183166%_))
                              (_%tl183156183171%_ (##cdr _%e183154183166%_)))
                          (let ((_%clause183174%_ _%tl183156183171%_))
                            (cons '%#lambda
                                  (gx#core-compile-top-lambda-clause
                                   _%clause183174%_)))))
                      (_%E183153183162%_)))))
          (_%E183152183176%_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_%stx183107%_)
        (let* ((_%e183108183118%_ _%stx183107%_)
               (_%E183110183122%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e183108183118%_)))
               (_%E183109183146%_
                (lambda ()
                  (if (gx#stx-pair? _%e183108183118%_)
                      (let ((_%e183111183126%_
                             (gx#syntax-e _%e183108183118%_)))
                        (let ((_%hd183112183129%_ (##car _%e183111183126%_))
                              (_%tl183113183131%_ (##cdr _%e183111183126%_)))
                          (let ((_%hd183134%_ _%hd183112183129%_))
                            (if (gx#stx-pair? _%tl183113183131%_)
                                (let ((_%e183114183136%_
                                       (gx#syntax-e _%tl183113183131%_)))
                                  (let ((_%hd183115183139%_
                                         (##car _%e183114183136%_))
                                        (_%tl183116183141%_
                                         (##cdr _%e183114183136%_)))
                                    (let ((_%body183144%_ _%hd183115183139%_))
                                      (if (gx#stx-null? _%tl183116183141%_)
                                          (cons (gx#stx-map1
                                                 gx#core-compile-top-runtime-bind
                                                 _%hd183134%_)
                                                (cons (gx#core-compile-top-syntax
                                                       _%body183144%_)
                                                      '()))
                                          (_%E183110183122%_)))))
                                (_%E183110183122%_)))))
                      (_%E183110183122%_)))))
          (_%E183109183146%_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_%stx183077%_)
        (let* ((_%e183078183085%_ _%stx183077%_)
               (_%E183080183089%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e183078183085%_)))
               (_%E183079183103%_
                (lambda ()
                  (if (gx#stx-pair? _%e183078183085%_)
                      (let ((_%e183081183093%_
                             (gx#syntax-e _%e183078183085%_)))
                        (let ((_%hd183082183096%_ (##car _%e183081183093%_))
                              (_%tl183083183098%_ (##cdr _%e183081183093%_)))
                          (let ((_%clauses183101%_ _%tl183083183098%_))
                            (cons '%#case-lambda
                                  (gx#stx-map1
                                   gx#core-compile-top-lambda-clause
                                   _%clauses183101%_)))))
                      (_%E183080183089%_)))))
          (_%E183079183103%_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_%stx183012%_ _%form183013%_)
        (let* ((_%e183014183027%_ _%stx183012%_)
               (_%E183016183031%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e183014183027%_)))
               (_%E183015183063%_
                (lambda ()
                  (if (gx#stx-pair? _%e183014183027%_)
                      (let ((_%e183017183035%_
                             (gx#syntax-e _%e183014183027%_)))
                        (let ((_%hd183018183038%_ (##car _%e183017183035%_))
                              (_%tl183019183040%_ (##cdr _%e183017183035%_)))
                          (if (gx#stx-pair? _%tl183019183040%_)
                              (let ((_%e183020183043%_
                                     (gx#syntax-e _%tl183019183040%_)))
                                (let ((_%hd183021183046%_
                                       (##car _%e183020183043%_))
                                      (_%tl183022183048%_
                                       (##cdr _%e183020183043%_)))
                                  (let ((_%hd183051%_ _%hd183021183046%_))
                                    (if (gx#stx-pair? _%tl183022183048%_)
                                        (let ((_%e183023183053%_
                                               (gx#syntax-e
                                                _%tl183022183048%_)))
                                          (let ((_%hd183024183056%_
                                                 (##car _%e183023183053%_))
                                                (_%tl183025183058%_
                                                 (##cdr _%e183023183053%_)))
                                            (let ((_%body183061%_
                                                   _%hd183024183056%_))
                                              (if (gx#stx-null?
                                                   _%tl183025183058%_)
                                                  (cons _%form183013%_
                                                        (cons (gx#stx-map1
                                                               gx#core-compile-top-lambda-clause
                                                               _%hd183051%_)
                                                              (cons (gx#core-compile-top-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%body183061%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E183016183031%_)))))
                                        (_%E183016183031%_)))))
                              (_%E183016183031%_))))
                      (_%E183016183031%_)))))
          (_%E183015183063%_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_%stx183070%_)
        (let ((_%form183072%_ '%#let-values))
          (gx#core-compile-top-let-values%__% _%stx183070%_ _%form183072%_))))
    (define gx#core-compile-top-let-values%
      (lambda _g183895_
        (let ((_g183896_ (##length _g183895_)))
          (cond ((##fx= _g183896_ 1)
                 (apply gx#core-compile-top-let-values%__0 _g183895_))
                ((##fx= _g183896_ 2)
                 (apply gx#core-compile-top-let-values%__% _g183895_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g183895_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_%stx183009%_)
        (gx#core-compile-top-let-values%__% _%stx183009%_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_%stx183007%_)
        (gx#core-compile-top-let-values%__% _%stx183007%_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_%stx182966%_)
        (let* ((_%e182967182977%_ _%stx182966%_)
               (_%E182969182981%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e182967182977%_)))
               (_%E182968183003%_
                (lambda ()
                  (if (gx#stx-pair? _%e182967182977%_)
                      (let ((_%e182970182985%_
                             (gx#syntax-e _%e182967182977%_)))
                        (let ((_%hd182971182988%_ (##car _%e182970182985%_))
                              (_%tl182972182990%_ (##cdr _%e182970182985%_)))
                          (if (gx#stx-pair? _%tl182972182990%_)
                              (let ((_%e182973182993%_
                                     (gx#syntax-e _%tl182972182990%_)))
                                (let ((_%hd182974182996%_
                                       (##car _%e182973182993%_))
                                      (_%tl182975182998%_
                                       (##cdr _%e182973182993%_)))
                                  (let ((_%e183001%_ _%hd182974182996%_))
                                    (if (gx#stx-null? _%tl182975182998%_)
                                        (cons '%#quote
                                              (cons (gx#syntax->datum
                                                     _%e183001%_)
                                                    '()))
                                        (_%E182969182981%_)))))
                              (_%E182969182981%_))))
                      (_%E182969182981%_)))))
          (_%E182968183003%_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_%stx182925%_)
        (let* ((_%e182926182936%_ _%stx182925%_)
               (_%E182928182940%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e182926182936%_)))
               (_%E182927182962%_
                (lambda ()
                  (if (gx#stx-pair? _%e182926182936%_)
                      (let ((_%e182929182944%_
                             (gx#syntax-e _%e182926182936%_)))
                        (let ((_%hd182930182947%_ (##car _%e182929182944%_))
                              (_%tl182931182949%_ (##cdr _%e182929182944%_)))
                          (if (gx#stx-pair? _%tl182931182949%_)
                              (let ((_%e182932182952%_
                                     (gx#syntax-e _%tl182931182949%_)))
                                (let ((_%hd182933182955%_
                                       (##car _%e182932182952%_))
                                      (_%tl182934182957%_
                                       (##cdr _%e182932182952%_)))
                                  (let ((_%e182960%_ _%hd182933182955%_))
                                    (if (gx#stx-null? _%tl182934182957%_)
                                        (cons '%#quote-syntax
                                              (cons (gx#core-quote-syntax__0
                                                     _%e182960%_)
                                                    '()))
                                        (_%E182928182940%_)))))
                              (_%E182928182940%_))))
                      (_%E182928182940%_)))))
          (_%E182927182962%_))))
    (define gx#core-compile-top-call%
      (lambda (_%stx182882%_)
        (let* ((_%e182883182893%_ _%stx182882%_)
               (_%E182885182897%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e182883182893%_)))
               (_%E182884182921%_
                (lambda ()
                  (if (gx#stx-pair? _%e182883182893%_)
                      (let ((_%e182886182901%_
                             (gx#syntax-e _%e182883182893%_)))
                        (let ((_%hd182887182904%_ (##car _%e182886182901%_))
                              (_%tl182888182906%_ (##cdr _%e182886182901%_)))
                          (if (gx#stx-pair? _%tl182888182906%_)
                              (let ((_%e182889182909%_
                                     (gx#syntax-e _%tl182888182906%_)))
                                (let ((_%hd182890182912%_
                                       (##car _%e182889182909%_))
                                      (_%tl182891182914%_
                                       (##cdr _%e182889182909%_)))
                                  (let* ((_%rator182917%_ _%hd182890182912%_)
                                         (_%args182919%_ _%tl182891182914%_))
                                    (cons '%#call
                                          (cons (gx#core-compile-top-syntax
                                                 _%rator182917%_)
                                                (gx#stx-map1
                                                 gx#core-compile-top-syntax
                                                 _%args182919%_))))))
                              (_%E182885182897%_))))
                      (_%E182885182897%_)))))
          (_%E182884182921%_))))
    (define gx#core-compile-top-if%
      (lambda (_%stx182815%_)
        (let* ((_%e182816182832%_ _%stx182815%_)
               (_%E182818182836%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e182816182832%_)))
               (_%E182817182878%_
                (lambda ()
                  (if (gx#stx-pair? _%e182816182832%_)
                      (let ((_%e182819182840%_
                             (gx#syntax-e _%e182816182832%_)))
                        (let ((_%hd182820182843%_ (##car _%e182819182840%_))
                              (_%tl182821182845%_ (##cdr _%e182819182840%_)))
                          (if (gx#stx-pair? _%tl182821182845%_)
                              (let ((_%e182822182848%_
                                     (gx#syntax-e _%tl182821182845%_)))
                                (let ((_%hd182823182851%_
                                       (##car _%e182822182848%_))
                                      (_%tl182824182853%_
                                       (##cdr _%e182822182848%_)))
                                  (let ((_%test182856%_ _%hd182823182851%_))
                                    (if (gx#stx-pair? _%tl182824182853%_)
                                        (let ((_%e182825182858%_
                                               (gx#syntax-e
                                                _%tl182824182853%_)))
                                          (let ((_%hd182826182861%_
                                                 (##car _%e182825182858%_))
                                                (_%tl182827182863%_
                                                 (##cdr _%e182825182858%_)))
                                            (let ((_%K182866%_
                                                   _%hd182826182861%_))
                                              (if (gx#stx-pair?
                                                   _%tl182827182863%_)
                                                  (let ((_%e182828182868%_
                                                         (gx#syntax-e
                                                          _%tl182827182863%_)))
                                                    (let ((_%hd182829182871%_
                                                           (##car _%e182828182868%_))
                                                          (_%tl182830182873%_
                                                           (##cdr _%e182828182868%_)))
                                                      (let ((_%E182876%_
                                                             _%hd182829182871%_))
                                                        (if (gx#stx-null?
                                                             _%tl182830182873%_)
                                                            (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#core-compile-top-syntax _%test182856%_)
                                (cons (gx#core-compile-top-syntax _%K182866%_)
                                      (cons (gx#core-compile-top-syntax
                                             _%E182876%_)
                                            '()))))
                    (_%E182818182836%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E182818182836%_)))))
                                        (_%E182818182836%_)))))
                              (_%E182818182836%_))))
                      (_%E182818182836%_)))))
          (_%E182817182878%_))))
    (define gx#core-compile-top-ref%
      (lambda (_%stx182774%_)
        (let* ((_%e182775182785%_ _%stx182774%_)
               (_%E182777182789%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e182775182785%_)))
               (_%E182776182811%_
                (lambda ()
                  (if (gx#stx-pair? _%e182775182785%_)
                      (let ((_%e182778182793%_
                             (gx#syntax-e _%e182775182785%_)))
                        (let ((_%hd182779182796%_ (##car _%e182778182793%_))
                              (_%tl182780182798%_ (##cdr _%e182778182793%_)))
                          (if (gx#stx-pair? _%tl182780182798%_)
                              (let ((_%e182781182801%_
                                     (gx#syntax-e _%tl182780182798%_)))
                                (let ((_%hd182782182804%_
                                       (##car _%e182781182801%_))
                                      (_%tl182783182806%_
                                       (##cdr _%e182781182801%_)))
                                  (let ((_%id182809%_ _%hd182782182804%_))
                                    (if (gx#stx-null? _%tl182783182806%_)
                                        (if (gx#identifier? _%id182809%_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _%id182809%_)
                                                        '()))
                                            (_%E182777182789%_))
                                        (_%E182777182789%_)))))
                              (_%E182777182789%_))))
                      (_%E182777182789%_)))))
          (_%E182776182811%_))))
    (define gx#core-compile-top-setq%
      (lambda (_%stx182720%_)
        (let* ((_%e182721182734%_ _%stx182720%_)
               (_%E182723182738%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e182721182734%_)))
               (_%E182722182770%_
                (lambda ()
                  (if (gx#stx-pair? _%e182721182734%_)
                      (let ((_%e182724182742%_
                             (gx#syntax-e _%e182721182734%_)))
                        (let ((_%hd182725182745%_ (##car _%e182724182742%_))
                              (_%tl182726182747%_ (##cdr _%e182724182742%_)))
                          (if (gx#stx-pair? _%tl182726182747%_)
                              (let ((_%e182727182750%_
                                     (gx#syntax-e _%tl182726182747%_)))
                                (let ((_%hd182728182753%_
                                       (##car _%e182727182750%_))
                                      (_%tl182729182755%_
                                       (##cdr _%e182727182750%_)))
                                  (let ((_%id182758%_ _%hd182728182753%_))
                                    (if (gx#stx-pair? _%tl182729182755%_)
                                        (let ((_%e182730182760%_
                                               (gx#syntax-e
                                                _%tl182729182755%_)))
                                          (let ((_%hd182731182763%_
                                                 (##car _%e182730182760%_))
                                                (_%tl182732182765%_
                                                 (##cdr _%e182730182760%_)))
                                            (let ((_%expr182768%_
                                                   _%hd182731182763%_))
                                              (if (gx#stx-null?
                                                   _%tl182732182765%_)
                                                  (if (gx#identifier?
                                                       _%id182758%_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%id182758%_)
                          (cons (gx#core-compile-top-syntax _%expr182768%_)
                                '())))
              (_%E182723182738%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E182723182738%_)))))
                                        (_%E182723182738%_)))))
                              (_%E182723182738%_))))
                      (_%E182723182738%_)))))
          (_%E182722182770%_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_%id182714%_)
        (let ((_%$e182716%_ (gx#resolve-identifier__0 _%id182714%_)))
          (if _%$e182716%_
              (##unchecked-structure-ref _%$e182716%_ '1 '#f '#f)
              _%id182714%_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_%hd182712%_)
        (if (gx#identifier? _%hd182712%_)
            (gx#core-compile-top-runtime-ref _%hd182712%_)
            '#f)))))
