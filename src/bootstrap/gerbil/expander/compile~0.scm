(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1771037610)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_%stx195842%_)
        (let* ((_%e195843195850%_ _%stx195842%_)
               (_%E195845195854%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e195843195850%_)))
               (_%E195844195868%_
                (lambda ()
                  (if (gx#stx-pair? _%e195843195850%_)
                      (let ((_%e195846195858%_
                             (gx#syntax-e _%e195843195850%_)))
                        (let ((_%hd195847195861%_ (##car _%e195846195858%_))
                              (_%tl195848195863%_ (##cdr _%e195846195858%_)))
                          (let* ((_%form195866%_ _%hd195847195861%_)
                                 (__self195871
                                  (gx#syntax-local-e__0 _%form195866%_))
                                 (__method195872
                                  (__method-ref
                                   __self195871
                                   'compile-top-syntax)))
                            (if __method195872
                                (__method195872 __self195871 _%stx195842%_)
                                (begin
                                  (error '"Missing method"
                                         __self195871
                                         'compile-top-syntax)
                                  '#!void)))))
                      (_%E195845195854%_)))))
          (_%E195844195868%_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_%self195791%_ _%stx195792%_)
        (let* ((_%self195795%_ _%self195791%_)
               (_%self195804195812%_ _%self195795%_)
               (_%E195806195815%_
                (lambda ()
                  (error '"No clause matching"
                         _%self195804195812%_
                         '((core-expander _ _ K)))
                  '#!void))
               (_%K195807195828%_
                (lambda (_%K195818%_)
                  (let ((_%$e195820%_ (gx#stx-source _%stx195792%_)))
                    (if _%$e195820%_
                        ((lambda (_%g195822195824%_)
                           (gx#stx-wrap-source
                            (_%K195818%_ _%stx195792%_)
                            _%g195822195824%_))
                         _%$e195820%_)
                        (_%K195818%_ _%stx195792%_)))))
               (_%e195808195831%_
                (##unchecked-structure-ref _%self195804195812%_ '1 '#f '#f))
               (_%e195809195834%_
                (##unchecked-structure-ref _%self195804195812%_ '2 '#f '#f))
               (_%e195810195837%_
                (##unchecked-structure-ref _%self195804195812%_ '3 '#f '#f))
               (_%K195840%_ _%e195810195837%_))
          (_%K195807195828%_ _%K195840%_))))
    (__bind-method!__%
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_%stx195665%_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _%stx195665%_)))
    (define gx#core-compile-top-begin%
      (lambda (_%stx195635%_)
        (let* ((_%e195636195643%_ _%stx195635%_)
               (_%E195638195647%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e195636195643%_)))
               (_%E195637195661%_
                (lambda ()
                  (if (gx#stx-pair? _%e195636195643%_)
                      (let ((_%e195639195651%_
                             (gx#syntax-e _%e195636195643%_)))
                        (let ((_%hd195640195654%_ (##car _%e195639195651%_))
                              (_%tl195641195656%_ (##cdr _%e195639195651%_)))
                          (let ((_%body195659%_ _%tl195641195656%_))
                            (cons '%#begin
                                  (gx#stx-map1
                                   gx#core-compile-top-syntax
                                   _%body195659%_)))))
                      (_%E195638195647%_)))))
          (_%E195637195661%_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_%stx195604%_)
        (let* ((_%e195605195612%_ _%stx195604%_)
               (_%E195607195616%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e195605195612%_)))
               (_%E195606195631%_
                (lambda ()
                  (if (gx#stx-pair? _%e195605195612%_)
                      (let ((_%e195608195620%_
                             (gx#syntax-e _%e195605195612%_)))
                        (let ((_%hd195609195623%_ (##car _%e195608195620%_))
                              (_%tl195610195625%_ (##cdr _%e195608195620%_)))
                          (let ((_%body195628%_ _%tl195610195625%_))
                            (cons '%#begin-syntax
                                  (call-with-parameters__1
                                   (lambda ()
                                     (gx#stx-map1
                                      gx#core-compile-top-syntax
                                      _%body195628%_))
                                   gx#current-expander-phi
                                   (##fx+ (gx#current-expander-phi) '1))))))
                      (_%E195607195616%_)))))
          (_%E195606195631%_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_%stx195574%_)
        (let* ((_%e195575195582%_ _%stx195574%_)
               (_%E195577195586%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e195575195582%_)))
               (_%E195576195600%_
                (lambda ()
                  (if (gx#stx-pair? _%e195575195582%_)
                      (let ((_%e195578195590%_
                             (gx#syntax-e _%e195575195582%_)))
                        (let ((_%hd195579195593%_ (##car _%e195578195590%_))
                              (_%tl195580195595%_ (##cdr _%e195578195590%_)))
                          (let ((_%body195598%_ _%tl195580195595%_))
                            (cons '%#begin-foreign _%body195598%_))))
                      (_%E195577195586%_)))))
          (_%E195576195600%_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_%stx195520%_)
        (let* ((_%e195521195534%_ _%stx195520%_)
               (_%E195523195538%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e195521195534%_)))
               (_%E195522195570%_
                (lambda ()
                  (if (gx#stx-pair? _%e195521195534%_)
                      (let ((_%e195524195542%_
                             (gx#syntax-e _%e195521195534%_)))
                        (let ((_%hd195525195545%_ (##car _%e195524195542%_))
                              (_%tl195526195547%_ (##cdr _%e195524195542%_)))
                          (if (gx#stx-pair? _%tl195526195547%_)
                              (let ((_%e195527195550%_
                                     (gx#syntax-e _%tl195526195547%_)))
                                (let ((_%hd195528195553%_
                                       (##car _%e195527195550%_))
                                      (_%tl195529195555%_
                                       (##cdr _%e195527195550%_)))
                                  (let ((_%ann195558%_ _%hd195528195553%_))
                                    (if (gx#stx-pair? _%tl195529195555%_)
                                        (let ((_%e195530195560%_
                                               (gx#syntax-e
                                                _%tl195529195555%_)))
                                          (let ((_%hd195531195563%_
                                                 (##car _%e195530195560%_))
                                                (_%tl195532195565%_
                                                 (##cdr _%e195530195560%_)))
                                            (let ((_%expr195568%_
                                                   _%hd195531195563%_))
                                              (if (gx#stx-null?
                                                   _%tl195532195565%_)
                                                  (gx#core-compile-top-syntax
                                                   _%expr195568%_)
                                                  (_%E195523195538%_)))))
                                        (_%E195523195538%_)))))
                              (_%E195523195538%_))))
                      (_%E195523195538%_)))))
          (_%E195522195570%_))))
    (define gx#core-compile-top-import%
      (lambda (_%stx195490%_)
        (let* ((_%e195491195498%_ _%stx195490%_)
               (_%E195493195502%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e195491195498%_)))
               (_%E195492195516%_
                (lambda ()
                  (if (gx#stx-pair? _%e195491195498%_)
                      (let ((_%e195494195506%_
                             (gx#syntax-e _%e195491195498%_)))
                        (let ((_%hd195495195509%_ (##car _%e195494195506%_))
                              (_%tl195496195511%_ (##cdr _%e195494195506%_)))
                          (let ((_%body195514%_ _%tl195496195511%_))
                            (cons '%#import _%body195514%_))))
                      (_%E195493195502%_)))))
          (_%E195492195516%_))))
    (define gx#core-compile-top-module%
      (lambda (_%stx195447%_)
        (let* ((_%e195448195458%_ _%stx195447%_)
               (_%E195450195462%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e195448195458%_)))
               (_%E195449195486%_
                (lambda ()
                  (if (gx#stx-pair? _%e195448195458%_)
                      (let ((_%e195451195466%_
                             (gx#syntax-e _%e195448195458%_)))
                        (let ((_%hd195452195469%_ (##car _%e195451195466%_))
                              (_%tl195453195471%_ (##cdr _%e195451195466%_)))
                          (if (gx#stx-pair? _%tl195453195471%_)
                              (let ((_%e195454195474%_
                                     (gx#syntax-e _%tl195453195471%_)))
                                (let ((_%hd195455195477%_
                                       (##car _%e195454195474%_))
                                      (_%tl195456195479%_
                                       (##cdr _%e195454195474%_)))
                                  (let* ((_%hd195482%_ _%hd195455195477%_)
                                         (_%body195484%_ _%tl195456195479%_))
                                    (cons '%#module
                                          (cons (##structure-ref
                                                 (gx#syntax-local-e__0
                                                  _%hd195482%_)
                                                 '1
                                                 gx#expander-context::t
                                                 '#f)
                                                (gx#stx-map1
                                                 gx#core-compile-top-syntax
                                                 _%body195484%_))))))
                              (_%E195450195462%_))))
                      (_%E195450195462%_)))))
          (_%E195449195486%_))))
    (define gx#core-compile-top-export%
      (lambda (_%stx195417%_)
        (let* ((_%e195418195425%_ _%stx195417%_)
               (_%E195420195429%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e195418195425%_)))
               (_%E195419195443%_
                (lambda ()
                  (if (gx#stx-pair? _%e195418195425%_)
                      (let ((_%e195421195433%_
                             (gx#syntax-e _%e195418195425%_)))
                        (let ((_%hd195422195436%_ (##car _%e195421195433%_))
                              (_%tl195423195438%_ (##cdr _%e195421195433%_)))
                          (let ((_%body195441%_ _%tl195423195438%_))
                            (cons '%#export _%body195441%_))))
                      (_%E195420195429%_)))))
          (_%E195419195443%_))))
    (define gx#core-compile-top-provide%
      (lambda (_%stx195387%_)
        (let* ((_%e195388195395%_ _%stx195387%_)
               (_%E195390195399%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e195388195395%_)))
               (_%E195389195413%_
                (lambda ()
                  (if (gx#stx-pair? _%e195388195395%_)
                      (let ((_%e195391195403%_
                             (gx#syntax-e _%e195388195395%_)))
                        (let ((_%hd195392195406%_ (##car _%e195391195403%_))
                              (_%tl195393195408%_ (##cdr _%e195391195403%_)))
                          (let ((_%body195411%_ _%tl195393195408%_))
                            (cons '%#provide _%body195411%_))))
                      (_%E195390195399%_)))))
          (_%E195389195413%_))))
    (define gx#core-compile-top-extern%
      (lambda (_%stx195357%_)
        (let* ((_%e195358195365%_ _%stx195357%_)
               (_%E195360195369%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e195358195365%_)))
               (_%E195359195383%_
                (lambda ()
                  (if (gx#stx-pair? _%e195358195365%_)
                      (let ((_%e195361195373%_
                             (gx#syntax-e _%e195358195365%_)))
                        (let ((_%hd195362195376%_ (##car _%e195361195373%_))
                              (_%tl195363195378%_ (##cdr _%e195361195373%_)))
                          (let ((_%body195381%_ _%tl195363195378%_))
                            (cons '%#extern _%body195381%_))))
                      (_%E195360195369%_)))))
          (_%E195359195383%_))))
    (define gx#core-compile-top-define-values%
      (lambda (_%stx195303%_)
        (let* ((_%e195304195317%_ _%stx195303%_)
               (_%E195306195321%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e195304195317%_)))
               (_%E195305195353%_
                (lambda ()
                  (if (gx#stx-pair? _%e195304195317%_)
                      (let ((_%e195307195325%_
                             (gx#syntax-e _%e195304195317%_)))
                        (let ((_%hd195308195328%_ (##car _%e195307195325%_))
                              (_%tl195309195330%_ (##cdr _%e195307195325%_)))
                          (if (gx#stx-pair? _%tl195309195330%_)
                              (let ((_%e195310195333%_
                                     (gx#syntax-e _%tl195309195330%_)))
                                (let ((_%hd195311195336%_
                                       (##car _%e195310195333%_))
                                      (_%tl195312195338%_
                                       (##cdr _%e195310195333%_)))
                                  (let ((_%hd195341%_ _%hd195311195336%_))
                                    (if (gx#stx-pair? _%tl195312195338%_)
                                        (let ((_%e195313195343%_
                                               (gx#syntax-e
                                                _%tl195312195338%_)))
                                          (let ((_%hd195314195346%_
                                                 (##car _%e195313195343%_))
                                                (_%tl195315195348%_
                                                 (##cdr _%e195313195343%_)))
                                            (let ((_%expr195351%_
                                                   _%hd195314195346%_))
                                              (if (gx#stx-null?
                                                   _%tl195315195348%_)
                                                  (cons '%#define-values
                                                        (cons (gx#stx-map1
                                                               gx#core-compile-top-runtime-bind
                                                               _%hd195341%_)
                                                              (cons (gx#core-compile-top-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%expr195351%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E195306195321%_)))))
                                        (_%E195306195321%_)))))
                              (_%E195306195321%_))))
                      (_%E195306195321%_)))))
          (_%E195305195353%_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_%stx195248%_)
        (let* ((_%e195249195262%_ _%stx195248%_)
               (_%E195251195266%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e195249195262%_)))
               (_%E195250195299%_
                (lambda ()
                  (if (gx#stx-pair? _%e195249195262%_)
                      (let ((_%e195252195270%_
                             (gx#syntax-e _%e195249195262%_)))
                        (let ((_%hd195253195273%_ (##car _%e195252195270%_))
                              (_%tl195254195275%_ (##cdr _%e195252195270%_)))
                          (if (gx#stx-pair? _%tl195254195275%_)
                              (let ((_%e195255195278%_
                                     (gx#syntax-e _%tl195254195275%_)))
                                (let ((_%hd195256195281%_
                                       (##car _%e195255195278%_))
                                      (_%tl195257195283%_
                                       (##cdr _%e195255195278%_)))
                                  (let ((_%hd195286%_ _%hd195256195281%_))
                                    (if (gx#stx-pair? _%tl195257195283%_)
                                        (let ((_%e195258195288%_
                                               (gx#syntax-e
                                                _%tl195257195283%_)))
                                          (let ((_%hd195259195291%_
                                                 (##car _%e195258195288%_))
                                                (_%tl195260195293%_
                                                 (##cdr _%e195258195288%_)))
                                            (let ((_%expr195296%_
                                                   _%hd195259195291%_))
                                              (if (gx#stx-null?
                                                   _%tl195260195293%_)
                                                  (cons '%#define-syntax
                                                        (cons _%hd195286%_
                                                              (cons (call-with-parameters__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda ()
                               (gx#core-compile-top-syntax _%expr195296%_))
                             gx#current-expander-phi
                             (##fx+ (gx#current-expander-phi) '1))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E195251195266%_)))))
                                        (_%E195251195266%_)))))
                              (_%E195251195266%_))))
                      (_%E195251195266%_)))))
          (_%E195250195299%_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_%stx195218%_)
        (let* ((_%e195219195226%_ _%stx195218%_)
               (_%E195221195230%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e195219195226%_)))
               (_%E195220195244%_
                (lambda ()
                  (if (gx#stx-pair? _%e195219195226%_)
                      (let ((_%e195222195234%_
                             (gx#syntax-e _%e195219195226%_)))
                        (let ((_%hd195223195237%_ (##car _%e195222195234%_))
                              (_%tl195224195239%_ (##cdr _%e195222195234%_)))
                          (let ((_%body195242%_ _%tl195224195239%_))
                            (cons '%#define-alias _%body195242%_))))
                      (_%E195221195230%_)))))
          (_%E195220195244%_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_%stx195188%_)
        (let* ((_%e195189195196%_ _%stx195188%_)
               (_%E195191195200%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e195189195196%_)))
               (_%E195190195214%_
                (lambda ()
                  (if (gx#stx-pair? _%e195189195196%_)
                      (let ((_%e195192195204%_
                             (gx#syntax-e _%e195189195196%_)))
                        (let ((_%hd195193195207%_ (##car _%e195192195204%_))
                              (_%tl195194195209%_ (##cdr _%e195192195204%_)))
                          (let ((_%body195212%_ _%tl195194195209%_))
                            (cons '%#define-runtime _%body195212%_))))
                      (_%E195191195200%_)))))
          (_%E195190195214%_))))
    (define gx#core-compile-top-declare%
      (lambda (_%stx195158%_)
        (let* ((_%e195159195166%_ _%stx195158%_)
               (_%E195161195170%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e195159195166%_)))
               (_%E195160195184%_
                (lambda ()
                  (if (gx#stx-pair? _%e195159195166%_)
                      (let ((_%e195162195174%_
                             (gx#syntax-e _%e195159195166%_)))
                        (let ((_%hd195163195177%_ (##car _%e195162195174%_))
                              (_%tl195164195179%_ (##cdr _%e195162195174%_)))
                          (let ((_%decls195182%_ _%tl195164195179%_))
                            (cons '%#declare _%decls195182%_))))
                      (_%E195161195170%_)))))
          (_%E195160195184%_))))
    (define gx#core-compile-top-lambda%
      (lambda (_%stx195128%_)
        (let* ((_%e195129195136%_ _%stx195128%_)
               (_%E195131195140%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e195129195136%_)))
               (_%E195130195154%_
                (lambda ()
                  (if (gx#stx-pair? _%e195129195136%_)
                      (let ((_%e195132195144%_
                             (gx#syntax-e _%e195129195136%_)))
                        (let ((_%hd195133195147%_ (##car _%e195132195144%_))
                              (_%tl195134195149%_ (##cdr _%e195132195144%_)))
                          (let ((_%clause195152%_ _%tl195134195149%_))
                            (cons '%#lambda
                                  (gx#core-compile-top-lambda-clause
                                   _%clause195152%_)))))
                      (_%E195131195140%_)))))
          (_%E195130195154%_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_%stx195085%_)
        (let* ((_%e195086195096%_ _%stx195085%_)
               (_%E195088195100%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e195086195096%_)))
               (_%E195087195124%_
                (lambda ()
                  (if (gx#stx-pair? _%e195086195096%_)
                      (let ((_%e195089195104%_
                             (gx#syntax-e _%e195086195096%_)))
                        (let ((_%hd195090195107%_ (##car _%e195089195104%_))
                              (_%tl195091195109%_ (##cdr _%e195089195104%_)))
                          (let ((_%hd195112%_ _%hd195090195107%_))
                            (if (gx#stx-pair? _%tl195091195109%_)
                                (let ((_%e195092195114%_
                                       (gx#syntax-e _%tl195091195109%_)))
                                  (let ((_%hd195093195117%_
                                         (##car _%e195092195114%_))
                                        (_%tl195094195119%_
                                         (##cdr _%e195092195114%_)))
                                    (let ((_%body195122%_ _%hd195093195117%_))
                                      (if (gx#stx-null? _%tl195094195119%_)
                                          (cons (gx#stx-map1
                                                 gx#core-compile-top-runtime-bind
                                                 _%hd195112%_)
                                                (cons (gx#core-compile-top-syntax
                                                       _%body195122%_)
                                                      '()))
                                          (_%E195088195100%_)))))
                                (_%E195088195100%_)))))
                      (_%E195088195100%_)))))
          (_%E195087195124%_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_%stx195055%_)
        (let* ((_%e195056195063%_ _%stx195055%_)
               (_%E195058195067%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e195056195063%_)))
               (_%E195057195081%_
                (lambda ()
                  (if (gx#stx-pair? _%e195056195063%_)
                      (let ((_%e195059195071%_
                             (gx#syntax-e _%e195056195063%_)))
                        (let ((_%hd195060195074%_ (##car _%e195059195071%_))
                              (_%tl195061195076%_ (##cdr _%e195059195071%_)))
                          (let ((_%clauses195079%_ _%tl195061195076%_))
                            (cons '%#case-lambda
                                  (gx#stx-map1
                                   gx#core-compile-top-lambda-clause
                                   _%clauses195079%_)))))
                      (_%E195058195067%_)))))
          (_%E195057195081%_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_%stx194990%_ _%form194991%_)
        (let* ((_%e194992195005%_ _%stx194990%_)
               (_%E194994195009%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e194992195005%_)))
               (_%E194993195041%_
                (lambda ()
                  (if (gx#stx-pair? _%e194992195005%_)
                      (let ((_%e194995195013%_
                             (gx#syntax-e _%e194992195005%_)))
                        (let ((_%hd194996195016%_ (##car _%e194995195013%_))
                              (_%tl194997195018%_ (##cdr _%e194995195013%_)))
                          (if (gx#stx-pair? _%tl194997195018%_)
                              (let ((_%e194998195021%_
                                     (gx#syntax-e _%tl194997195018%_)))
                                (let ((_%hd194999195024%_
                                       (##car _%e194998195021%_))
                                      (_%tl195000195026%_
                                       (##cdr _%e194998195021%_)))
                                  (let ((_%hd195029%_ _%hd194999195024%_))
                                    (if (gx#stx-pair? _%tl195000195026%_)
                                        (let ((_%e195001195031%_
                                               (gx#syntax-e
                                                _%tl195000195026%_)))
                                          (let ((_%hd195002195034%_
                                                 (##car _%e195001195031%_))
                                                (_%tl195003195036%_
                                                 (##cdr _%e195001195031%_)))
                                            (let ((_%body195039%_
                                                   _%hd195002195034%_))
                                              (if (gx#stx-null?
                                                   _%tl195003195036%_)
                                                  (cons _%form194991%_
                                                        (cons (gx#stx-map1
                                                               gx#core-compile-top-lambda-clause
                                                               _%hd195029%_)
                                                              (cons (gx#core-compile-top-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%body195039%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E194994195009%_)))))
                                        (_%E194994195009%_)))))
                              (_%E194994195009%_))))
                      (_%E194994195009%_)))))
          (_%E194993195041%_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_%stx195048%_)
        (let ((_%form195050%_ '%#let-values))
          (gx#core-compile-top-let-values%__% _%stx195048%_ _%form195050%_))))
    (define gx#core-compile-top-let-values%
      (lambda _g195873_
        (let ((_g195874_ (##length _g195873_)))
          (cond ((##fx= _g195874_ 1)
                 (apply gx#core-compile-top-let-values%__0 _g195873_))
                ((##fx= _g195874_ 2)
                 (apply gx#core-compile-top-let-values%__% _g195873_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g195873_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_%stx194987%_)
        (gx#core-compile-top-let-values%__% _%stx194987%_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_%stx194985%_)
        (gx#core-compile-top-let-values%__% _%stx194985%_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_%stx194944%_)
        (let* ((_%e194945194955%_ _%stx194944%_)
               (_%E194947194959%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e194945194955%_)))
               (_%E194946194981%_
                (lambda ()
                  (if (gx#stx-pair? _%e194945194955%_)
                      (let ((_%e194948194963%_
                             (gx#syntax-e _%e194945194955%_)))
                        (let ((_%hd194949194966%_ (##car _%e194948194963%_))
                              (_%tl194950194968%_ (##cdr _%e194948194963%_)))
                          (if (gx#stx-pair? _%tl194950194968%_)
                              (let ((_%e194951194971%_
                                     (gx#syntax-e _%tl194950194968%_)))
                                (let ((_%hd194952194974%_
                                       (##car _%e194951194971%_))
                                      (_%tl194953194976%_
                                       (##cdr _%e194951194971%_)))
                                  (let ((_%e194979%_ _%hd194952194974%_))
                                    (if (gx#stx-null? _%tl194953194976%_)
                                        (cons '%#quote
                                              (cons (gx#syntax->datum
                                                     _%e194979%_)
                                                    '()))
                                        (_%E194947194959%_)))))
                              (_%E194947194959%_))))
                      (_%E194947194959%_)))))
          (_%E194946194981%_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_%stx194903%_)
        (let* ((_%e194904194914%_ _%stx194903%_)
               (_%E194906194918%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e194904194914%_)))
               (_%E194905194940%_
                (lambda ()
                  (if (gx#stx-pair? _%e194904194914%_)
                      (let ((_%e194907194922%_
                             (gx#syntax-e _%e194904194914%_)))
                        (let ((_%hd194908194925%_ (##car _%e194907194922%_))
                              (_%tl194909194927%_ (##cdr _%e194907194922%_)))
                          (if (gx#stx-pair? _%tl194909194927%_)
                              (let ((_%e194910194930%_
                                     (gx#syntax-e _%tl194909194927%_)))
                                (let ((_%hd194911194933%_
                                       (##car _%e194910194930%_))
                                      (_%tl194912194935%_
                                       (##cdr _%e194910194930%_)))
                                  (let ((_%e194938%_ _%hd194911194933%_))
                                    (if (gx#stx-null? _%tl194912194935%_)
                                        (cons '%#quote-syntax
                                              (cons (gx#core-quote-syntax__0
                                                     _%e194938%_)
                                                    '()))
                                        (_%E194906194918%_)))))
                              (_%E194906194918%_))))
                      (_%E194906194918%_)))))
          (_%E194905194940%_))))
    (define gx#core-compile-top-call%
      (lambda (_%stx194860%_)
        (let* ((_%e194861194871%_ _%stx194860%_)
               (_%E194863194875%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e194861194871%_)))
               (_%E194862194899%_
                (lambda ()
                  (if (gx#stx-pair? _%e194861194871%_)
                      (let ((_%e194864194879%_
                             (gx#syntax-e _%e194861194871%_)))
                        (let ((_%hd194865194882%_ (##car _%e194864194879%_))
                              (_%tl194866194884%_ (##cdr _%e194864194879%_)))
                          (if (gx#stx-pair? _%tl194866194884%_)
                              (let ((_%e194867194887%_
                                     (gx#syntax-e _%tl194866194884%_)))
                                (let ((_%hd194868194890%_
                                       (##car _%e194867194887%_))
                                      (_%tl194869194892%_
                                       (##cdr _%e194867194887%_)))
                                  (let* ((_%rator194895%_ _%hd194868194890%_)
                                         (_%args194897%_ _%tl194869194892%_))
                                    (cons '%#call
                                          (cons (gx#core-compile-top-syntax
                                                 _%rator194895%_)
                                                (gx#stx-map1
                                                 gx#core-compile-top-syntax
                                                 _%args194897%_))))))
                              (_%E194863194875%_))))
                      (_%E194863194875%_)))))
          (_%E194862194899%_))))
    (define gx#core-compile-top-if%
      (lambda (_%stx194793%_)
        (let* ((_%e194794194810%_ _%stx194793%_)
               (_%E194796194814%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e194794194810%_)))
               (_%E194795194856%_
                (lambda ()
                  (if (gx#stx-pair? _%e194794194810%_)
                      (let ((_%e194797194818%_
                             (gx#syntax-e _%e194794194810%_)))
                        (let ((_%hd194798194821%_ (##car _%e194797194818%_))
                              (_%tl194799194823%_ (##cdr _%e194797194818%_)))
                          (if (gx#stx-pair? _%tl194799194823%_)
                              (let ((_%e194800194826%_
                                     (gx#syntax-e _%tl194799194823%_)))
                                (let ((_%hd194801194829%_
                                       (##car _%e194800194826%_))
                                      (_%tl194802194831%_
                                       (##cdr _%e194800194826%_)))
                                  (let ((_%test194834%_ _%hd194801194829%_))
                                    (if (gx#stx-pair? _%tl194802194831%_)
                                        (let ((_%e194803194836%_
                                               (gx#syntax-e
                                                _%tl194802194831%_)))
                                          (let ((_%hd194804194839%_
                                                 (##car _%e194803194836%_))
                                                (_%tl194805194841%_
                                                 (##cdr _%e194803194836%_)))
                                            (let ((_%K194844%_
                                                   _%hd194804194839%_))
                                              (if (gx#stx-pair?
                                                   _%tl194805194841%_)
                                                  (let ((_%e194806194846%_
                                                         (gx#syntax-e
                                                          _%tl194805194841%_)))
                                                    (let ((_%hd194807194849%_
                                                           (##car _%e194806194846%_))
                                                          (_%tl194808194851%_
                                                           (##cdr _%e194806194846%_)))
                                                      (let ((_%E194854%_
                                                             _%hd194807194849%_))
                                                        (if (gx#stx-null?
                                                             _%tl194808194851%_)
                                                            (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#core-compile-top-syntax _%test194834%_)
                                (cons (gx#core-compile-top-syntax _%K194844%_)
                                      (cons (gx#core-compile-top-syntax
                                             _%E194854%_)
                                            '()))))
                    (_%E194796194814%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E194796194814%_)))))
                                        (_%E194796194814%_)))))
                              (_%E194796194814%_))))
                      (_%E194796194814%_)))))
          (_%E194795194856%_))))
    (define gx#core-compile-top-ref%
      (lambda (_%stx194752%_)
        (let* ((_%e194753194763%_ _%stx194752%_)
               (_%E194755194767%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e194753194763%_)))
               (_%E194754194789%_
                (lambda ()
                  (if (gx#stx-pair? _%e194753194763%_)
                      (let ((_%e194756194771%_
                             (gx#syntax-e _%e194753194763%_)))
                        (let ((_%hd194757194774%_ (##car _%e194756194771%_))
                              (_%tl194758194776%_ (##cdr _%e194756194771%_)))
                          (if (gx#stx-pair? _%tl194758194776%_)
                              (let ((_%e194759194779%_
                                     (gx#syntax-e _%tl194758194776%_)))
                                (let ((_%hd194760194782%_
                                       (##car _%e194759194779%_))
                                      (_%tl194761194784%_
                                       (##cdr _%e194759194779%_)))
                                  (let ((_%id194787%_ _%hd194760194782%_))
                                    (if (gx#stx-null? _%tl194761194784%_)
                                        (if (gx#identifier? _%id194787%_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _%id194787%_)
                                                        '()))
                                            (_%E194755194767%_))
                                        (_%E194755194767%_)))))
                              (_%E194755194767%_))))
                      (_%E194755194767%_)))))
          (_%E194754194789%_))))
    (define gx#core-compile-top-setq%
      (lambda (_%stx194698%_)
        (let* ((_%e194699194712%_ _%stx194698%_)
               (_%E194701194716%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e194699194712%_)))
               (_%E194700194748%_
                (lambda ()
                  (if (gx#stx-pair? _%e194699194712%_)
                      (let ((_%e194702194720%_
                             (gx#syntax-e _%e194699194712%_)))
                        (let ((_%hd194703194723%_ (##car _%e194702194720%_))
                              (_%tl194704194725%_ (##cdr _%e194702194720%_)))
                          (if (gx#stx-pair? _%tl194704194725%_)
                              (let ((_%e194705194728%_
                                     (gx#syntax-e _%tl194704194725%_)))
                                (let ((_%hd194706194731%_
                                       (##car _%e194705194728%_))
                                      (_%tl194707194733%_
                                       (##cdr _%e194705194728%_)))
                                  (let ((_%id194736%_ _%hd194706194731%_))
                                    (if (gx#stx-pair? _%tl194707194733%_)
                                        (let ((_%e194708194738%_
                                               (gx#syntax-e
                                                _%tl194707194733%_)))
                                          (let ((_%hd194709194741%_
                                                 (##car _%e194708194738%_))
                                                (_%tl194710194743%_
                                                 (##cdr _%e194708194738%_)))
                                            (let ((_%expr194746%_
                                                   _%hd194709194741%_))
                                              (if (gx#stx-null?
                                                   _%tl194710194743%_)
                                                  (if (gx#identifier?
                                                       _%id194736%_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%id194736%_)
                          (cons (gx#core-compile-top-syntax _%expr194746%_)
                                '())))
              (_%E194701194716%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E194701194716%_)))))
                                        (_%E194701194716%_)))))
                              (_%E194701194716%_))))
                      (_%E194701194716%_)))))
          (_%E194700194748%_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_%id194692%_)
        (let ((_%$e194694%_ (gx#resolve-identifier__0 _%id194692%_)))
          (if _%$e194694%_
              (##unchecked-structure-ref _%$e194694%_ '1 '#f '#f)
              _%id194692%_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_%hd194690%_)
        (if (gx#identifier? _%hd194690%_)
            (gx#core-compile-top-runtime-ref _%hd194690%_)
            '#f)))))
