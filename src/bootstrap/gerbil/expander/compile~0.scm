(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1713000278)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_%stx129737%_)
        (let* ((_%e129738129745%_ _%stx129737%_)
               (_%E129740129749%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e129738129745%_)))
               (_%E129739129763%_
                (lambda ()
                  (if (gx#stx-pair? _%e129738129745%_)
                      (let ((_%e129741129753%_
                             (gx#syntax-e _%e129738129745%_)))
                        (let ((_%hd129742129756%_ (##car _%e129741129753%_))
                              (_%tl129743129758%_ (##cdr _%e129741129753%_)))
                          (let* ((_%form129761%_ _%hd129742129756%_)
                                 (__self129766
                                  (gx#syntax-local-e__0 _%form129761%_))
                                 (__method129767
                                  (__method-ref
                                   __self129766
                                   'compile-top-syntax)))
                            (if __method129767
                                (__method129767 __self129766 _%stx129737%_)
                                (begin
                                  (error '"Missing method"
                                         __self129766
                                         'compile-top-syntax)
                                  '#!void)))))
                      (_%E129740129749%_)))))
          (_%E129739129763%_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_%self128580129683%_ _%stx129685%_)
        (let* ((_%self129687%_ _%self128580129683%_)
               (_%self129689%_ _%self129687%_)
               (_%self129698129706%_ _%self129689%_)
               (_%E129700129710%_
                (lambda ()
                  (error '"No clause matching"
                         _%self129698129706%_
                         '((core-expander _ _ K)))
                  '#!void))
               (_%K129701129723%_
                (lambda (_%K129713%_)
                  (let ((_%$e129715%_ (gx#stx-source _%stx129685%_)))
                    (if _%$e129715%_
                        ((lambda (_%g129717129719%_)
                           (gx#stx-wrap-source
                            (_%K129713%_ _%stx129685%_)
                            _%g129717129719%_))
                         _%$e129715%_)
                        (_%K129713%_ _%stx129685%_)))))
               (_%e129702129726%_
                (##unchecked-structure-ref _%self129698129706%_ '1 '#f '#f))
               (_%e129703129729%_
                (##unchecked-structure-ref _%self129698129706%_ '2 '#f '#f))
               (_%e129704129732%_
                (##unchecked-structure-ref _%self129698129706%_ '3 '#f '#f))
               (_%K129735%_ _%e129704129732%_))
          (_%K129701129723%_ _%K129735%_))))
    (__bind-method!__%
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_%stx129557%_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _%stx129557%_)))
    (define gx#core-compile-top-begin%
      (lambda (_%stx129527%_)
        (let* ((_%e129528129535%_ _%stx129527%_)
               (_%E129530129539%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e129528129535%_)))
               (_%E129529129553%_
                (lambda ()
                  (if (gx#stx-pair? _%e129528129535%_)
                      (let ((_%e129531129543%_
                             (gx#syntax-e _%e129528129535%_)))
                        (let ((_%hd129532129546%_ (##car _%e129531129543%_))
                              (_%tl129533129548%_ (##cdr _%e129531129543%_)))
                          (let ((_%body129551%_ _%tl129533129548%_))
                            (cons '%#begin
                                  (gx#stx-map1
                                   gx#core-compile-top-syntax
                                   _%body129551%_)))))
                      (_%E129530129539%_)))))
          (_%E129529129553%_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_%stx129496%_)
        (let* ((_%e129497129504%_ _%stx129496%_)
               (_%E129499129508%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e129497129504%_)))
               (_%E129498129523%_
                (lambda ()
                  (if (gx#stx-pair? _%e129497129504%_)
                      (let ((_%e129500129512%_
                             (gx#syntax-e _%e129497129504%_)))
                        (let ((_%hd129501129515%_ (##car _%e129500129512%_))
                              (_%tl129502129517%_ (##cdr _%e129500129512%_)))
                          (let ((_%body129520%_ _%tl129502129517%_))
                            (cons '%#begin-syntax
                                  (__call-with-parameters
                                   (lambda ()
                                     (gx#stx-map1
                                      gx#core-compile-top-syntax
                                      _%body129520%_))
                                   gx#current-expander-phi
                                   (##fx+ (gx#current-expander-phi) '1))))))
                      (_%E129499129508%_)))))
          (_%E129498129523%_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_%stx129466%_)
        (let* ((_%e129467129474%_ _%stx129466%_)
               (_%E129469129478%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e129467129474%_)))
               (_%E129468129492%_
                (lambda ()
                  (if (gx#stx-pair? _%e129467129474%_)
                      (let ((_%e129470129482%_
                             (gx#syntax-e _%e129467129474%_)))
                        (let ((_%hd129471129485%_ (##car _%e129470129482%_))
                              (_%tl129472129487%_ (##cdr _%e129470129482%_)))
                          (let ((_%body129490%_ _%tl129472129487%_))
                            (cons '%#begin-foreign _%body129490%_))))
                      (_%E129469129478%_)))))
          (_%E129468129492%_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_%stx129412%_)
        (let* ((_%e129413129426%_ _%stx129412%_)
               (_%E129415129430%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e129413129426%_)))
               (_%E129414129462%_
                (lambda ()
                  (if (gx#stx-pair? _%e129413129426%_)
                      (let ((_%e129416129434%_
                             (gx#syntax-e _%e129413129426%_)))
                        (let ((_%hd129417129437%_ (##car _%e129416129434%_))
                              (_%tl129418129439%_ (##cdr _%e129416129434%_)))
                          (if (gx#stx-pair? _%tl129418129439%_)
                              (let ((_%e129419129442%_
                                     (gx#syntax-e _%tl129418129439%_)))
                                (let ((_%hd129420129445%_
                                       (##car _%e129419129442%_))
                                      (_%tl129421129447%_
                                       (##cdr _%e129419129442%_)))
                                  (let ((_%ann129450%_ _%hd129420129445%_))
                                    (if (gx#stx-pair? _%tl129421129447%_)
                                        (let ((_%e129422129452%_
                                               (gx#syntax-e
                                                _%tl129421129447%_)))
                                          (let ((_%hd129423129455%_
                                                 (##car _%e129422129452%_))
                                                (_%tl129424129457%_
                                                 (##cdr _%e129422129452%_)))
                                            (let ((_%expr129460%_
                                                   _%hd129423129455%_))
                                              (if (gx#stx-null?
                                                   _%tl129424129457%_)
                                                  (gx#core-compile-top-syntax
                                                   _%expr129460%_)
                                                  (_%E129415129430%_)))))
                                        (_%E129415129430%_)))))
                              (_%E129415129430%_))))
                      (_%E129415129430%_)))))
          (_%E129414129462%_))))
    (define gx#core-compile-top-import%
      (lambda (_%stx129382%_)
        (let* ((_%e129383129390%_ _%stx129382%_)
               (_%E129385129394%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e129383129390%_)))
               (_%E129384129408%_
                (lambda ()
                  (if (gx#stx-pair? _%e129383129390%_)
                      (let ((_%e129386129398%_
                             (gx#syntax-e _%e129383129390%_)))
                        (let ((_%hd129387129401%_ (##car _%e129386129398%_))
                              (_%tl129388129403%_ (##cdr _%e129386129398%_)))
                          (let ((_%body129406%_ _%tl129388129403%_))
                            (cons '%#import _%body129406%_))))
                      (_%E129385129394%_)))))
          (_%E129384129408%_))))
    (define gx#core-compile-top-module%
      (lambda (_%stx129339%_)
        (let* ((_%e129340129350%_ _%stx129339%_)
               (_%E129342129354%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e129340129350%_)))
               (_%E129341129378%_
                (lambda ()
                  (if (gx#stx-pair? _%e129340129350%_)
                      (let ((_%e129343129358%_
                             (gx#syntax-e _%e129340129350%_)))
                        (let ((_%hd129344129361%_ (##car _%e129343129358%_))
                              (_%tl129345129363%_ (##cdr _%e129343129358%_)))
                          (if (gx#stx-pair? _%tl129345129363%_)
                              (let ((_%e129346129366%_
                                     (gx#syntax-e _%tl129345129363%_)))
                                (let ((_%hd129347129369%_
                                       (##car _%e129346129366%_))
                                      (_%tl129348129371%_
                                       (##cdr _%e129346129366%_)))
                                  (let* ((_%hd129374%_ _%hd129347129369%_)
                                         (_%body129376%_ _%tl129348129371%_))
                                    (cons '%#module
                                          (cons (##structure-ref
                                                 (gx#syntax-local-e__0
                                                  _%hd129374%_)
                                                 '1
                                                 gx#expander-context::t
                                                 '#f)
                                                (gx#stx-map1
                                                 gx#core-compile-top-syntax
                                                 _%body129376%_))))))
                              (_%E129342129354%_))))
                      (_%E129342129354%_)))))
          (_%E129341129378%_))))
    (define gx#core-compile-top-export%
      (lambda (_%stx129309%_)
        (let* ((_%e129310129317%_ _%stx129309%_)
               (_%E129312129321%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e129310129317%_)))
               (_%E129311129335%_
                (lambda ()
                  (if (gx#stx-pair? _%e129310129317%_)
                      (let ((_%e129313129325%_
                             (gx#syntax-e _%e129310129317%_)))
                        (let ((_%hd129314129328%_ (##car _%e129313129325%_))
                              (_%tl129315129330%_ (##cdr _%e129313129325%_)))
                          (let ((_%body129333%_ _%tl129315129330%_))
                            (cons '%#export _%body129333%_))))
                      (_%E129312129321%_)))))
          (_%E129311129335%_))))
    (define gx#core-compile-top-provide%
      (lambda (_%stx129279%_)
        (let* ((_%e129280129287%_ _%stx129279%_)
               (_%E129282129291%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e129280129287%_)))
               (_%E129281129305%_
                (lambda ()
                  (if (gx#stx-pair? _%e129280129287%_)
                      (let ((_%e129283129295%_
                             (gx#syntax-e _%e129280129287%_)))
                        (let ((_%hd129284129298%_ (##car _%e129283129295%_))
                              (_%tl129285129300%_ (##cdr _%e129283129295%_)))
                          (let ((_%body129303%_ _%tl129285129300%_))
                            (cons '%#provide _%body129303%_))))
                      (_%E129282129291%_)))))
          (_%E129281129305%_))))
    (define gx#core-compile-top-extern%
      (lambda (_%stx129249%_)
        (let* ((_%e129250129257%_ _%stx129249%_)
               (_%E129252129261%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e129250129257%_)))
               (_%E129251129275%_
                (lambda ()
                  (if (gx#stx-pair? _%e129250129257%_)
                      (let ((_%e129253129265%_
                             (gx#syntax-e _%e129250129257%_)))
                        (let ((_%hd129254129268%_ (##car _%e129253129265%_))
                              (_%tl129255129270%_ (##cdr _%e129253129265%_)))
                          (let ((_%body129273%_ _%tl129255129270%_))
                            (cons '%#extern _%body129273%_))))
                      (_%E129252129261%_)))))
          (_%E129251129275%_))))
    (define gx#core-compile-top-define-values%
      (lambda (_%stx129195%_)
        (let* ((_%e129196129209%_ _%stx129195%_)
               (_%E129198129213%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e129196129209%_)))
               (_%E129197129245%_
                (lambda ()
                  (if (gx#stx-pair? _%e129196129209%_)
                      (let ((_%e129199129217%_
                             (gx#syntax-e _%e129196129209%_)))
                        (let ((_%hd129200129220%_ (##car _%e129199129217%_))
                              (_%tl129201129222%_ (##cdr _%e129199129217%_)))
                          (if (gx#stx-pair? _%tl129201129222%_)
                              (let ((_%e129202129225%_
                                     (gx#syntax-e _%tl129201129222%_)))
                                (let ((_%hd129203129228%_
                                       (##car _%e129202129225%_))
                                      (_%tl129204129230%_
                                       (##cdr _%e129202129225%_)))
                                  (let ((_%hd129233%_ _%hd129203129228%_))
                                    (if (gx#stx-pair? _%tl129204129230%_)
                                        (let ((_%e129205129235%_
                                               (gx#syntax-e
                                                _%tl129204129230%_)))
                                          (let ((_%hd129206129238%_
                                                 (##car _%e129205129235%_))
                                                (_%tl129207129240%_
                                                 (##cdr _%e129205129235%_)))
                                            (let ((_%expr129243%_
                                                   _%hd129206129238%_))
                                              (if (gx#stx-null?
                                                   _%tl129207129240%_)
                                                  (cons '%#define-values
                                                        (cons (gx#stx-map1
                                                               gx#core-compile-top-runtime-bind
                                                               _%hd129233%_)
                                                              (cons (gx#core-compile-top-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%expr129243%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E129198129213%_)))))
                                        (_%E129198129213%_)))))
                              (_%E129198129213%_))))
                      (_%E129198129213%_)))))
          (_%E129197129245%_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_%stx129140%_)
        (let* ((_%e129141129154%_ _%stx129140%_)
               (_%E129143129158%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e129141129154%_)))
               (_%E129142129191%_
                (lambda ()
                  (if (gx#stx-pair? _%e129141129154%_)
                      (let ((_%e129144129162%_
                             (gx#syntax-e _%e129141129154%_)))
                        (let ((_%hd129145129165%_ (##car _%e129144129162%_))
                              (_%tl129146129167%_ (##cdr _%e129144129162%_)))
                          (if (gx#stx-pair? _%tl129146129167%_)
                              (let ((_%e129147129170%_
                                     (gx#syntax-e _%tl129146129167%_)))
                                (let ((_%hd129148129173%_
                                       (##car _%e129147129170%_))
                                      (_%tl129149129175%_
                                       (##cdr _%e129147129170%_)))
                                  (let ((_%hd129178%_ _%hd129148129173%_))
                                    (if (gx#stx-pair? _%tl129149129175%_)
                                        (let ((_%e129150129180%_
                                               (gx#syntax-e
                                                _%tl129149129175%_)))
                                          (let ((_%hd129151129183%_
                                                 (##car _%e129150129180%_))
                                                (_%tl129152129185%_
                                                 (##cdr _%e129150129180%_)))
                                            (let ((_%expr129188%_
                                                   _%hd129151129183%_))
                                              (if (gx#stx-null?
                                                   _%tl129152129185%_)
                                                  (cons '%#define-syntax
                                                        (cons _%hd129178%_
                                                              (cons (__call-with-parameters
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda ()
                               (gx#core-compile-top-syntax _%expr129188%_))
                             gx#current-expander-phi
                             (##fx+ (gx#current-expander-phi) '1))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E129143129158%_)))))
                                        (_%E129143129158%_)))))
                              (_%E129143129158%_))))
                      (_%E129143129158%_)))))
          (_%E129142129191%_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_%stx129110%_)
        (let* ((_%e129111129118%_ _%stx129110%_)
               (_%E129113129122%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e129111129118%_)))
               (_%E129112129136%_
                (lambda ()
                  (if (gx#stx-pair? _%e129111129118%_)
                      (let ((_%e129114129126%_
                             (gx#syntax-e _%e129111129118%_)))
                        (let ((_%hd129115129129%_ (##car _%e129114129126%_))
                              (_%tl129116129131%_ (##cdr _%e129114129126%_)))
                          (let ((_%body129134%_ _%tl129116129131%_))
                            (cons '%#define-alias _%body129134%_))))
                      (_%E129113129122%_)))))
          (_%E129112129136%_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_%stx129080%_)
        (let* ((_%e129081129088%_ _%stx129080%_)
               (_%E129083129092%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e129081129088%_)))
               (_%E129082129106%_
                (lambda ()
                  (if (gx#stx-pair? _%e129081129088%_)
                      (let ((_%e129084129096%_
                             (gx#syntax-e _%e129081129088%_)))
                        (let ((_%hd129085129099%_ (##car _%e129084129096%_))
                              (_%tl129086129101%_ (##cdr _%e129084129096%_)))
                          (let ((_%body129104%_ _%tl129086129101%_))
                            (cons '%#define-runtime _%body129104%_))))
                      (_%E129083129092%_)))))
          (_%E129082129106%_))))
    (define gx#core-compile-top-declare%
      (lambda (_%stx129050%_)
        (let* ((_%e129051129058%_ _%stx129050%_)
               (_%E129053129062%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e129051129058%_)))
               (_%E129052129076%_
                (lambda ()
                  (if (gx#stx-pair? _%e129051129058%_)
                      (let ((_%e129054129066%_
                             (gx#syntax-e _%e129051129058%_)))
                        (let ((_%hd129055129069%_ (##car _%e129054129066%_))
                              (_%tl129056129071%_ (##cdr _%e129054129066%_)))
                          (let ((_%decls129074%_ _%tl129056129071%_))
                            (cons '%#declare _%decls129074%_))))
                      (_%E129053129062%_)))))
          (_%E129052129076%_))))
    (define gx#core-compile-top-lambda%
      (lambda (_%stx129020%_)
        (let* ((_%e129021129028%_ _%stx129020%_)
               (_%E129023129032%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e129021129028%_)))
               (_%E129022129046%_
                (lambda ()
                  (if (gx#stx-pair? _%e129021129028%_)
                      (let ((_%e129024129036%_
                             (gx#syntax-e _%e129021129028%_)))
                        (let ((_%hd129025129039%_ (##car _%e129024129036%_))
                              (_%tl129026129041%_ (##cdr _%e129024129036%_)))
                          (let ((_%clause129044%_ _%tl129026129041%_))
                            (cons '%#lambda
                                  (gx#core-compile-top-lambda-clause
                                   _%clause129044%_)))))
                      (_%E129023129032%_)))))
          (_%E129022129046%_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_%stx128977%_)
        (let* ((_%e128978128988%_ _%stx128977%_)
               (_%E128980128992%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e128978128988%_)))
               (_%E128979129016%_
                (lambda ()
                  (if (gx#stx-pair? _%e128978128988%_)
                      (let ((_%e128981128996%_
                             (gx#syntax-e _%e128978128988%_)))
                        (let ((_%hd128982128999%_ (##car _%e128981128996%_))
                              (_%tl128983129001%_ (##cdr _%e128981128996%_)))
                          (let ((_%hd129004%_ _%hd128982128999%_))
                            (if (gx#stx-pair? _%tl128983129001%_)
                                (let ((_%e128984129006%_
                                       (gx#syntax-e _%tl128983129001%_)))
                                  (let ((_%hd128985129009%_
                                         (##car _%e128984129006%_))
                                        (_%tl128986129011%_
                                         (##cdr _%e128984129006%_)))
                                    (let ((_%body129014%_ _%hd128985129009%_))
                                      (if (gx#stx-null? _%tl128986129011%_)
                                          (cons (gx#stx-map1
                                                 gx#core-compile-top-runtime-bind
                                                 _%hd129004%_)
                                                (cons (gx#core-compile-top-syntax
                                                       _%body129014%_)
                                                      '()))
                                          (_%E128980128992%_)))))
                                (_%E128980128992%_)))))
                      (_%E128980128992%_)))))
          (_%E128979129016%_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_%stx128947%_)
        (let* ((_%e128948128955%_ _%stx128947%_)
               (_%E128950128959%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e128948128955%_)))
               (_%E128949128973%_
                (lambda ()
                  (if (gx#stx-pair? _%e128948128955%_)
                      (let ((_%e128951128963%_
                             (gx#syntax-e _%e128948128955%_)))
                        (let ((_%hd128952128966%_ (##car _%e128951128963%_))
                              (_%tl128953128968%_ (##cdr _%e128951128963%_)))
                          (let ((_%clauses128971%_ _%tl128953128968%_))
                            (cons '%#case-lambda
                                  (gx#stx-map1
                                   gx#core-compile-top-lambda-clause
                                   _%clauses128971%_)))))
                      (_%E128950128959%_)))))
          (_%E128949128973%_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_%stx128882%_ _%form128883%_)
        (let* ((_%e128884128897%_ _%stx128882%_)
               (_%E128886128901%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e128884128897%_)))
               (_%E128885128933%_
                (lambda ()
                  (if (gx#stx-pair? _%e128884128897%_)
                      (let ((_%e128887128905%_
                             (gx#syntax-e _%e128884128897%_)))
                        (let ((_%hd128888128908%_ (##car _%e128887128905%_))
                              (_%tl128889128910%_ (##cdr _%e128887128905%_)))
                          (if (gx#stx-pair? _%tl128889128910%_)
                              (let ((_%e128890128913%_
                                     (gx#syntax-e _%tl128889128910%_)))
                                (let ((_%hd128891128916%_
                                       (##car _%e128890128913%_))
                                      (_%tl128892128918%_
                                       (##cdr _%e128890128913%_)))
                                  (let ((_%hd128921%_ _%hd128891128916%_))
                                    (if (gx#stx-pair? _%tl128892128918%_)
                                        (let ((_%e128893128923%_
                                               (gx#syntax-e
                                                _%tl128892128918%_)))
                                          (let ((_%hd128894128926%_
                                                 (##car _%e128893128923%_))
                                                (_%tl128895128928%_
                                                 (##cdr _%e128893128923%_)))
                                            (let ((_%body128931%_
                                                   _%hd128894128926%_))
                                              (if (gx#stx-null?
                                                   _%tl128895128928%_)
                                                  (cons _%form128883%_
                                                        (cons (gx#stx-map1
                                                               gx#core-compile-top-lambda-clause
                                                               _%hd128921%_)
                                                              (cons (gx#core-compile-top-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%body128931%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E128886128901%_)))))
                                        (_%E128886128901%_)))))
                              (_%E128886128901%_))))
                      (_%E128886128901%_)))))
          (_%E128885128933%_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_%stx128940%_)
        (let ((_%form128942%_ '%#let-values))
          (gx#core-compile-top-let-values%__% _%stx128940%_ _%form128942%_))))
    (define gx#core-compile-top-let-values%
      (lambda _g129769_
        (let ((_g129768_ (##length _g129769_)))
          (cond ((##fx= _g129768_ 1)
                 (apply gx#core-compile-top-let-values%__0 _g129769_))
                ((##fx= _g129768_ 2)
                 (apply gx#core-compile-top-let-values%__% _g129769_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g129769_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_%stx128879%_)
        (gx#core-compile-top-let-values%__% _%stx128879%_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_%stx128877%_)
        (gx#core-compile-top-let-values%__% _%stx128877%_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_%stx128836%_)
        (let* ((_%e128837128847%_ _%stx128836%_)
               (_%E128839128851%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e128837128847%_)))
               (_%E128838128873%_
                (lambda ()
                  (if (gx#stx-pair? _%e128837128847%_)
                      (let ((_%e128840128855%_
                             (gx#syntax-e _%e128837128847%_)))
                        (let ((_%hd128841128858%_ (##car _%e128840128855%_))
                              (_%tl128842128860%_ (##cdr _%e128840128855%_)))
                          (if (gx#stx-pair? _%tl128842128860%_)
                              (let ((_%e128843128863%_
                                     (gx#syntax-e _%tl128842128860%_)))
                                (let ((_%hd128844128866%_
                                       (##car _%e128843128863%_))
                                      (_%tl128845128868%_
                                       (##cdr _%e128843128863%_)))
                                  (let ((_%e128871%_ _%hd128844128866%_))
                                    (if (gx#stx-null? _%tl128845128868%_)
                                        (cons '%#quote
                                              (cons (gx#syntax->datum
                                                     _%e128871%_)
                                                    '()))
                                        (_%E128839128851%_)))))
                              (_%E128839128851%_))))
                      (_%E128839128851%_)))))
          (_%E128838128873%_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_%stx128795%_)
        (let* ((_%e128796128806%_ _%stx128795%_)
               (_%E128798128810%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e128796128806%_)))
               (_%E128797128832%_
                (lambda ()
                  (if (gx#stx-pair? _%e128796128806%_)
                      (let ((_%e128799128814%_
                             (gx#syntax-e _%e128796128806%_)))
                        (let ((_%hd128800128817%_ (##car _%e128799128814%_))
                              (_%tl128801128819%_ (##cdr _%e128799128814%_)))
                          (if (gx#stx-pair? _%tl128801128819%_)
                              (let ((_%e128802128822%_
                                     (gx#syntax-e _%tl128801128819%_)))
                                (let ((_%hd128803128825%_
                                       (##car _%e128802128822%_))
                                      (_%tl128804128827%_
                                       (##cdr _%e128802128822%_)))
                                  (let ((_%e128830%_ _%hd128803128825%_))
                                    (if (gx#stx-null? _%tl128804128827%_)
                                        (cons '%#quote-syntax
                                              (cons (gx#core-quote-syntax__0
                                                     _%e128830%_)
                                                    '()))
                                        (_%E128798128810%_)))))
                              (_%E128798128810%_))))
                      (_%E128798128810%_)))))
          (_%E128797128832%_))))
    (define gx#core-compile-top-call%
      (lambda (_%stx128752%_)
        (let* ((_%e128753128763%_ _%stx128752%_)
               (_%E128755128767%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e128753128763%_)))
               (_%E128754128791%_
                (lambda ()
                  (if (gx#stx-pair? _%e128753128763%_)
                      (let ((_%e128756128771%_
                             (gx#syntax-e _%e128753128763%_)))
                        (let ((_%hd128757128774%_ (##car _%e128756128771%_))
                              (_%tl128758128776%_ (##cdr _%e128756128771%_)))
                          (if (gx#stx-pair? _%tl128758128776%_)
                              (let ((_%e128759128779%_
                                     (gx#syntax-e _%tl128758128776%_)))
                                (let ((_%hd128760128782%_
                                       (##car _%e128759128779%_))
                                      (_%tl128761128784%_
                                       (##cdr _%e128759128779%_)))
                                  (let* ((_%rator128787%_ _%hd128760128782%_)
                                         (_%args128789%_ _%tl128761128784%_))
                                    (cons '%#call
                                          (cons (gx#core-compile-top-syntax
                                                 _%rator128787%_)
                                                (gx#stx-map1
                                                 gx#core-compile-top-syntax
                                                 _%args128789%_))))))
                              (_%E128755128767%_))))
                      (_%E128755128767%_)))))
          (_%E128754128791%_))))
    (define gx#core-compile-top-if%
      (lambda (_%stx128685%_)
        (let* ((_%e128686128702%_ _%stx128685%_)
               (_%E128688128706%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e128686128702%_)))
               (_%E128687128748%_
                (lambda ()
                  (if (gx#stx-pair? _%e128686128702%_)
                      (let ((_%e128689128710%_
                             (gx#syntax-e _%e128686128702%_)))
                        (let ((_%hd128690128713%_ (##car _%e128689128710%_))
                              (_%tl128691128715%_ (##cdr _%e128689128710%_)))
                          (if (gx#stx-pair? _%tl128691128715%_)
                              (let ((_%e128692128718%_
                                     (gx#syntax-e _%tl128691128715%_)))
                                (let ((_%hd128693128721%_
                                       (##car _%e128692128718%_))
                                      (_%tl128694128723%_
                                       (##cdr _%e128692128718%_)))
                                  (let ((_%test128726%_ _%hd128693128721%_))
                                    (if (gx#stx-pair? _%tl128694128723%_)
                                        (let ((_%e128695128728%_
                                               (gx#syntax-e
                                                _%tl128694128723%_)))
                                          (let ((_%hd128696128731%_
                                                 (##car _%e128695128728%_))
                                                (_%tl128697128733%_
                                                 (##cdr _%e128695128728%_)))
                                            (let ((_%K128736%_
                                                   _%hd128696128731%_))
                                              (if (gx#stx-pair?
                                                   _%tl128697128733%_)
                                                  (let ((_%e128698128738%_
                                                         (gx#syntax-e
                                                          _%tl128697128733%_)))
                                                    (let ((_%hd128699128741%_
                                                           (##car _%e128698128738%_))
                                                          (_%tl128700128743%_
                                                           (##cdr _%e128698128738%_)))
                                                      (let ((_%E128746%_
                                                             _%hd128699128741%_))
                                                        (if (gx#stx-null?
                                                             _%tl128700128743%_)
                                                            (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#core-compile-top-syntax _%test128726%_)
                                (cons (gx#core-compile-top-syntax _%K128736%_)
                                      (cons (gx#core-compile-top-syntax
                                             _%E128746%_)
                                            '()))))
                    (_%E128688128706%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E128688128706%_)))))
                                        (_%E128688128706%_)))))
                              (_%E128688128706%_))))
                      (_%E128688128706%_)))))
          (_%E128687128748%_))))
    (define gx#core-compile-top-ref%
      (lambda (_%stx128644%_)
        (let* ((_%e128645128655%_ _%stx128644%_)
               (_%E128647128659%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e128645128655%_)))
               (_%E128646128681%_
                (lambda ()
                  (if (gx#stx-pair? _%e128645128655%_)
                      (let ((_%e128648128663%_
                             (gx#syntax-e _%e128645128655%_)))
                        (let ((_%hd128649128666%_ (##car _%e128648128663%_))
                              (_%tl128650128668%_ (##cdr _%e128648128663%_)))
                          (if (gx#stx-pair? _%tl128650128668%_)
                              (let ((_%e128651128671%_
                                     (gx#syntax-e _%tl128650128668%_)))
                                (let ((_%hd128652128674%_
                                       (##car _%e128651128671%_))
                                      (_%tl128653128676%_
                                       (##cdr _%e128651128671%_)))
                                  (let ((_%id128679%_ _%hd128652128674%_))
                                    (if (gx#stx-null? _%tl128653128676%_)
                                        (if (gx#identifier? _%id128679%_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _%id128679%_)
                                                        '()))
                                            (_%E128647128659%_))
                                        (_%E128647128659%_)))))
                              (_%E128647128659%_))))
                      (_%E128647128659%_)))))
          (_%E128646128681%_))))
    (define gx#core-compile-top-setq%
      (lambda (_%stx128590%_)
        (let* ((_%e128591128604%_ _%stx128590%_)
               (_%E128593128608%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e128591128604%_)))
               (_%E128592128640%_
                (lambda ()
                  (if (gx#stx-pair? _%e128591128604%_)
                      (let ((_%e128594128612%_
                             (gx#syntax-e _%e128591128604%_)))
                        (let ((_%hd128595128615%_ (##car _%e128594128612%_))
                              (_%tl128596128617%_ (##cdr _%e128594128612%_)))
                          (if (gx#stx-pair? _%tl128596128617%_)
                              (let ((_%e128597128620%_
                                     (gx#syntax-e _%tl128596128617%_)))
                                (let ((_%hd128598128623%_
                                       (##car _%e128597128620%_))
                                      (_%tl128599128625%_
                                       (##cdr _%e128597128620%_)))
                                  (let ((_%id128628%_ _%hd128598128623%_))
                                    (if (gx#stx-pair? _%tl128599128625%_)
                                        (let ((_%e128600128630%_
                                               (gx#syntax-e
                                                _%tl128599128625%_)))
                                          (let ((_%hd128601128633%_
                                                 (##car _%e128600128630%_))
                                                (_%tl128602128635%_
                                                 (##cdr _%e128600128630%_)))
                                            (let ((_%expr128638%_
                                                   _%hd128601128633%_))
                                              (if (gx#stx-null?
                                                   _%tl128602128635%_)
                                                  (if (gx#identifier?
                                                       _%id128628%_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%id128628%_)
                          (cons (gx#core-compile-top-syntax _%expr128638%_)
                                '())))
              (_%E128593128608%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E128593128608%_)))))
                                        (_%E128593128608%_)))))
                              (_%E128593128608%_))))
                      (_%E128593128608%_)))))
          (_%E128592128640%_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_%id128584%_)
        (let ((_%$e128586%_ (gx#resolve-identifier__0 _%id128584%_)))
          (if _%$e128586%_
              (##unchecked-structure-ref _%$e128586%_ '1 '#f '#f)
              _%id128584%_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_%hd128582%_)
        (if (gx#identifier? _%hd128582%_)
            (gx#core-compile-top-runtime-ref _%hd128582%_)
            '#f)))))
