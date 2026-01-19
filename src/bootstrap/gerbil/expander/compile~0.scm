(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1768865824)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_%stx142163%_)
        (let* ((_%e142164142171%_ _%stx142163%_)
               (_%E142166142175%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e142164142171%_)))
               (_%E142165142189%_
                (lambda ()
                  (if (gx#stx-pair? _%e142164142171%_)
                      (let ((_%e142167142179%_
                             (gx#syntax-e _%e142164142171%_)))
                        (let ((_%hd142168142182%_ (##car _%e142167142179%_))
                              (_%tl142169142184%_ (##cdr _%e142167142179%_)))
                          (let* ((_%form142187%_ _%hd142168142182%_)
                                 (__self142192
                                  (gx#syntax-local-e__0 _%form142187%_))
                                 (__method142193
                                  (__method-ref
                                   __self142192
                                   'compile-top-syntax)))
                            (if __method142193
                                (__method142193 __self142192 _%stx142163%_)
                                (begin
                                  (error '"Missing method"
                                         __self142192
                                         'compile-top-syntax)
                                  '#!void)))))
                      (_%E142166142175%_)))))
          (_%E142165142189%_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_%self142111%_ _%stx142112%_)
        (let* ((_%self142115%_ _%self142111%_)
               (_%self142124142132%_ _%self142115%_)
               (_%E142126142136%_
                (lambda ()
                  (error '"No clause matching"
                         _%self142124142132%_
                         '((core-expander _ _ K)))
                  '#!void))
               (_%K142127142149%_
                (lambda (_%K142139%_)
                  (let ((_%$e142141%_ (gx#stx-source _%stx142112%_)))
                    (if _%$e142141%_
                        ((lambda (_%g142143142145%_)
                           (gx#stx-wrap-source
                            (_%K142139%_ _%stx142112%_)
                            _%g142143142145%_))
                         _%$e142141%_)
                        (_%K142139%_ _%stx142112%_)))))
               (_%e142128142152%_
                (##unchecked-structure-ref _%self142124142132%_ '1 '#f '#f))
               (_%e142129142155%_
                (##unchecked-structure-ref _%self142124142132%_ '2 '#f '#f))
               (_%e142130142158%_
                (##unchecked-structure-ref _%self142124142132%_ '3 '#f '#f))
               (_%K142161%_ _%e142130142158%_))
          (_%K142127142149%_ _%K142161%_))))
    (__bind-method!__%
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_%stx141985%_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _%stx141985%_)))
    (define gx#core-compile-top-begin%
      (lambda (_%stx141955%_)
        (let* ((_%e141956141963%_ _%stx141955%_)
               (_%E141958141967%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e141956141963%_)))
               (_%E141957141981%_
                (lambda ()
                  (if (gx#stx-pair? _%e141956141963%_)
                      (let ((_%e141959141971%_
                             (gx#syntax-e _%e141956141963%_)))
                        (let ((_%hd141960141974%_ (##car _%e141959141971%_))
                              (_%tl141961141976%_ (##cdr _%e141959141971%_)))
                          (let ((_%body141979%_ _%tl141961141976%_))
                            (cons '%#begin
                                  (gx#stx-map1
                                   gx#core-compile-top-syntax
                                   _%body141979%_)))))
                      (_%E141958141967%_)))))
          (_%E141957141981%_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_%stx141924%_)
        (let* ((_%e141925141932%_ _%stx141924%_)
               (_%E141927141936%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e141925141932%_)))
               (_%E141926141951%_
                (lambda ()
                  (if (gx#stx-pair? _%e141925141932%_)
                      (let ((_%e141928141940%_
                             (gx#syntax-e _%e141925141932%_)))
                        (let ((_%hd141929141943%_ (##car _%e141928141940%_))
                              (_%tl141930141945%_ (##cdr _%e141928141940%_)))
                          (let ((_%body141948%_ _%tl141930141945%_))
                            (cons '%#begin-syntax
                                  (call-with-parameters__1
                                   (lambda ()
                                     (gx#stx-map1
                                      gx#core-compile-top-syntax
                                      _%body141948%_))
                                   gx#current-expander-phi
                                   (##fx+ (gx#current-expander-phi) '1))))))
                      (_%E141927141936%_)))))
          (_%E141926141951%_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_%stx141894%_)
        (let* ((_%e141895141902%_ _%stx141894%_)
               (_%E141897141906%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e141895141902%_)))
               (_%E141896141920%_
                (lambda ()
                  (if (gx#stx-pair? _%e141895141902%_)
                      (let ((_%e141898141910%_
                             (gx#syntax-e _%e141895141902%_)))
                        (let ((_%hd141899141913%_ (##car _%e141898141910%_))
                              (_%tl141900141915%_ (##cdr _%e141898141910%_)))
                          (let ((_%body141918%_ _%tl141900141915%_))
                            (cons '%#begin-foreign _%body141918%_))))
                      (_%E141897141906%_)))))
          (_%E141896141920%_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_%stx141840%_)
        (let* ((_%e141841141854%_ _%stx141840%_)
               (_%E141843141858%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e141841141854%_)))
               (_%E141842141890%_
                (lambda ()
                  (if (gx#stx-pair? _%e141841141854%_)
                      (let ((_%e141844141862%_
                             (gx#syntax-e _%e141841141854%_)))
                        (let ((_%hd141845141865%_ (##car _%e141844141862%_))
                              (_%tl141846141867%_ (##cdr _%e141844141862%_)))
                          (if (gx#stx-pair? _%tl141846141867%_)
                              (let ((_%e141847141870%_
                                     (gx#syntax-e _%tl141846141867%_)))
                                (let ((_%hd141848141873%_
                                       (##car _%e141847141870%_))
                                      (_%tl141849141875%_
                                       (##cdr _%e141847141870%_)))
                                  (let ((_%ann141878%_ _%hd141848141873%_))
                                    (if (gx#stx-pair? _%tl141849141875%_)
                                        (let ((_%e141850141880%_
                                               (gx#syntax-e
                                                _%tl141849141875%_)))
                                          (let ((_%hd141851141883%_
                                                 (##car _%e141850141880%_))
                                                (_%tl141852141885%_
                                                 (##cdr _%e141850141880%_)))
                                            (let ((_%expr141888%_
                                                   _%hd141851141883%_))
                                              (if (gx#stx-null?
                                                   _%tl141852141885%_)
                                                  (gx#core-compile-top-syntax
                                                   _%expr141888%_)
                                                  (_%E141843141858%_)))))
                                        (_%E141843141858%_)))))
                              (_%E141843141858%_))))
                      (_%E141843141858%_)))))
          (_%E141842141890%_))))
    (define gx#core-compile-top-import%
      (lambda (_%stx141810%_)
        (let* ((_%e141811141818%_ _%stx141810%_)
               (_%E141813141822%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e141811141818%_)))
               (_%E141812141836%_
                (lambda ()
                  (if (gx#stx-pair? _%e141811141818%_)
                      (let ((_%e141814141826%_
                             (gx#syntax-e _%e141811141818%_)))
                        (let ((_%hd141815141829%_ (##car _%e141814141826%_))
                              (_%tl141816141831%_ (##cdr _%e141814141826%_)))
                          (let ((_%body141834%_ _%tl141816141831%_))
                            (cons '%#import _%body141834%_))))
                      (_%E141813141822%_)))))
          (_%E141812141836%_))))
    (define gx#core-compile-top-module%
      (lambda (_%stx141767%_)
        (let* ((_%e141768141778%_ _%stx141767%_)
               (_%E141770141782%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e141768141778%_)))
               (_%E141769141806%_
                (lambda ()
                  (if (gx#stx-pair? _%e141768141778%_)
                      (let ((_%e141771141786%_
                             (gx#syntax-e _%e141768141778%_)))
                        (let ((_%hd141772141789%_ (##car _%e141771141786%_))
                              (_%tl141773141791%_ (##cdr _%e141771141786%_)))
                          (if (gx#stx-pair? _%tl141773141791%_)
                              (let ((_%e141774141794%_
                                     (gx#syntax-e _%tl141773141791%_)))
                                (let ((_%hd141775141797%_
                                       (##car _%e141774141794%_))
                                      (_%tl141776141799%_
                                       (##cdr _%e141774141794%_)))
                                  (let* ((_%hd141802%_ _%hd141775141797%_)
                                         (_%body141804%_ _%tl141776141799%_))
                                    (cons '%#module
                                          (cons (##structure-ref
                                                 (gx#syntax-local-e__0
                                                  _%hd141802%_)
                                                 '1
                                                 gx#expander-context::t
                                                 '#f)
                                                (gx#stx-map1
                                                 gx#core-compile-top-syntax
                                                 _%body141804%_))))))
                              (_%E141770141782%_))))
                      (_%E141770141782%_)))))
          (_%E141769141806%_))))
    (define gx#core-compile-top-export%
      (lambda (_%stx141737%_)
        (let* ((_%e141738141745%_ _%stx141737%_)
               (_%E141740141749%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e141738141745%_)))
               (_%E141739141763%_
                (lambda ()
                  (if (gx#stx-pair? _%e141738141745%_)
                      (let ((_%e141741141753%_
                             (gx#syntax-e _%e141738141745%_)))
                        (let ((_%hd141742141756%_ (##car _%e141741141753%_))
                              (_%tl141743141758%_ (##cdr _%e141741141753%_)))
                          (let ((_%body141761%_ _%tl141743141758%_))
                            (cons '%#export _%body141761%_))))
                      (_%E141740141749%_)))))
          (_%E141739141763%_))))
    (define gx#core-compile-top-provide%
      (lambda (_%stx141707%_)
        (let* ((_%e141708141715%_ _%stx141707%_)
               (_%E141710141719%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e141708141715%_)))
               (_%E141709141733%_
                (lambda ()
                  (if (gx#stx-pair? _%e141708141715%_)
                      (let ((_%e141711141723%_
                             (gx#syntax-e _%e141708141715%_)))
                        (let ((_%hd141712141726%_ (##car _%e141711141723%_))
                              (_%tl141713141728%_ (##cdr _%e141711141723%_)))
                          (let ((_%body141731%_ _%tl141713141728%_))
                            (cons '%#provide _%body141731%_))))
                      (_%E141710141719%_)))))
          (_%E141709141733%_))))
    (define gx#core-compile-top-extern%
      (lambda (_%stx141677%_)
        (let* ((_%e141678141685%_ _%stx141677%_)
               (_%E141680141689%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e141678141685%_)))
               (_%E141679141703%_
                (lambda ()
                  (if (gx#stx-pair? _%e141678141685%_)
                      (let ((_%e141681141693%_
                             (gx#syntax-e _%e141678141685%_)))
                        (let ((_%hd141682141696%_ (##car _%e141681141693%_))
                              (_%tl141683141698%_ (##cdr _%e141681141693%_)))
                          (let ((_%body141701%_ _%tl141683141698%_))
                            (cons '%#extern _%body141701%_))))
                      (_%E141680141689%_)))))
          (_%E141679141703%_))))
    (define gx#core-compile-top-define-values%
      (lambda (_%stx141623%_)
        (let* ((_%e141624141637%_ _%stx141623%_)
               (_%E141626141641%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e141624141637%_)))
               (_%E141625141673%_
                (lambda ()
                  (if (gx#stx-pair? _%e141624141637%_)
                      (let ((_%e141627141645%_
                             (gx#syntax-e _%e141624141637%_)))
                        (let ((_%hd141628141648%_ (##car _%e141627141645%_))
                              (_%tl141629141650%_ (##cdr _%e141627141645%_)))
                          (if (gx#stx-pair? _%tl141629141650%_)
                              (let ((_%e141630141653%_
                                     (gx#syntax-e _%tl141629141650%_)))
                                (let ((_%hd141631141656%_
                                       (##car _%e141630141653%_))
                                      (_%tl141632141658%_
                                       (##cdr _%e141630141653%_)))
                                  (let ((_%hd141661%_ _%hd141631141656%_))
                                    (if (gx#stx-pair? _%tl141632141658%_)
                                        (let ((_%e141633141663%_
                                               (gx#syntax-e
                                                _%tl141632141658%_)))
                                          (let ((_%hd141634141666%_
                                                 (##car _%e141633141663%_))
                                                (_%tl141635141668%_
                                                 (##cdr _%e141633141663%_)))
                                            (let ((_%expr141671%_
                                                   _%hd141634141666%_))
                                              (if (gx#stx-null?
                                                   _%tl141635141668%_)
                                                  (cons '%#define-values
                                                        (cons (gx#stx-map1
                                                               gx#core-compile-top-runtime-bind
                                                               _%hd141661%_)
                                                              (cons (gx#core-compile-top-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%expr141671%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E141626141641%_)))))
                                        (_%E141626141641%_)))))
                              (_%E141626141641%_))))
                      (_%E141626141641%_)))))
          (_%E141625141673%_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_%stx141568%_)
        (let* ((_%e141569141582%_ _%stx141568%_)
               (_%E141571141586%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e141569141582%_)))
               (_%E141570141619%_
                (lambda ()
                  (if (gx#stx-pair? _%e141569141582%_)
                      (let ((_%e141572141590%_
                             (gx#syntax-e _%e141569141582%_)))
                        (let ((_%hd141573141593%_ (##car _%e141572141590%_))
                              (_%tl141574141595%_ (##cdr _%e141572141590%_)))
                          (if (gx#stx-pair? _%tl141574141595%_)
                              (let ((_%e141575141598%_
                                     (gx#syntax-e _%tl141574141595%_)))
                                (let ((_%hd141576141601%_
                                       (##car _%e141575141598%_))
                                      (_%tl141577141603%_
                                       (##cdr _%e141575141598%_)))
                                  (let ((_%hd141606%_ _%hd141576141601%_))
                                    (if (gx#stx-pair? _%tl141577141603%_)
                                        (let ((_%e141578141608%_
                                               (gx#syntax-e
                                                _%tl141577141603%_)))
                                          (let ((_%hd141579141611%_
                                                 (##car _%e141578141608%_))
                                                (_%tl141580141613%_
                                                 (##cdr _%e141578141608%_)))
                                            (let ((_%expr141616%_
                                                   _%hd141579141611%_))
                                              (if (gx#stx-null?
                                                   _%tl141580141613%_)
                                                  (cons '%#define-syntax
                                                        (cons _%hd141606%_
                                                              (cons (call-with-parameters__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda ()
                               (gx#core-compile-top-syntax _%expr141616%_))
                             gx#current-expander-phi
                             (##fx+ (gx#current-expander-phi) '1))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E141571141586%_)))))
                                        (_%E141571141586%_)))))
                              (_%E141571141586%_))))
                      (_%E141571141586%_)))))
          (_%E141570141619%_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_%stx141538%_)
        (let* ((_%e141539141546%_ _%stx141538%_)
               (_%E141541141550%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e141539141546%_)))
               (_%E141540141564%_
                (lambda ()
                  (if (gx#stx-pair? _%e141539141546%_)
                      (let ((_%e141542141554%_
                             (gx#syntax-e _%e141539141546%_)))
                        (let ((_%hd141543141557%_ (##car _%e141542141554%_))
                              (_%tl141544141559%_ (##cdr _%e141542141554%_)))
                          (let ((_%body141562%_ _%tl141544141559%_))
                            (cons '%#define-alias _%body141562%_))))
                      (_%E141541141550%_)))))
          (_%E141540141564%_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_%stx141508%_)
        (let* ((_%e141509141516%_ _%stx141508%_)
               (_%E141511141520%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e141509141516%_)))
               (_%E141510141534%_
                (lambda ()
                  (if (gx#stx-pair? _%e141509141516%_)
                      (let ((_%e141512141524%_
                             (gx#syntax-e _%e141509141516%_)))
                        (let ((_%hd141513141527%_ (##car _%e141512141524%_))
                              (_%tl141514141529%_ (##cdr _%e141512141524%_)))
                          (let ((_%body141532%_ _%tl141514141529%_))
                            (cons '%#define-runtime _%body141532%_))))
                      (_%E141511141520%_)))))
          (_%E141510141534%_))))
    (define gx#core-compile-top-declare%
      (lambda (_%stx141478%_)
        (let* ((_%e141479141486%_ _%stx141478%_)
               (_%E141481141490%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e141479141486%_)))
               (_%E141480141504%_
                (lambda ()
                  (if (gx#stx-pair? _%e141479141486%_)
                      (let ((_%e141482141494%_
                             (gx#syntax-e _%e141479141486%_)))
                        (let ((_%hd141483141497%_ (##car _%e141482141494%_))
                              (_%tl141484141499%_ (##cdr _%e141482141494%_)))
                          (let ((_%decls141502%_ _%tl141484141499%_))
                            (cons '%#declare _%decls141502%_))))
                      (_%E141481141490%_)))))
          (_%E141480141504%_))))
    (define gx#core-compile-top-lambda%
      (lambda (_%stx141448%_)
        (let* ((_%e141449141456%_ _%stx141448%_)
               (_%E141451141460%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e141449141456%_)))
               (_%E141450141474%_
                (lambda ()
                  (if (gx#stx-pair? _%e141449141456%_)
                      (let ((_%e141452141464%_
                             (gx#syntax-e _%e141449141456%_)))
                        (let ((_%hd141453141467%_ (##car _%e141452141464%_))
                              (_%tl141454141469%_ (##cdr _%e141452141464%_)))
                          (let ((_%clause141472%_ _%tl141454141469%_))
                            (cons '%#lambda
                                  (gx#core-compile-top-lambda-clause
                                   _%clause141472%_)))))
                      (_%E141451141460%_)))))
          (_%E141450141474%_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_%stx141405%_)
        (let* ((_%e141406141416%_ _%stx141405%_)
               (_%E141408141420%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e141406141416%_)))
               (_%E141407141444%_
                (lambda ()
                  (if (gx#stx-pair? _%e141406141416%_)
                      (let ((_%e141409141424%_
                             (gx#syntax-e _%e141406141416%_)))
                        (let ((_%hd141410141427%_ (##car _%e141409141424%_))
                              (_%tl141411141429%_ (##cdr _%e141409141424%_)))
                          (let ((_%hd141432%_ _%hd141410141427%_))
                            (if (gx#stx-pair? _%tl141411141429%_)
                                (let ((_%e141412141434%_
                                       (gx#syntax-e _%tl141411141429%_)))
                                  (let ((_%hd141413141437%_
                                         (##car _%e141412141434%_))
                                        (_%tl141414141439%_
                                         (##cdr _%e141412141434%_)))
                                    (let ((_%body141442%_ _%hd141413141437%_))
                                      (if (gx#stx-null? _%tl141414141439%_)
                                          (cons (gx#stx-map1
                                                 gx#core-compile-top-runtime-bind
                                                 _%hd141432%_)
                                                (cons (gx#core-compile-top-syntax
                                                       _%body141442%_)
                                                      '()))
                                          (_%E141408141420%_)))))
                                (_%E141408141420%_)))))
                      (_%E141408141420%_)))))
          (_%E141407141444%_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_%stx141375%_)
        (let* ((_%e141376141383%_ _%stx141375%_)
               (_%E141378141387%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e141376141383%_)))
               (_%E141377141401%_
                (lambda ()
                  (if (gx#stx-pair? _%e141376141383%_)
                      (let ((_%e141379141391%_
                             (gx#syntax-e _%e141376141383%_)))
                        (let ((_%hd141380141394%_ (##car _%e141379141391%_))
                              (_%tl141381141396%_ (##cdr _%e141379141391%_)))
                          (let ((_%clauses141399%_ _%tl141381141396%_))
                            (cons '%#case-lambda
                                  (gx#stx-map1
                                   gx#core-compile-top-lambda-clause
                                   _%clauses141399%_)))))
                      (_%E141378141387%_)))))
          (_%E141377141401%_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_%stx141310%_ _%form141311%_)
        (let* ((_%e141312141325%_ _%stx141310%_)
               (_%E141314141329%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e141312141325%_)))
               (_%E141313141361%_
                (lambda ()
                  (if (gx#stx-pair? _%e141312141325%_)
                      (let ((_%e141315141333%_
                             (gx#syntax-e _%e141312141325%_)))
                        (let ((_%hd141316141336%_ (##car _%e141315141333%_))
                              (_%tl141317141338%_ (##cdr _%e141315141333%_)))
                          (if (gx#stx-pair? _%tl141317141338%_)
                              (let ((_%e141318141341%_
                                     (gx#syntax-e _%tl141317141338%_)))
                                (let ((_%hd141319141344%_
                                       (##car _%e141318141341%_))
                                      (_%tl141320141346%_
                                       (##cdr _%e141318141341%_)))
                                  (let ((_%hd141349%_ _%hd141319141344%_))
                                    (if (gx#stx-pair? _%tl141320141346%_)
                                        (let ((_%e141321141351%_
                                               (gx#syntax-e
                                                _%tl141320141346%_)))
                                          (let ((_%hd141322141354%_
                                                 (##car _%e141321141351%_))
                                                (_%tl141323141356%_
                                                 (##cdr _%e141321141351%_)))
                                            (let ((_%body141359%_
                                                   _%hd141322141354%_))
                                              (if (gx#stx-null?
                                                   _%tl141323141356%_)
                                                  (cons _%form141311%_
                                                        (cons (gx#stx-map1
                                                               gx#core-compile-top-lambda-clause
                                                               _%hd141349%_)
                                                              (cons (gx#core-compile-top-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%body141359%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E141314141329%_)))))
                                        (_%E141314141329%_)))))
                              (_%E141314141329%_))))
                      (_%E141314141329%_)))))
          (_%E141313141361%_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_%stx141368%_)
        (let ((_%form141370%_ '%#let-values))
          (gx#core-compile-top-let-values%__% _%stx141368%_ _%form141370%_))))
    (define gx#core-compile-top-let-values%
      (lambda _g142194_
        (let ((_g142195_ (##length _g142194_)))
          (cond ((##fx= _g142195_ 1)
                 (apply gx#core-compile-top-let-values%__0 _g142194_))
                ((##fx= _g142195_ 2)
                 (apply gx#core-compile-top-let-values%__% _g142194_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g142194_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_%stx141307%_)
        (gx#core-compile-top-let-values%__% _%stx141307%_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_%stx141305%_)
        (gx#core-compile-top-let-values%__% _%stx141305%_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_%stx141264%_)
        (let* ((_%e141265141275%_ _%stx141264%_)
               (_%E141267141279%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e141265141275%_)))
               (_%E141266141301%_
                (lambda ()
                  (if (gx#stx-pair? _%e141265141275%_)
                      (let ((_%e141268141283%_
                             (gx#syntax-e _%e141265141275%_)))
                        (let ((_%hd141269141286%_ (##car _%e141268141283%_))
                              (_%tl141270141288%_ (##cdr _%e141268141283%_)))
                          (if (gx#stx-pair? _%tl141270141288%_)
                              (let ((_%e141271141291%_
                                     (gx#syntax-e _%tl141270141288%_)))
                                (let ((_%hd141272141294%_
                                       (##car _%e141271141291%_))
                                      (_%tl141273141296%_
                                       (##cdr _%e141271141291%_)))
                                  (let ((_%e141299%_ _%hd141272141294%_))
                                    (if (gx#stx-null? _%tl141273141296%_)
                                        (cons '%#quote
                                              (cons (gx#syntax->datum
                                                     _%e141299%_)
                                                    '()))
                                        (_%E141267141279%_)))))
                              (_%E141267141279%_))))
                      (_%E141267141279%_)))))
          (_%E141266141301%_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_%stx141223%_)
        (let* ((_%e141224141234%_ _%stx141223%_)
               (_%E141226141238%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e141224141234%_)))
               (_%E141225141260%_
                (lambda ()
                  (if (gx#stx-pair? _%e141224141234%_)
                      (let ((_%e141227141242%_
                             (gx#syntax-e _%e141224141234%_)))
                        (let ((_%hd141228141245%_ (##car _%e141227141242%_))
                              (_%tl141229141247%_ (##cdr _%e141227141242%_)))
                          (if (gx#stx-pair? _%tl141229141247%_)
                              (let ((_%e141230141250%_
                                     (gx#syntax-e _%tl141229141247%_)))
                                (let ((_%hd141231141253%_
                                       (##car _%e141230141250%_))
                                      (_%tl141232141255%_
                                       (##cdr _%e141230141250%_)))
                                  (let ((_%e141258%_ _%hd141231141253%_))
                                    (if (gx#stx-null? _%tl141232141255%_)
                                        (cons '%#quote-syntax
                                              (cons (gx#core-quote-syntax__0
                                                     _%e141258%_)
                                                    '()))
                                        (_%E141226141238%_)))))
                              (_%E141226141238%_))))
                      (_%E141226141238%_)))))
          (_%E141225141260%_))))
    (define gx#core-compile-top-call%
      (lambda (_%stx141180%_)
        (let* ((_%e141181141191%_ _%stx141180%_)
               (_%E141183141195%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e141181141191%_)))
               (_%E141182141219%_
                (lambda ()
                  (if (gx#stx-pair? _%e141181141191%_)
                      (let ((_%e141184141199%_
                             (gx#syntax-e _%e141181141191%_)))
                        (let ((_%hd141185141202%_ (##car _%e141184141199%_))
                              (_%tl141186141204%_ (##cdr _%e141184141199%_)))
                          (if (gx#stx-pair? _%tl141186141204%_)
                              (let ((_%e141187141207%_
                                     (gx#syntax-e _%tl141186141204%_)))
                                (let ((_%hd141188141210%_
                                       (##car _%e141187141207%_))
                                      (_%tl141189141212%_
                                       (##cdr _%e141187141207%_)))
                                  (let* ((_%rator141215%_ _%hd141188141210%_)
                                         (_%args141217%_ _%tl141189141212%_))
                                    (cons '%#call
                                          (cons (gx#core-compile-top-syntax
                                                 _%rator141215%_)
                                                (gx#stx-map1
                                                 gx#core-compile-top-syntax
                                                 _%args141217%_))))))
                              (_%E141183141195%_))))
                      (_%E141183141195%_)))))
          (_%E141182141219%_))))
    (define gx#core-compile-top-if%
      (lambda (_%stx141113%_)
        (let* ((_%e141114141130%_ _%stx141113%_)
               (_%E141116141134%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e141114141130%_)))
               (_%E141115141176%_
                (lambda ()
                  (if (gx#stx-pair? _%e141114141130%_)
                      (let ((_%e141117141138%_
                             (gx#syntax-e _%e141114141130%_)))
                        (let ((_%hd141118141141%_ (##car _%e141117141138%_))
                              (_%tl141119141143%_ (##cdr _%e141117141138%_)))
                          (if (gx#stx-pair? _%tl141119141143%_)
                              (let ((_%e141120141146%_
                                     (gx#syntax-e _%tl141119141143%_)))
                                (let ((_%hd141121141149%_
                                       (##car _%e141120141146%_))
                                      (_%tl141122141151%_
                                       (##cdr _%e141120141146%_)))
                                  (let ((_%test141154%_ _%hd141121141149%_))
                                    (if (gx#stx-pair? _%tl141122141151%_)
                                        (let ((_%e141123141156%_
                                               (gx#syntax-e
                                                _%tl141122141151%_)))
                                          (let ((_%hd141124141159%_
                                                 (##car _%e141123141156%_))
                                                (_%tl141125141161%_
                                                 (##cdr _%e141123141156%_)))
                                            (let ((_%K141164%_
                                                   _%hd141124141159%_))
                                              (if (gx#stx-pair?
                                                   _%tl141125141161%_)
                                                  (let ((_%e141126141166%_
                                                         (gx#syntax-e
                                                          _%tl141125141161%_)))
                                                    (let ((_%hd141127141169%_
                                                           (##car _%e141126141166%_))
                                                          (_%tl141128141171%_
                                                           (##cdr _%e141126141166%_)))
                                                      (let ((_%E141174%_
                                                             _%hd141127141169%_))
                                                        (if (gx#stx-null?
                                                             _%tl141128141171%_)
                                                            (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#core-compile-top-syntax _%test141154%_)
                                (cons (gx#core-compile-top-syntax _%K141164%_)
                                      (cons (gx#core-compile-top-syntax
                                             _%E141174%_)
                                            '()))))
                    (_%E141116141134%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E141116141134%_)))))
                                        (_%E141116141134%_)))))
                              (_%E141116141134%_))))
                      (_%E141116141134%_)))))
          (_%E141115141176%_))))
    (define gx#core-compile-top-ref%
      (lambda (_%stx141072%_)
        (let* ((_%e141073141083%_ _%stx141072%_)
               (_%E141075141087%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e141073141083%_)))
               (_%E141074141109%_
                (lambda ()
                  (if (gx#stx-pair? _%e141073141083%_)
                      (let ((_%e141076141091%_
                             (gx#syntax-e _%e141073141083%_)))
                        (let ((_%hd141077141094%_ (##car _%e141076141091%_))
                              (_%tl141078141096%_ (##cdr _%e141076141091%_)))
                          (if (gx#stx-pair? _%tl141078141096%_)
                              (let ((_%e141079141099%_
                                     (gx#syntax-e _%tl141078141096%_)))
                                (let ((_%hd141080141102%_
                                       (##car _%e141079141099%_))
                                      (_%tl141081141104%_
                                       (##cdr _%e141079141099%_)))
                                  (let ((_%id141107%_ _%hd141080141102%_))
                                    (if (gx#stx-null? _%tl141081141104%_)
                                        (if (gx#identifier? _%id141107%_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _%id141107%_)
                                                        '()))
                                            (_%E141075141087%_))
                                        (_%E141075141087%_)))))
                              (_%E141075141087%_))))
                      (_%E141075141087%_)))))
          (_%E141074141109%_))))
    (define gx#core-compile-top-setq%
      (lambda (_%stx141018%_)
        (let* ((_%e141019141032%_ _%stx141018%_)
               (_%E141021141036%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e141019141032%_)))
               (_%E141020141068%_
                (lambda ()
                  (if (gx#stx-pair? _%e141019141032%_)
                      (let ((_%e141022141040%_
                             (gx#syntax-e _%e141019141032%_)))
                        (let ((_%hd141023141043%_ (##car _%e141022141040%_))
                              (_%tl141024141045%_ (##cdr _%e141022141040%_)))
                          (if (gx#stx-pair? _%tl141024141045%_)
                              (let ((_%e141025141048%_
                                     (gx#syntax-e _%tl141024141045%_)))
                                (let ((_%hd141026141051%_
                                       (##car _%e141025141048%_))
                                      (_%tl141027141053%_
                                       (##cdr _%e141025141048%_)))
                                  (let ((_%id141056%_ _%hd141026141051%_))
                                    (if (gx#stx-pair? _%tl141027141053%_)
                                        (let ((_%e141028141058%_
                                               (gx#syntax-e
                                                _%tl141027141053%_)))
                                          (let ((_%hd141029141061%_
                                                 (##car _%e141028141058%_))
                                                (_%tl141030141063%_
                                                 (##cdr _%e141028141058%_)))
                                            (let ((_%expr141066%_
                                                   _%hd141029141061%_))
                                              (if (gx#stx-null?
                                                   _%tl141030141063%_)
                                                  (if (gx#identifier?
                                                       _%id141056%_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%id141056%_)
                          (cons (gx#core-compile-top-syntax _%expr141066%_)
                                '())))
              (_%E141021141036%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E141021141036%_)))))
                                        (_%E141021141036%_)))))
                              (_%E141021141036%_))))
                      (_%E141021141036%_)))))
          (_%E141020141068%_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_%id141012%_)
        (let ((_%$e141014%_ (gx#resolve-identifier__0 _%id141012%_)))
          (if _%$e141014%_
              (##unchecked-structure-ref _%$e141014%_ '1 '#f '#f)
              _%id141012%_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_%hd141010%_)
        (if (gx#identifier? _%hd141010%_)
            (gx#core-compile-top-runtime-ref _%hd141010%_)
            '#f)))))
