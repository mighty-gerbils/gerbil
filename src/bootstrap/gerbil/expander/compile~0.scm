(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1755903076)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_%stx134798%_)
        (let* ((_%e134799134806%_ _%stx134798%_)
               (_%E134801134810%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e134799134806%_)))
               (_%E134800134824%_
                (lambda ()
                  (if (gx#stx-pair? _%e134799134806%_)
                      (let ((_%e134802134814%_
                             (gx#syntax-e _%e134799134806%_)))
                        (let ((_%hd134803134817%_ (##car _%e134802134814%_))
                              (_%tl134804134819%_ (##cdr _%e134802134814%_)))
                          (let* ((_%form134822%_ _%hd134803134817%_)
                                 (__self134827
                                  (gx#syntax-local-e__0 _%form134822%_))
                                 (__method134828
                                  (__method-ref
                                   __self134827
                                   'compile-top-syntax)))
                            (if __method134828
                                (__method134828 __self134827 _%stx134798%_)
                                (begin
                                  (error '"Missing method"
                                         __self134827
                                         'compile-top-syntax)
                                  '#!void)))))
                      (_%E134801134810%_)))))
          (_%E134800134824%_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_%self133641134744%_ _%stx134746%_)
        (let* ((_%self134748%_ _%self133641134744%_)
               (_%self134750%_ _%self134748%_)
               (_%self134759134767%_ _%self134750%_)
               (_%E134761134771%_
                (lambda ()
                  (error '"No clause matching"
                         _%self134759134767%_
                         '((core-expander _ _ K)))
                  '#!void))
               (_%K134762134784%_
                (lambda (_%K134774%_)
                  (let ((_%$e134776%_ (gx#stx-source _%stx134746%_)))
                    (if _%$e134776%_
                        ((lambda (_%g134778134780%_)
                           (gx#stx-wrap-source
                            (_%K134774%_ _%stx134746%_)
                            _%g134778134780%_))
                         _%$e134776%_)
                        (_%K134774%_ _%stx134746%_)))))
               (_%e134763134787%_
                (##unchecked-structure-ref _%self134759134767%_ '1 '#f '#f))
               (_%e134764134790%_
                (##unchecked-structure-ref _%self134759134767%_ '2 '#f '#f))
               (_%e134765134793%_
                (##unchecked-structure-ref _%self134759134767%_ '3 '#f '#f))
               (_%K134796%_ _%e134765134793%_))
          (_%K134762134784%_ _%K134796%_))))
    (__bind-method!__%
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_%stx134618%_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _%stx134618%_)))
    (define gx#core-compile-top-begin%
      (lambda (_%stx134588%_)
        (let* ((_%e134589134596%_ _%stx134588%_)
               (_%E134591134600%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e134589134596%_)))
               (_%E134590134614%_
                (lambda ()
                  (if (gx#stx-pair? _%e134589134596%_)
                      (let ((_%e134592134604%_
                             (gx#syntax-e _%e134589134596%_)))
                        (let ((_%hd134593134607%_ (##car _%e134592134604%_))
                              (_%tl134594134609%_ (##cdr _%e134592134604%_)))
                          (let ((_%body134612%_ _%tl134594134609%_))
                            (cons '%#begin
                                  (gx#stx-map1
                                   gx#core-compile-top-syntax
                                   _%body134612%_)))))
                      (_%E134591134600%_)))))
          (_%E134590134614%_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_%stx134557%_)
        (let* ((_%e134558134565%_ _%stx134557%_)
               (_%E134560134569%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e134558134565%_)))
               (_%E134559134584%_
                (lambda ()
                  (if (gx#stx-pair? _%e134558134565%_)
                      (let ((_%e134561134573%_
                             (gx#syntax-e _%e134558134565%_)))
                        (let ((_%hd134562134576%_ (##car _%e134561134573%_))
                              (_%tl134563134578%_ (##cdr _%e134561134573%_)))
                          (let ((_%body134581%_ _%tl134563134578%_))
                            (cons '%#begin-syntax
                                  (call-with-parameters__1
                                   (lambda ()
                                     (gx#stx-map1
                                      gx#core-compile-top-syntax
                                      _%body134581%_))
                                   gx#current-expander-phi
                                   (##fx+ (gx#current-expander-phi) '1))))))
                      (_%E134560134569%_)))))
          (_%E134559134584%_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_%stx134527%_)
        (let* ((_%e134528134535%_ _%stx134527%_)
               (_%E134530134539%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e134528134535%_)))
               (_%E134529134553%_
                (lambda ()
                  (if (gx#stx-pair? _%e134528134535%_)
                      (let ((_%e134531134543%_
                             (gx#syntax-e _%e134528134535%_)))
                        (let ((_%hd134532134546%_ (##car _%e134531134543%_))
                              (_%tl134533134548%_ (##cdr _%e134531134543%_)))
                          (let ((_%body134551%_ _%tl134533134548%_))
                            (cons '%#begin-foreign _%body134551%_))))
                      (_%E134530134539%_)))))
          (_%E134529134553%_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_%stx134473%_)
        (let* ((_%e134474134487%_ _%stx134473%_)
               (_%E134476134491%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e134474134487%_)))
               (_%E134475134523%_
                (lambda ()
                  (if (gx#stx-pair? _%e134474134487%_)
                      (let ((_%e134477134495%_
                             (gx#syntax-e _%e134474134487%_)))
                        (let ((_%hd134478134498%_ (##car _%e134477134495%_))
                              (_%tl134479134500%_ (##cdr _%e134477134495%_)))
                          (if (gx#stx-pair? _%tl134479134500%_)
                              (let ((_%e134480134503%_
                                     (gx#syntax-e _%tl134479134500%_)))
                                (let ((_%hd134481134506%_
                                       (##car _%e134480134503%_))
                                      (_%tl134482134508%_
                                       (##cdr _%e134480134503%_)))
                                  (let ((_%ann134511%_ _%hd134481134506%_))
                                    (if (gx#stx-pair? _%tl134482134508%_)
                                        (let ((_%e134483134513%_
                                               (gx#syntax-e
                                                _%tl134482134508%_)))
                                          (let ((_%hd134484134516%_
                                                 (##car _%e134483134513%_))
                                                (_%tl134485134518%_
                                                 (##cdr _%e134483134513%_)))
                                            (let ((_%expr134521%_
                                                   _%hd134484134516%_))
                                              (if (gx#stx-null?
                                                   _%tl134485134518%_)
                                                  (gx#core-compile-top-syntax
                                                   _%expr134521%_)
                                                  (_%E134476134491%_)))))
                                        (_%E134476134491%_)))))
                              (_%E134476134491%_))))
                      (_%E134476134491%_)))))
          (_%E134475134523%_))))
    (define gx#core-compile-top-import%
      (lambda (_%stx134443%_)
        (let* ((_%e134444134451%_ _%stx134443%_)
               (_%E134446134455%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e134444134451%_)))
               (_%E134445134469%_
                (lambda ()
                  (if (gx#stx-pair? _%e134444134451%_)
                      (let ((_%e134447134459%_
                             (gx#syntax-e _%e134444134451%_)))
                        (let ((_%hd134448134462%_ (##car _%e134447134459%_))
                              (_%tl134449134464%_ (##cdr _%e134447134459%_)))
                          (let ((_%body134467%_ _%tl134449134464%_))
                            (cons '%#import _%body134467%_))))
                      (_%E134446134455%_)))))
          (_%E134445134469%_))))
    (define gx#core-compile-top-module%
      (lambda (_%stx134400%_)
        (let* ((_%e134401134411%_ _%stx134400%_)
               (_%E134403134415%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e134401134411%_)))
               (_%E134402134439%_
                (lambda ()
                  (if (gx#stx-pair? _%e134401134411%_)
                      (let ((_%e134404134419%_
                             (gx#syntax-e _%e134401134411%_)))
                        (let ((_%hd134405134422%_ (##car _%e134404134419%_))
                              (_%tl134406134424%_ (##cdr _%e134404134419%_)))
                          (if (gx#stx-pair? _%tl134406134424%_)
                              (let ((_%e134407134427%_
                                     (gx#syntax-e _%tl134406134424%_)))
                                (let ((_%hd134408134430%_
                                       (##car _%e134407134427%_))
                                      (_%tl134409134432%_
                                       (##cdr _%e134407134427%_)))
                                  (let* ((_%hd134435%_ _%hd134408134430%_)
                                         (_%body134437%_ _%tl134409134432%_))
                                    (cons '%#module
                                          (cons (##structure-ref
                                                 (gx#syntax-local-e__0
                                                  _%hd134435%_)
                                                 '1
                                                 gx#expander-context::t
                                                 '#f)
                                                (gx#stx-map1
                                                 gx#core-compile-top-syntax
                                                 _%body134437%_))))))
                              (_%E134403134415%_))))
                      (_%E134403134415%_)))))
          (_%E134402134439%_))))
    (define gx#core-compile-top-export%
      (lambda (_%stx134370%_)
        (let* ((_%e134371134378%_ _%stx134370%_)
               (_%E134373134382%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e134371134378%_)))
               (_%E134372134396%_
                (lambda ()
                  (if (gx#stx-pair? _%e134371134378%_)
                      (let ((_%e134374134386%_
                             (gx#syntax-e _%e134371134378%_)))
                        (let ((_%hd134375134389%_ (##car _%e134374134386%_))
                              (_%tl134376134391%_ (##cdr _%e134374134386%_)))
                          (let ((_%body134394%_ _%tl134376134391%_))
                            (cons '%#export _%body134394%_))))
                      (_%E134373134382%_)))))
          (_%E134372134396%_))))
    (define gx#core-compile-top-provide%
      (lambda (_%stx134340%_)
        (let* ((_%e134341134348%_ _%stx134340%_)
               (_%E134343134352%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e134341134348%_)))
               (_%E134342134366%_
                (lambda ()
                  (if (gx#stx-pair? _%e134341134348%_)
                      (let ((_%e134344134356%_
                             (gx#syntax-e _%e134341134348%_)))
                        (let ((_%hd134345134359%_ (##car _%e134344134356%_))
                              (_%tl134346134361%_ (##cdr _%e134344134356%_)))
                          (let ((_%body134364%_ _%tl134346134361%_))
                            (cons '%#provide _%body134364%_))))
                      (_%E134343134352%_)))))
          (_%E134342134366%_))))
    (define gx#core-compile-top-extern%
      (lambda (_%stx134310%_)
        (let* ((_%e134311134318%_ _%stx134310%_)
               (_%E134313134322%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e134311134318%_)))
               (_%E134312134336%_
                (lambda ()
                  (if (gx#stx-pair? _%e134311134318%_)
                      (let ((_%e134314134326%_
                             (gx#syntax-e _%e134311134318%_)))
                        (let ((_%hd134315134329%_ (##car _%e134314134326%_))
                              (_%tl134316134331%_ (##cdr _%e134314134326%_)))
                          (let ((_%body134334%_ _%tl134316134331%_))
                            (cons '%#extern _%body134334%_))))
                      (_%E134313134322%_)))))
          (_%E134312134336%_))))
    (define gx#core-compile-top-define-values%
      (lambda (_%stx134256%_)
        (let* ((_%e134257134270%_ _%stx134256%_)
               (_%E134259134274%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e134257134270%_)))
               (_%E134258134306%_
                (lambda ()
                  (if (gx#stx-pair? _%e134257134270%_)
                      (let ((_%e134260134278%_
                             (gx#syntax-e _%e134257134270%_)))
                        (let ((_%hd134261134281%_ (##car _%e134260134278%_))
                              (_%tl134262134283%_ (##cdr _%e134260134278%_)))
                          (if (gx#stx-pair? _%tl134262134283%_)
                              (let ((_%e134263134286%_
                                     (gx#syntax-e _%tl134262134283%_)))
                                (let ((_%hd134264134289%_
                                       (##car _%e134263134286%_))
                                      (_%tl134265134291%_
                                       (##cdr _%e134263134286%_)))
                                  (let ((_%hd134294%_ _%hd134264134289%_))
                                    (if (gx#stx-pair? _%tl134265134291%_)
                                        (let ((_%e134266134296%_
                                               (gx#syntax-e
                                                _%tl134265134291%_)))
                                          (let ((_%hd134267134299%_
                                                 (##car _%e134266134296%_))
                                                (_%tl134268134301%_
                                                 (##cdr _%e134266134296%_)))
                                            (let ((_%expr134304%_
                                                   _%hd134267134299%_))
                                              (if (gx#stx-null?
                                                   _%tl134268134301%_)
                                                  (cons '%#define-values
                                                        (cons (gx#stx-map1
                                                               gx#core-compile-top-runtime-bind
                                                               _%hd134294%_)
                                                              (cons (gx#core-compile-top-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%expr134304%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E134259134274%_)))))
                                        (_%E134259134274%_)))))
                              (_%E134259134274%_))))
                      (_%E134259134274%_)))))
          (_%E134258134306%_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_%stx134201%_)
        (let* ((_%e134202134215%_ _%stx134201%_)
               (_%E134204134219%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e134202134215%_)))
               (_%E134203134252%_
                (lambda ()
                  (if (gx#stx-pair? _%e134202134215%_)
                      (let ((_%e134205134223%_
                             (gx#syntax-e _%e134202134215%_)))
                        (let ((_%hd134206134226%_ (##car _%e134205134223%_))
                              (_%tl134207134228%_ (##cdr _%e134205134223%_)))
                          (if (gx#stx-pair? _%tl134207134228%_)
                              (let ((_%e134208134231%_
                                     (gx#syntax-e _%tl134207134228%_)))
                                (let ((_%hd134209134234%_
                                       (##car _%e134208134231%_))
                                      (_%tl134210134236%_
                                       (##cdr _%e134208134231%_)))
                                  (let ((_%hd134239%_ _%hd134209134234%_))
                                    (if (gx#stx-pair? _%tl134210134236%_)
                                        (let ((_%e134211134241%_
                                               (gx#syntax-e
                                                _%tl134210134236%_)))
                                          (let ((_%hd134212134244%_
                                                 (##car _%e134211134241%_))
                                                (_%tl134213134246%_
                                                 (##cdr _%e134211134241%_)))
                                            (let ((_%expr134249%_
                                                   _%hd134212134244%_))
                                              (if (gx#stx-null?
                                                   _%tl134213134246%_)
                                                  (cons '%#define-syntax
                                                        (cons _%hd134239%_
                                                              (cons (call-with-parameters__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda ()
                               (gx#core-compile-top-syntax _%expr134249%_))
                             gx#current-expander-phi
                             (##fx+ (gx#current-expander-phi) '1))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E134204134219%_)))))
                                        (_%E134204134219%_)))))
                              (_%E134204134219%_))))
                      (_%E134204134219%_)))))
          (_%E134203134252%_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_%stx134171%_)
        (let* ((_%e134172134179%_ _%stx134171%_)
               (_%E134174134183%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e134172134179%_)))
               (_%E134173134197%_
                (lambda ()
                  (if (gx#stx-pair? _%e134172134179%_)
                      (let ((_%e134175134187%_
                             (gx#syntax-e _%e134172134179%_)))
                        (let ((_%hd134176134190%_ (##car _%e134175134187%_))
                              (_%tl134177134192%_ (##cdr _%e134175134187%_)))
                          (let ((_%body134195%_ _%tl134177134192%_))
                            (cons '%#define-alias _%body134195%_))))
                      (_%E134174134183%_)))))
          (_%E134173134197%_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_%stx134141%_)
        (let* ((_%e134142134149%_ _%stx134141%_)
               (_%E134144134153%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e134142134149%_)))
               (_%E134143134167%_
                (lambda ()
                  (if (gx#stx-pair? _%e134142134149%_)
                      (let ((_%e134145134157%_
                             (gx#syntax-e _%e134142134149%_)))
                        (let ((_%hd134146134160%_ (##car _%e134145134157%_))
                              (_%tl134147134162%_ (##cdr _%e134145134157%_)))
                          (let ((_%body134165%_ _%tl134147134162%_))
                            (cons '%#define-runtime _%body134165%_))))
                      (_%E134144134153%_)))))
          (_%E134143134167%_))))
    (define gx#core-compile-top-declare%
      (lambda (_%stx134111%_)
        (let* ((_%e134112134119%_ _%stx134111%_)
               (_%E134114134123%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e134112134119%_)))
               (_%E134113134137%_
                (lambda ()
                  (if (gx#stx-pair? _%e134112134119%_)
                      (let ((_%e134115134127%_
                             (gx#syntax-e _%e134112134119%_)))
                        (let ((_%hd134116134130%_ (##car _%e134115134127%_))
                              (_%tl134117134132%_ (##cdr _%e134115134127%_)))
                          (let ((_%decls134135%_ _%tl134117134132%_))
                            (cons '%#declare _%decls134135%_))))
                      (_%E134114134123%_)))))
          (_%E134113134137%_))))
    (define gx#core-compile-top-lambda%
      (lambda (_%stx134081%_)
        (let* ((_%e134082134089%_ _%stx134081%_)
               (_%E134084134093%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e134082134089%_)))
               (_%E134083134107%_
                (lambda ()
                  (if (gx#stx-pair? _%e134082134089%_)
                      (let ((_%e134085134097%_
                             (gx#syntax-e _%e134082134089%_)))
                        (let ((_%hd134086134100%_ (##car _%e134085134097%_))
                              (_%tl134087134102%_ (##cdr _%e134085134097%_)))
                          (let ((_%clause134105%_ _%tl134087134102%_))
                            (cons '%#lambda
                                  (gx#core-compile-top-lambda-clause
                                   _%clause134105%_)))))
                      (_%E134084134093%_)))))
          (_%E134083134107%_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_%stx134038%_)
        (let* ((_%e134039134049%_ _%stx134038%_)
               (_%E134041134053%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e134039134049%_)))
               (_%E134040134077%_
                (lambda ()
                  (if (gx#stx-pair? _%e134039134049%_)
                      (let ((_%e134042134057%_
                             (gx#syntax-e _%e134039134049%_)))
                        (let ((_%hd134043134060%_ (##car _%e134042134057%_))
                              (_%tl134044134062%_ (##cdr _%e134042134057%_)))
                          (let ((_%hd134065%_ _%hd134043134060%_))
                            (if (gx#stx-pair? _%tl134044134062%_)
                                (let ((_%e134045134067%_
                                       (gx#syntax-e _%tl134044134062%_)))
                                  (let ((_%hd134046134070%_
                                         (##car _%e134045134067%_))
                                        (_%tl134047134072%_
                                         (##cdr _%e134045134067%_)))
                                    (let ((_%body134075%_ _%hd134046134070%_))
                                      (if (gx#stx-null? _%tl134047134072%_)
                                          (cons (gx#stx-map1
                                                 gx#core-compile-top-runtime-bind
                                                 _%hd134065%_)
                                                (cons (gx#core-compile-top-syntax
                                                       _%body134075%_)
                                                      '()))
                                          (_%E134041134053%_)))))
                                (_%E134041134053%_)))))
                      (_%E134041134053%_)))))
          (_%E134040134077%_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_%stx134008%_)
        (let* ((_%e134009134016%_ _%stx134008%_)
               (_%E134011134020%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e134009134016%_)))
               (_%E134010134034%_
                (lambda ()
                  (if (gx#stx-pair? _%e134009134016%_)
                      (let ((_%e134012134024%_
                             (gx#syntax-e _%e134009134016%_)))
                        (let ((_%hd134013134027%_ (##car _%e134012134024%_))
                              (_%tl134014134029%_ (##cdr _%e134012134024%_)))
                          (let ((_%clauses134032%_ _%tl134014134029%_))
                            (cons '%#case-lambda
                                  (gx#stx-map1
                                   gx#core-compile-top-lambda-clause
                                   _%clauses134032%_)))))
                      (_%E134011134020%_)))))
          (_%E134010134034%_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_%stx133943%_ _%form133944%_)
        (let* ((_%e133945133958%_ _%stx133943%_)
               (_%E133947133962%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e133945133958%_)))
               (_%E133946133994%_
                (lambda ()
                  (if (gx#stx-pair? _%e133945133958%_)
                      (let ((_%e133948133966%_
                             (gx#syntax-e _%e133945133958%_)))
                        (let ((_%hd133949133969%_ (##car _%e133948133966%_))
                              (_%tl133950133971%_ (##cdr _%e133948133966%_)))
                          (if (gx#stx-pair? _%tl133950133971%_)
                              (let ((_%e133951133974%_
                                     (gx#syntax-e _%tl133950133971%_)))
                                (let ((_%hd133952133977%_
                                       (##car _%e133951133974%_))
                                      (_%tl133953133979%_
                                       (##cdr _%e133951133974%_)))
                                  (let ((_%hd133982%_ _%hd133952133977%_))
                                    (if (gx#stx-pair? _%tl133953133979%_)
                                        (let ((_%e133954133984%_
                                               (gx#syntax-e
                                                _%tl133953133979%_)))
                                          (let ((_%hd133955133987%_
                                                 (##car _%e133954133984%_))
                                                (_%tl133956133989%_
                                                 (##cdr _%e133954133984%_)))
                                            (let ((_%body133992%_
                                                   _%hd133955133987%_))
                                              (if (gx#stx-null?
                                                   _%tl133956133989%_)
                                                  (cons _%form133944%_
                                                        (cons (gx#stx-map1
                                                               gx#core-compile-top-lambda-clause
                                                               _%hd133982%_)
                                                              (cons (gx#core-compile-top-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%body133992%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E133947133962%_)))))
                                        (_%E133947133962%_)))))
                              (_%E133947133962%_))))
                      (_%E133947133962%_)))))
          (_%E133946133994%_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_%stx134001%_)
        (let ((_%form134003%_ '%#let-values))
          (gx#core-compile-top-let-values%__% _%stx134001%_ _%form134003%_))))
    (define gx#core-compile-top-let-values%
      (lambda _g134829_
        (let ((_g134830_ (##length _g134829_)))
          (cond ((##fx= _g134830_ 1)
                 (apply gx#core-compile-top-let-values%__0 _g134829_))
                ((##fx= _g134830_ 2)
                 (apply gx#core-compile-top-let-values%__% _g134829_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g134829_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_%stx133940%_)
        (gx#core-compile-top-let-values%__% _%stx133940%_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_%stx133938%_)
        (gx#core-compile-top-let-values%__% _%stx133938%_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_%stx133897%_)
        (let* ((_%e133898133908%_ _%stx133897%_)
               (_%E133900133912%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e133898133908%_)))
               (_%E133899133934%_
                (lambda ()
                  (if (gx#stx-pair? _%e133898133908%_)
                      (let ((_%e133901133916%_
                             (gx#syntax-e _%e133898133908%_)))
                        (let ((_%hd133902133919%_ (##car _%e133901133916%_))
                              (_%tl133903133921%_ (##cdr _%e133901133916%_)))
                          (if (gx#stx-pair? _%tl133903133921%_)
                              (let ((_%e133904133924%_
                                     (gx#syntax-e _%tl133903133921%_)))
                                (let ((_%hd133905133927%_
                                       (##car _%e133904133924%_))
                                      (_%tl133906133929%_
                                       (##cdr _%e133904133924%_)))
                                  (let ((_%e133932%_ _%hd133905133927%_))
                                    (if (gx#stx-null? _%tl133906133929%_)
                                        (cons '%#quote
                                              (cons (gx#syntax->datum
                                                     _%e133932%_)
                                                    '()))
                                        (_%E133900133912%_)))))
                              (_%E133900133912%_))))
                      (_%E133900133912%_)))))
          (_%E133899133934%_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_%stx133856%_)
        (let* ((_%e133857133867%_ _%stx133856%_)
               (_%E133859133871%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e133857133867%_)))
               (_%E133858133893%_
                (lambda ()
                  (if (gx#stx-pair? _%e133857133867%_)
                      (let ((_%e133860133875%_
                             (gx#syntax-e _%e133857133867%_)))
                        (let ((_%hd133861133878%_ (##car _%e133860133875%_))
                              (_%tl133862133880%_ (##cdr _%e133860133875%_)))
                          (if (gx#stx-pair? _%tl133862133880%_)
                              (let ((_%e133863133883%_
                                     (gx#syntax-e _%tl133862133880%_)))
                                (let ((_%hd133864133886%_
                                       (##car _%e133863133883%_))
                                      (_%tl133865133888%_
                                       (##cdr _%e133863133883%_)))
                                  (let ((_%e133891%_ _%hd133864133886%_))
                                    (if (gx#stx-null? _%tl133865133888%_)
                                        (cons '%#quote-syntax
                                              (cons (gx#core-quote-syntax__0
                                                     _%e133891%_)
                                                    '()))
                                        (_%E133859133871%_)))))
                              (_%E133859133871%_))))
                      (_%E133859133871%_)))))
          (_%E133858133893%_))))
    (define gx#core-compile-top-call%
      (lambda (_%stx133813%_)
        (let* ((_%e133814133824%_ _%stx133813%_)
               (_%E133816133828%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e133814133824%_)))
               (_%E133815133852%_
                (lambda ()
                  (if (gx#stx-pair? _%e133814133824%_)
                      (let ((_%e133817133832%_
                             (gx#syntax-e _%e133814133824%_)))
                        (let ((_%hd133818133835%_ (##car _%e133817133832%_))
                              (_%tl133819133837%_ (##cdr _%e133817133832%_)))
                          (if (gx#stx-pair? _%tl133819133837%_)
                              (let ((_%e133820133840%_
                                     (gx#syntax-e _%tl133819133837%_)))
                                (let ((_%hd133821133843%_
                                       (##car _%e133820133840%_))
                                      (_%tl133822133845%_
                                       (##cdr _%e133820133840%_)))
                                  (let* ((_%rator133848%_ _%hd133821133843%_)
                                         (_%args133850%_ _%tl133822133845%_))
                                    (cons '%#call
                                          (cons (gx#core-compile-top-syntax
                                                 _%rator133848%_)
                                                (gx#stx-map1
                                                 gx#core-compile-top-syntax
                                                 _%args133850%_))))))
                              (_%E133816133828%_))))
                      (_%E133816133828%_)))))
          (_%E133815133852%_))))
    (define gx#core-compile-top-if%
      (lambda (_%stx133746%_)
        (let* ((_%e133747133763%_ _%stx133746%_)
               (_%E133749133767%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e133747133763%_)))
               (_%E133748133809%_
                (lambda ()
                  (if (gx#stx-pair? _%e133747133763%_)
                      (let ((_%e133750133771%_
                             (gx#syntax-e _%e133747133763%_)))
                        (let ((_%hd133751133774%_ (##car _%e133750133771%_))
                              (_%tl133752133776%_ (##cdr _%e133750133771%_)))
                          (if (gx#stx-pair? _%tl133752133776%_)
                              (let ((_%e133753133779%_
                                     (gx#syntax-e _%tl133752133776%_)))
                                (let ((_%hd133754133782%_
                                       (##car _%e133753133779%_))
                                      (_%tl133755133784%_
                                       (##cdr _%e133753133779%_)))
                                  (let ((_%test133787%_ _%hd133754133782%_))
                                    (if (gx#stx-pair? _%tl133755133784%_)
                                        (let ((_%e133756133789%_
                                               (gx#syntax-e
                                                _%tl133755133784%_)))
                                          (let ((_%hd133757133792%_
                                                 (##car _%e133756133789%_))
                                                (_%tl133758133794%_
                                                 (##cdr _%e133756133789%_)))
                                            (let ((_%K133797%_
                                                   _%hd133757133792%_))
                                              (if (gx#stx-pair?
                                                   _%tl133758133794%_)
                                                  (let ((_%e133759133799%_
                                                         (gx#syntax-e
                                                          _%tl133758133794%_)))
                                                    (let ((_%hd133760133802%_
                                                           (##car _%e133759133799%_))
                                                          (_%tl133761133804%_
                                                           (##cdr _%e133759133799%_)))
                                                      (let ((_%E133807%_
                                                             _%hd133760133802%_))
                                                        (if (gx#stx-null?
                                                             _%tl133761133804%_)
                                                            (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#core-compile-top-syntax _%test133787%_)
                                (cons (gx#core-compile-top-syntax _%K133797%_)
                                      (cons (gx#core-compile-top-syntax
                                             _%E133807%_)
                                            '()))))
                    (_%E133749133767%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E133749133767%_)))))
                                        (_%E133749133767%_)))))
                              (_%E133749133767%_))))
                      (_%E133749133767%_)))))
          (_%E133748133809%_))))
    (define gx#core-compile-top-ref%
      (lambda (_%stx133705%_)
        (let* ((_%e133706133716%_ _%stx133705%_)
               (_%E133708133720%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e133706133716%_)))
               (_%E133707133742%_
                (lambda ()
                  (if (gx#stx-pair? _%e133706133716%_)
                      (let ((_%e133709133724%_
                             (gx#syntax-e _%e133706133716%_)))
                        (let ((_%hd133710133727%_ (##car _%e133709133724%_))
                              (_%tl133711133729%_ (##cdr _%e133709133724%_)))
                          (if (gx#stx-pair? _%tl133711133729%_)
                              (let ((_%e133712133732%_
                                     (gx#syntax-e _%tl133711133729%_)))
                                (let ((_%hd133713133735%_
                                       (##car _%e133712133732%_))
                                      (_%tl133714133737%_
                                       (##cdr _%e133712133732%_)))
                                  (let ((_%id133740%_ _%hd133713133735%_))
                                    (if (gx#stx-null? _%tl133714133737%_)
                                        (if (gx#identifier? _%id133740%_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _%id133740%_)
                                                        '()))
                                            (_%E133708133720%_))
                                        (_%E133708133720%_)))))
                              (_%E133708133720%_))))
                      (_%E133708133720%_)))))
          (_%E133707133742%_))))
    (define gx#core-compile-top-setq%
      (lambda (_%stx133651%_)
        (let* ((_%e133652133665%_ _%stx133651%_)
               (_%E133654133669%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e133652133665%_)))
               (_%E133653133701%_
                (lambda ()
                  (if (gx#stx-pair? _%e133652133665%_)
                      (let ((_%e133655133673%_
                             (gx#syntax-e _%e133652133665%_)))
                        (let ((_%hd133656133676%_ (##car _%e133655133673%_))
                              (_%tl133657133678%_ (##cdr _%e133655133673%_)))
                          (if (gx#stx-pair? _%tl133657133678%_)
                              (let ((_%e133658133681%_
                                     (gx#syntax-e _%tl133657133678%_)))
                                (let ((_%hd133659133684%_
                                       (##car _%e133658133681%_))
                                      (_%tl133660133686%_
                                       (##cdr _%e133658133681%_)))
                                  (let ((_%id133689%_ _%hd133659133684%_))
                                    (if (gx#stx-pair? _%tl133660133686%_)
                                        (let ((_%e133661133691%_
                                               (gx#syntax-e
                                                _%tl133660133686%_)))
                                          (let ((_%hd133662133694%_
                                                 (##car _%e133661133691%_))
                                                (_%tl133663133696%_
                                                 (##cdr _%e133661133691%_)))
                                            (let ((_%expr133699%_
                                                   _%hd133662133694%_))
                                              (if (gx#stx-null?
                                                   _%tl133663133696%_)
                                                  (if (gx#identifier?
                                                       _%id133689%_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%id133689%_)
                          (cons (gx#core-compile-top-syntax _%expr133699%_)
                                '())))
              (_%E133654133669%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E133654133669%_)))))
                                        (_%E133654133669%_)))))
                              (_%E133654133669%_))))
                      (_%E133654133669%_)))))
          (_%E133653133701%_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_%id133645%_)
        (let ((_%$e133647%_ (gx#resolve-identifier__0 _%id133645%_)))
          (if _%$e133647%_
              (##unchecked-structure-ref _%$e133647%_ '1 '#f '#f)
              _%id133645%_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_%hd133643%_)
        (if (gx#identifier? _%hd133643%_)
            (gx#core-compile-top-runtime-ref _%hd133643%_)
            '#f)))))
