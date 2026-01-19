(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1768863413)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_%stx142121%_)
        (let* ((_%e142122142129%_ _%stx142121%_)
               (_%E142124142133%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e142122142129%_)))
               (_%E142123142147%_
                (lambda ()
                  (if (gx#stx-pair? _%e142122142129%_)
                      (let ((_%e142125142137%_
                             (gx#syntax-e _%e142122142129%_)))
                        (let ((_%hd142126142140%_ (##car _%e142125142137%_))
                              (_%tl142127142142%_ (##cdr _%e142125142137%_)))
                          (let* ((_%form142145%_ _%hd142126142140%_)
                                 (__self142150
                                  (gx#syntax-local-e__0 _%form142145%_))
                                 (__method142151
                                  (__method-ref
                                   __self142150
                                   'compile-top-syntax)))
                            (if __method142151
                                (__method142151 __self142150 _%stx142121%_)
                                (begin
                                  (error '"Missing method"
                                         __self142150
                                         'compile-top-syntax)
                                  '#!void)))))
                      (_%E142124142133%_)))))
          (_%E142123142147%_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_%self142069%_ _%stx142070%_)
        (let* ((_%self142073%_ _%self142069%_)
               (_%self142082142090%_ _%self142073%_)
               (_%E142084142094%_
                (lambda ()
                  (error '"No clause matching"
                         _%self142082142090%_
                         '((core-expander _ _ K)))
                  '#!void))
               (_%K142085142107%_
                (lambda (_%K142097%_)
                  (let ((_%$e142099%_ (gx#stx-source _%stx142070%_)))
                    (if _%$e142099%_
                        ((lambda (_%g142101142103%_)
                           (gx#stx-wrap-source
                            (_%K142097%_ _%stx142070%_)
                            _%g142101142103%_))
                         _%$e142099%_)
                        (_%K142097%_ _%stx142070%_)))))
               (_%e142086142110%_
                (##unchecked-structure-ref _%self142082142090%_ '1 '#f '#f))
               (_%e142087142113%_
                (##unchecked-structure-ref _%self142082142090%_ '2 '#f '#f))
               (_%e142088142116%_
                (##unchecked-structure-ref _%self142082142090%_ '3 '#f '#f))
               (_%K142119%_ _%e142088142116%_))
          (_%K142085142107%_ _%K142119%_))))
    (__bind-method!__%
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_%stx141943%_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _%stx141943%_)))
    (define gx#core-compile-top-begin%
      (lambda (_%stx141913%_)
        (let* ((_%e141914141921%_ _%stx141913%_)
               (_%E141916141925%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e141914141921%_)))
               (_%E141915141939%_
                (lambda ()
                  (if (gx#stx-pair? _%e141914141921%_)
                      (let ((_%e141917141929%_
                             (gx#syntax-e _%e141914141921%_)))
                        (let ((_%hd141918141932%_ (##car _%e141917141929%_))
                              (_%tl141919141934%_ (##cdr _%e141917141929%_)))
                          (let ((_%body141937%_ _%tl141919141934%_))
                            (cons '%#begin
                                  (gx#stx-map1
                                   gx#core-compile-top-syntax
                                   _%body141937%_)))))
                      (_%E141916141925%_)))))
          (_%E141915141939%_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_%stx141882%_)
        (let* ((_%e141883141890%_ _%stx141882%_)
               (_%E141885141894%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e141883141890%_)))
               (_%E141884141909%_
                (lambda ()
                  (if (gx#stx-pair? _%e141883141890%_)
                      (let ((_%e141886141898%_
                             (gx#syntax-e _%e141883141890%_)))
                        (let ((_%hd141887141901%_ (##car _%e141886141898%_))
                              (_%tl141888141903%_ (##cdr _%e141886141898%_)))
                          (let ((_%body141906%_ _%tl141888141903%_))
                            (cons '%#begin-syntax
                                  (call-with-parameters__1
                                   (lambda ()
                                     (gx#stx-map1
                                      gx#core-compile-top-syntax
                                      _%body141906%_))
                                   gx#current-expander-phi
                                   (##fx+ (gx#current-expander-phi) '1))))))
                      (_%E141885141894%_)))))
          (_%E141884141909%_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_%stx141852%_)
        (let* ((_%e141853141860%_ _%stx141852%_)
               (_%E141855141864%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e141853141860%_)))
               (_%E141854141878%_
                (lambda ()
                  (if (gx#stx-pair? _%e141853141860%_)
                      (let ((_%e141856141868%_
                             (gx#syntax-e _%e141853141860%_)))
                        (let ((_%hd141857141871%_ (##car _%e141856141868%_))
                              (_%tl141858141873%_ (##cdr _%e141856141868%_)))
                          (let ((_%body141876%_ _%tl141858141873%_))
                            (cons '%#begin-foreign _%body141876%_))))
                      (_%E141855141864%_)))))
          (_%E141854141878%_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_%stx141798%_)
        (let* ((_%e141799141812%_ _%stx141798%_)
               (_%E141801141816%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e141799141812%_)))
               (_%E141800141848%_
                (lambda ()
                  (if (gx#stx-pair? _%e141799141812%_)
                      (let ((_%e141802141820%_
                             (gx#syntax-e _%e141799141812%_)))
                        (let ((_%hd141803141823%_ (##car _%e141802141820%_))
                              (_%tl141804141825%_ (##cdr _%e141802141820%_)))
                          (if (gx#stx-pair? _%tl141804141825%_)
                              (let ((_%e141805141828%_
                                     (gx#syntax-e _%tl141804141825%_)))
                                (let ((_%hd141806141831%_
                                       (##car _%e141805141828%_))
                                      (_%tl141807141833%_
                                       (##cdr _%e141805141828%_)))
                                  (let ((_%ann141836%_ _%hd141806141831%_))
                                    (if (gx#stx-pair? _%tl141807141833%_)
                                        (let ((_%e141808141838%_
                                               (gx#syntax-e
                                                _%tl141807141833%_)))
                                          (let ((_%hd141809141841%_
                                                 (##car _%e141808141838%_))
                                                (_%tl141810141843%_
                                                 (##cdr _%e141808141838%_)))
                                            (let ((_%expr141846%_
                                                   _%hd141809141841%_))
                                              (if (gx#stx-null?
                                                   _%tl141810141843%_)
                                                  (gx#core-compile-top-syntax
                                                   _%expr141846%_)
                                                  (_%E141801141816%_)))))
                                        (_%E141801141816%_)))))
                              (_%E141801141816%_))))
                      (_%E141801141816%_)))))
          (_%E141800141848%_))))
    (define gx#core-compile-top-import%
      (lambda (_%stx141768%_)
        (let* ((_%e141769141776%_ _%stx141768%_)
               (_%E141771141780%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e141769141776%_)))
               (_%E141770141794%_
                (lambda ()
                  (if (gx#stx-pair? _%e141769141776%_)
                      (let ((_%e141772141784%_
                             (gx#syntax-e _%e141769141776%_)))
                        (let ((_%hd141773141787%_ (##car _%e141772141784%_))
                              (_%tl141774141789%_ (##cdr _%e141772141784%_)))
                          (let ((_%body141792%_ _%tl141774141789%_))
                            (cons '%#import _%body141792%_))))
                      (_%E141771141780%_)))))
          (_%E141770141794%_))))
    (define gx#core-compile-top-module%
      (lambda (_%stx141725%_)
        (let* ((_%e141726141736%_ _%stx141725%_)
               (_%E141728141740%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e141726141736%_)))
               (_%E141727141764%_
                (lambda ()
                  (if (gx#stx-pair? _%e141726141736%_)
                      (let ((_%e141729141744%_
                             (gx#syntax-e _%e141726141736%_)))
                        (let ((_%hd141730141747%_ (##car _%e141729141744%_))
                              (_%tl141731141749%_ (##cdr _%e141729141744%_)))
                          (if (gx#stx-pair? _%tl141731141749%_)
                              (let ((_%e141732141752%_
                                     (gx#syntax-e _%tl141731141749%_)))
                                (let ((_%hd141733141755%_
                                       (##car _%e141732141752%_))
                                      (_%tl141734141757%_
                                       (##cdr _%e141732141752%_)))
                                  (let* ((_%hd141760%_ _%hd141733141755%_)
                                         (_%body141762%_ _%tl141734141757%_))
                                    (cons '%#module
                                          (cons (##structure-ref
                                                 (gx#syntax-local-e__0
                                                  _%hd141760%_)
                                                 '1
                                                 gx#expander-context::t
                                                 '#f)
                                                (gx#stx-map1
                                                 gx#core-compile-top-syntax
                                                 _%body141762%_))))))
                              (_%E141728141740%_))))
                      (_%E141728141740%_)))))
          (_%E141727141764%_))))
    (define gx#core-compile-top-export%
      (lambda (_%stx141695%_)
        (let* ((_%e141696141703%_ _%stx141695%_)
               (_%E141698141707%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e141696141703%_)))
               (_%E141697141721%_
                (lambda ()
                  (if (gx#stx-pair? _%e141696141703%_)
                      (let ((_%e141699141711%_
                             (gx#syntax-e _%e141696141703%_)))
                        (let ((_%hd141700141714%_ (##car _%e141699141711%_))
                              (_%tl141701141716%_ (##cdr _%e141699141711%_)))
                          (let ((_%body141719%_ _%tl141701141716%_))
                            (cons '%#export _%body141719%_))))
                      (_%E141698141707%_)))))
          (_%E141697141721%_))))
    (define gx#core-compile-top-provide%
      (lambda (_%stx141665%_)
        (let* ((_%e141666141673%_ _%stx141665%_)
               (_%E141668141677%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e141666141673%_)))
               (_%E141667141691%_
                (lambda ()
                  (if (gx#stx-pair? _%e141666141673%_)
                      (let ((_%e141669141681%_
                             (gx#syntax-e _%e141666141673%_)))
                        (let ((_%hd141670141684%_ (##car _%e141669141681%_))
                              (_%tl141671141686%_ (##cdr _%e141669141681%_)))
                          (let ((_%body141689%_ _%tl141671141686%_))
                            (cons '%#provide _%body141689%_))))
                      (_%E141668141677%_)))))
          (_%E141667141691%_))))
    (define gx#core-compile-top-extern%
      (lambda (_%stx141635%_)
        (let* ((_%e141636141643%_ _%stx141635%_)
               (_%E141638141647%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e141636141643%_)))
               (_%E141637141661%_
                (lambda ()
                  (if (gx#stx-pair? _%e141636141643%_)
                      (let ((_%e141639141651%_
                             (gx#syntax-e _%e141636141643%_)))
                        (let ((_%hd141640141654%_ (##car _%e141639141651%_))
                              (_%tl141641141656%_ (##cdr _%e141639141651%_)))
                          (let ((_%body141659%_ _%tl141641141656%_))
                            (cons '%#extern _%body141659%_))))
                      (_%E141638141647%_)))))
          (_%E141637141661%_))))
    (define gx#core-compile-top-define-values%
      (lambda (_%stx141581%_)
        (let* ((_%e141582141595%_ _%stx141581%_)
               (_%E141584141599%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e141582141595%_)))
               (_%E141583141631%_
                (lambda ()
                  (if (gx#stx-pair? _%e141582141595%_)
                      (let ((_%e141585141603%_
                             (gx#syntax-e _%e141582141595%_)))
                        (let ((_%hd141586141606%_ (##car _%e141585141603%_))
                              (_%tl141587141608%_ (##cdr _%e141585141603%_)))
                          (if (gx#stx-pair? _%tl141587141608%_)
                              (let ((_%e141588141611%_
                                     (gx#syntax-e _%tl141587141608%_)))
                                (let ((_%hd141589141614%_
                                       (##car _%e141588141611%_))
                                      (_%tl141590141616%_
                                       (##cdr _%e141588141611%_)))
                                  (let ((_%hd141619%_ _%hd141589141614%_))
                                    (if (gx#stx-pair? _%tl141590141616%_)
                                        (let ((_%e141591141621%_
                                               (gx#syntax-e
                                                _%tl141590141616%_)))
                                          (let ((_%hd141592141624%_
                                                 (##car _%e141591141621%_))
                                                (_%tl141593141626%_
                                                 (##cdr _%e141591141621%_)))
                                            (let ((_%expr141629%_
                                                   _%hd141592141624%_))
                                              (if (gx#stx-null?
                                                   _%tl141593141626%_)
                                                  (cons '%#define-values
                                                        (cons (gx#stx-map1
                                                               gx#core-compile-top-runtime-bind
                                                               _%hd141619%_)
                                                              (cons (gx#core-compile-top-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%expr141629%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E141584141599%_)))))
                                        (_%E141584141599%_)))))
                              (_%E141584141599%_))))
                      (_%E141584141599%_)))))
          (_%E141583141631%_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_%stx141526%_)
        (let* ((_%e141527141540%_ _%stx141526%_)
               (_%E141529141544%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e141527141540%_)))
               (_%E141528141577%_
                (lambda ()
                  (if (gx#stx-pair? _%e141527141540%_)
                      (let ((_%e141530141548%_
                             (gx#syntax-e _%e141527141540%_)))
                        (let ((_%hd141531141551%_ (##car _%e141530141548%_))
                              (_%tl141532141553%_ (##cdr _%e141530141548%_)))
                          (if (gx#stx-pair? _%tl141532141553%_)
                              (let ((_%e141533141556%_
                                     (gx#syntax-e _%tl141532141553%_)))
                                (let ((_%hd141534141559%_
                                       (##car _%e141533141556%_))
                                      (_%tl141535141561%_
                                       (##cdr _%e141533141556%_)))
                                  (let ((_%hd141564%_ _%hd141534141559%_))
                                    (if (gx#stx-pair? _%tl141535141561%_)
                                        (let ((_%e141536141566%_
                                               (gx#syntax-e
                                                _%tl141535141561%_)))
                                          (let ((_%hd141537141569%_
                                                 (##car _%e141536141566%_))
                                                (_%tl141538141571%_
                                                 (##cdr _%e141536141566%_)))
                                            (let ((_%expr141574%_
                                                   _%hd141537141569%_))
                                              (if (gx#stx-null?
                                                   _%tl141538141571%_)
                                                  (cons '%#define-syntax
                                                        (cons _%hd141564%_
                                                              (cons (call-with-parameters__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda ()
                               (gx#core-compile-top-syntax _%expr141574%_))
                             gx#current-expander-phi
                             (##fx+ (gx#current-expander-phi) '1))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E141529141544%_)))))
                                        (_%E141529141544%_)))))
                              (_%E141529141544%_))))
                      (_%E141529141544%_)))))
          (_%E141528141577%_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_%stx141496%_)
        (let* ((_%e141497141504%_ _%stx141496%_)
               (_%E141499141508%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e141497141504%_)))
               (_%E141498141522%_
                (lambda ()
                  (if (gx#stx-pair? _%e141497141504%_)
                      (let ((_%e141500141512%_
                             (gx#syntax-e _%e141497141504%_)))
                        (let ((_%hd141501141515%_ (##car _%e141500141512%_))
                              (_%tl141502141517%_ (##cdr _%e141500141512%_)))
                          (let ((_%body141520%_ _%tl141502141517%_))
                            (cons '%#define-alias _%body141520%_))))
                      (_%E141499141508%_)))))
          (_%E141498141522%_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_%stx141466%_)
        (let* ((_%e141467141474%_ _%stx141466%_)
               (_%E141469141478%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e141467141474%_)))
               (_%E141468141492%_
                (lambda ()
                  (if (gx#stx-pair? _%e141467141474%_)
                      (let ((_%e141470141482%_
                             (gx#syntax-e _%e141467141474%_)))
                        (let ((_%hd141471141485%_ (##car _%e141470141482%_))
                              (_%tl141472141487%_ (##cdr _%e141470141482%_)))
                          (let ((_%body141490%_ _%tl141472141487%_))
                            (cons '%#define-runtime _%body141490%_))))
                      (_%E141469141478%_)))))
          (_%E141468141492%_))))
    (define gx#core-compile-top-declare%
      (lambda (_%stx141436%_)
        (let* ((_%e141437141444%_ _%stx141436%_)
               (_%E141439141448%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e141437141444%_)))
               (_%E141438141462%_
                (lambda ()
                  (if (gx#stx-pair? _%e141437141444%_)
                      (let ((_%e141440141452%_
                             (gx#syntax-e _%e141437141444%_)))
                        (let ((_%hd141441141455%_ (##car _%e141440141452%_))
                              (_%tl141442141457%_ (##cdr _%e141440141452%_)))
                          (let ((_%decls141460%_ _%tl141442141457%_))
                            (cons '%#declare _%decls141460%_))))
                      (_%E141439141448%_)))))
          (_%E141438141462%_))))
    (define gx#core-compile-top-lambda%
      (lambda (_%stx141406%_)
        (let* ((_%e141407141414%_ _%stx141406%_)
               (_%E141409141418%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e141407141414%_)))
               (_%E141408141432%_
                (lambda ()
                  (if (gx#stx-pair? _%e141407141414%_)
                      (let ((_%e141410141422%_
                             (gx#syntax-e _%e141407141414%_)))
                        (let ((_%hd141411141425%_ (##car _%e141410141422%_))
                              (_%tl141412141427%_ (##cdr _%e141410141422%_)))
                          (let ((_%clause141430%_ _%tl141412141427%_))
                            (cons '%#lambda
                                  (gx#core-compile-top-lambda-clause
                                   _%clause141430%_)))))
                      (_%E141409141418%_)))))
          (_%E141408141432%_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_%stx141363%_)
        (let* ((_%e141364141374%_ _%stx141363%_)
               (_%E141366141378%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e141364141374%_)))
               (_%E141365141402%_
                (lambda ()
                  (if (gx#stx-pair? _%e141364141374%_)
                      (let ((_%e141367141382%_
                             (gx#syntax-e _%e141364141374%_)))
                        (let ((_%hd141368141385%_ (##car _%e141367141382%_))
                              (_%tl141369141387%_ (##cdr _%e141367141382%_)))
                          (let ((_%hd141390%_ _%hd141368141385%_))
                            (if (gx#stx-pair? _%tl141369141387%_)
                                (let ((_%e141370141392%_
                                       (gx#syntax-e _%tl141369141387%_)))
                                  (let ((_%hd141371141395%_
                                         (##car _%e141370141392%_))
                                        (_%tl141372141397%_
                                         (##cdr _%e141370141392%_)))
                                    (let ((_%body141400%_ _%hd141371141395%_))
                                      (if (gx#stx-null? _%tl141372141397%_)
                                          (cons (gx#stx-map1
                                                 gx#core-compile-top-runtime-bind
                                                 _%hd141390%_)
                                                (cons (gx#core-compile-top-syntax
                                                       _%body141400%_)
                                                      '()))
                                          (_%E141366141378%_)))))
                                (_%E141366141378%_)))))
                      (_%E141366141378%_)))))
          (_%E141365141402%_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_%stx141333%_)
        (let* ((_%e141334141341%_ _%stx141333%_)
               (_%E141336141345%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e141334141341%_)))
               (_%E141335141359%_
                (lambda ()
                  (if (gx#stx-pair? _%e141334141341%_)
                      (let ((_%e141337141349%_
                             (gx#syntax-e _%e141334141341%_)))
                        (let ((_%hd141338141352%_ (##car _%e141337141349%_))
                              (_%tl141339141354%_ (##cdr _%e141337141349%_)))
                          (let ((_%clauses141357%_ _%tl141339141354%_))
                            (cons '%#case-lambda
                                  (gx#stx-map1
                                   gx#core-compile-top-lambda-clause
                                   _%clauses141357%_)))))
                      (_%E141336141345%_)))))
          (_%E141335141359%_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_%stx141268%_ _%form141269%_)
        (let* ((_%e141270141283%_ _%stx141268%_)
               (_%E141272141287%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e141270141283%_)))
               (_%E141271141319%_
                (lambda ()
                  (if (gx#stx-pair? _%e141270141283%_)
                      (let ((_%e141273141291%_
                             (gx#syntax-e _%e141270141283%_)))
                        (let ((_%hd141274141294%_ (##car _%e141273141291%_))
                              (_%tl141275141296%_ (##cdr _%e141273141291%_)))
                          (if (gx#stx-pair? _%tl141275141296%_)
                              (let ((_%e141276141299%_
                                     (gx#syntax-e _%tl141275141296%_)))
                                (let ((_%hd141277141302%_
                                       (##car _%e141276141299%_))
                                      (_%tl141278141304%_
                                       (##cdr _%e141276141299%_)))
                                  (let ((_%hd141307%_ _%hd141277141302%_))
                                    (if (gx#stx-pair? _%tl141278141304%_)
                                        (let ((_%e141279141309%_
                                               (gx#syntax-e
                                                _%tl141278141304%_)))
                                          (let ((_%hd141280141312%_
                                                 (##car _%e141279141309%_))
                                                (_%tl141281141314%_
                                                 (##cdr _%e141279141309%_)))
                                            (let ((_%body141317%_
                                                   _%hd141280141312%_))
                                              (if (gx#stx-null?
                                                   _%tl141281141314%_)
                                                  (cons _%form141269%_
                                                        (cons (gx#stx-map1
                                                               gx#core-compile-top-lambda-clause
                                                               _%hd141307%_)
                                                              (cons (gx#core-compile-top-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%body141317%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E141272141287%_)))))
                                        (_%E141272141287%_)))))
                              (_%E141272141287%_))))
                      (_%E141272141287%_)))))
          (_%E141271141319%_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_%stx141326%_)
        (let ((_%form141328%_ '%#let-values))
          (gx#core-compile-top-let-values%__% _%stx141326%_ _%form141328%_))))
    (define gx#core-compile-top-let-values%
      (lambda _g142152_
        (let ((_g142153_ (##length _g142152_)))
          (cond ((##fx= _g142153_ 1)
                 (apply gx#core-compile-top-let-values%__0 _g142152_))
                ((##fx= _g142153_ 2)
                 (apply gx#core-compile-top-let-values%__% _g142152_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g142152_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_%stx141265%_)
        (gx#core-compile-top-let-values%__% _%stx141265%_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_%stx141263%_)
        (gx#core-compile-top-let-values%__% _%stx141263%_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_%stx141222%_)
        (let* ((_%e141223141233%_ _%stx141222%_)
               (_%E141225141237%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e141223141233%_)))
               (_%E141224141259%_
                (lambda ()
                  (if (gx#stx-pair? _%e141223141233%_)
                      (let ((_%e141226141241%_
                             (gx#syntax-e _%e141223141233%_)))
                        (let ((_%hd141227141244%_ (##car _%e141226141241%_))
                              (_%tl141228141246%_ (##cdr _%e141226141241%_)))
                          (if (gx#stx-pair? _%tl141228141246%_)
                              (let ((_%e141229141249%_
                                     (gx#syntax-e _%tl141228141246%_)))
                                (let ((_%hd141230141252%_
                                       (##car _%e141229141249%_))
                                      (_%tl141231141254%_
                                       (##cdr _%e141229141249%_)))
                                  (let ((_%e141257%_ _%hd141230141252%_))
                                    (if (gx#stx-null? _%tl141231141254%_)
                                        (cons '%#quote
                                              (cons (gx#syntax->datum
                                                     _%e141257%_)
                                                    '()))
                                        (_%E141225141237%_)))))
                              (_%E141225141237%_))))
                      (_%E141225141237%_)))))
          (_%E141224141259%_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_%stx141181%_)
        (let* ((_%e141182141192%_ _%stx141181%_)
               (_%E141184141196%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e141182141192%_)))
               (_%E141183141218%_
                (lambda ()
                  (if (gx#stx-pair? _%e141182141192%_)
                      (let ((_%e141185141200%_
                             (gx#syntax-e _%e141182141192%_)))
                        (let ((_%hd141186141203%_ (##car _%e141185141200%_))
                              (_%tl141187141205%_ (##cdr _%e141185141200%_)))
                          (if (gx#stx-pair? _%tl141187141205%_)
                              (let ((_%e141188141208%_
                                     (gx#syntax-e _%tl141187141205%_)))
                                (let ((_%hd141189141211%_
                                       (##car _%e141188141208%_))
                                      (_%tl141190141213%_
                                       (##cdr _%e141188141208%_)))
                                  (let ((_%e141216%_ _%hd141189141211%_))
                                    (if (gx#stx-null? _%tl141190141213%_)
                                        (cons '%#quote-syntax
                                              (cons (gx#core-quote-syntax__0
                                                     _%e141216%_)
                                                    '()))
                                        (_%E141184141196%_)))))
                              (_%E141184141196%_))))
                      (_%E141184141196%_)))))
          (_%E141183141218%_))))
    (define gx#core-compile-top-call%
      (lambda (_%stx141138%_)
        (let* ((_%e141139141149%_ _%stx141138%_)
               (_%E141141141153%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e141139141149%_)))
               (_%E141140141177%_
                (lambda ()
                  (if (gx#stx-pair? _%e141139141149%_)
                      (let ((_%e141142141157%_
                             (gx#syntax-e _%e141139141149%_)))
                        (let ((_%hd141143141160%_ (##car _%e141142141157%_))
                              (_%tl141144141162%_ (##cdr _%e141142141157%_)))
                          (if (gx#stx-pair? _%tl141144141162%_)
                              (let ((_%e141145141165%_
                                     (gx#syntax-e _%tl141144141162%_)))
                                (let ((_%hd141146141168%_
                                       (##car _%e141145141165%_))
                                      (_%tl141147141170%_
                                       (##cdr _%e141145141165%_)))
                                  (let* ((_%rator141173%_ _%hd141146141168%_)
                                         (_%args141175%_ _%tl141147141170%_))
                                    (cons '%#call
                                          (cons (gx#core-compile-top-syntax
                                                 _%rator141173%_)
                                                (gx#stx-map1
                                                 gx#core-compile-top-syntax
                                                 _%args141175%_))))))
                              (_%E141141141153%_))))
                      (_%E141141141153%_)))))
          (_%E141140141177%_))))
    (define gx#core-compile-top-if%
      (lambda (_%stx141071%_)
        (let* ((_%e141072141088%_ _%stx141071%_)
               (_%E141074141092%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e141072141088%_)))
               (_%E141073141134%_
                (lambda ()
                  (if (gx#stx-pair? _%e141072141088%_)
                      (let ((_%e141075141096%_
                             (gx#syntax-e _%e141072141088%_)))
                        (let ((_%hd141076141099%_ (##car _%e141075141096%_))
                              (_%tl141077141101%_ (##cdr _%e141075141096%_)))
                          (if (gx#stx-pair? _%tl141077141101%_)
                              (let ((_%e141078141104%_
                                     (gx#syntax-e _%tl141077141101%_)))
                                (let ((_%hd141079141107%_
                                       (##car _%e141078141104%_))
                                      (_%tl141080141109%_
                                       (##cdr _%e141078141104%_)))
                                  (let ((_%test141112%_ _%hd141079141107%_))
                                    (if (gx#stx-pair? _%tl141080141109%_)
                                        (let ((_%e141081141114%_
                                               (gx#syntax-e
                                                _%tl141080141109%_)))
                                          (let ((_%hd141082141117%_
                                                 (##car _%e141081141114%_))
                                                (_%tl141083141119%_
                                                 (##cdr _%e141081141114%_)))
                                            (let ((_%K141122%_
                                                   _%hd141082141117%_))
                                              (if (gx#stx-pair?
                                                   _%tl141083141119%_)
                                                  (let ((_%e141084141124%_
                                                         (gx#syntax-e
                                                          _%tl141083141119%_)))
                                                    (let ((_%hd141085141127%_
                                                           (##car _%e141084141124%_))
                                                          (_%tl141086141129%_
                                                           (##cdr _%e141084141124%_)))
                                                      (let ((_%E141132%_
                                                             _%hd141085141127%_))
                                                        (if (gx#stx-null?
                                                             _%tl141086141129%_)
                                                            (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#core-compile-top-syntax _%test141112%_)
                                (cons (gx#core-compile-top-syntax _%K141122%_)
                                      (cons (gx#core-compile-top-syntax
                                             _%E141132%_)
                                            '()))))
                    (_%E141074141092%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E141074141092%_)))))
                                        (_%E141074141092%_)))))
                              (_%E141074141092%_))))
                      (_%E141074141092%_)))))
          (_%E141073141134%_))))
    (define gx#core-compile-top-ref%
      (lambda (_%stx141030%_)
        (let* ((_%e141031141041%_ _%stx141030%_)
               (_%E141033141045%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e141031141041%_)))
               (_%E141032141067%_
                (lambda ()
                  (if (gx#stx-pair? _%e141031141041%_)
                      (let ((_%e141034141049%_
                             (gx#syntax-e _%e141031141041%_)))
                        (let ((_%hd141035141052%_ (##car _%e141034141049%_))
                              (_%tl141036141054%_ (##cdr _%e141034141049%_)))
                          (if (gx#stx-pair? _%tl141036141054%_)
                              (let ((_%e141037141057%_
                                     (gx#syntax-e _%tl141036141054%_)))
                                (let ((_%hd141038141060%_
                                       (##car _%e141037141057%_))
                                      (_%tl141039141062%_
                                       (##cdr _%e141037141057%_)))
                                  (let ((_%id141065%_ _%hd141038141060%_))
                                    (if (gx#stx-null? _%tl141039141062%_)
                                        (if (gx#identifier? _%id141065%_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _%id141065%_)
                                                        '()))
                                            (_%E141033141045%_))
                                        (_%E141033141045%_)))))
                              (_%E141033141045%_))))
                      (_%E141033141045%_)))))
          (_%E141032141067%_))))
    (define gx#core-compile-top-setq%
      (lambda (_%stx140976%_)
        (let* ((_%e140977140990%_ _%stx140976%_)
               (_%E140979140994%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e140977140990%_)))
               (_%E140978141026%_
                (lambda ()
                  (if (gx#stx-pair? _%e140977140990%_)
                      (let ((_%e140980140998%_
                             (gx#syntax-e _%e140977140990%_)))
                        (let ((_%hd140981141001%_ (##car _%e140980140998%_))
                              (_%tl140982141003%_ (##cdr _%e140980140998%_)))
                          (if (gx#stx-pair? _%tl140982141003%_)
                              (let ((_%e140983141006%_
                                     (gx#syntax-e _%tl140982141003%_)))
                                (let ((_%hd140984141009%_
                                       (##car _%e140983141006%_))
                                      (_%tl140985141011%_
                                       (##cdr _%e140983141006%_)))
                                  (let ((_%id141014%_ _%hd140984141009%_))
                                    (if (gx#stx-pair? _%tl140985141011%_)
                                        (let ((_%e140986141016%_
                                               (gx#syntax-e
                                                _%tl140985141011%_)))
                                          (let ((_%hd140987141019%_
                                                 (##car _%e140986141016%_))
                                                (_%tl140988141021%_
                                                 (##cdr _%e140986141016%_)))
                                            (let ((_%expr141024%_
                                                   _%hd140987141019%_))
                                              (if (gx#stx-null?
                                                   _%tl140988141021%_)
                                                  (if (gx#identifier?
                                                       _%id141014%_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%id141014%_)
                          (cons (gx#core-compile-top-syntax _%expr141024%_)
                                '())))
              (_%E140979140994%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E140979140994%_)))))
                                        (_%E140979140994%_)))))
                              (_%E140979140994%_))))
                      (_%E140979140994%_)))))
          (_%E140978141026%_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_%id140970%_)
        (let ((_%$e140972%_ (gx#resolve-identifier__0 _%id140970%_)))
          (if _%$e140972%_
              (##unchecked-structure-ref _%$e140972%_ '1 '#f '#f)
              _%id140970%_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_%hd140968%_)
        (if (gx#identifier? _%hd140968%_)
            (gx#core-compile-top-runtime-ref _%hd140968%_)
            '#f)))))
