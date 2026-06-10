(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1781119049)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_%stx166547%_)
        (let* ((_%$%e166548166555%_ _%stx166547%_)
               (_%$%E166550166559%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e166548166555%_)))
               (_%$%E166549166573%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e166548166555%_)
                      (let ((_%$%e166551166563%_
                             (gx#syntax-e _%$%e166548166555%_)))
                        (let ((_%$%hd166552166566%_
                               (##car _%$%e166551166563%_))
                              (_%$%tl166553166568%_
                               (##cdr _%$%e166551166563%_)))
                          (let ((_%form166571%_ _%$%hd166552166566%_))
                            (if '#t
                                (call-method
                                 (gx#syntax-local-e _%form166571%_)
                                 'compile-top-syntax
                                 _%stx166547%_)
                                (_%$%E166550166559%_)))))
                      (_%$%E166550166559%_)))))
          (_%$%E166549166573%_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_%self166496%_ _%stx166497%_)
        (let* ((_%self166500%_ _%self166496%_)
               (_%$%self166509166517%_ _%self166500%_)
               (_%$%E166511166520%_
                (lambda ()
                  (error '"No clause matching"
                         _%$%self166509166517%_
                         '((core-expander _ _ K)))
                  (void)))
               (_%$%K166512166533%_
                (lambda (_%K166523%_)
                  (let ((_%$e166525%_ (gx#stx-source _%stx166497%_)))
                    (if _%$e166525%_
                        ((lambda (_%$%g166527166529%_)
                           (gx#stx-wrap-source
                            (_%K166523%_ _%stx166497%_)
                            _%$%g166527166529%_))
                         _%$e166525%_)
                        (_%K166523%_ _%stx166497%_))))))
          (if (gx#core-expander? _%$%self166509166517%_)
              (let* ((_%$%e166513166536%_
                      (gx#&expander-e _%$%self166509166517%_))
                     (_%$%e166514166539%_
                      (gx#&core-expander-id _%$%self166509166517%_))
                     (_%$%e166515166542%_
                      (gx#&core-expander-compile-top _%$%self166509166517%_))
                     (_%K166545%_ _%$%e166515166542%_))
                (_%$%K166512166533%_ _%K166545%_))
              (_%$%E166511166520%_)))))
    (bind-method!
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_%stx166370%_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _%stx166370%_)))
    (define gx#core-compile-top-begin%
      (lambda (_%stx166340%_)
        (let* ((_%$%e166341166348%_ _%stx166340%_)
               (_%$%E166343166352%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e166341166348%_)))
               (_%$%E166342166366%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e166341166348%_)
                      (let ((_%$%e166344166356%_
                             (gx#syntax-e _%$%e166341166348%_)))
                        (let ((_%$%hd166345166359%_
                               (##car _%$%e166344166356%_))
                              (_%$%tl166346166361%_
                               (##cdr _%$%e166344166356%_)))
                          (let ((_%body166364%_ _%$%tl166346166361%_))
                            (if '#t
                                (cons '%#begin
                                      (gx#stx-map
                                       gx#core-compile-top-syntax
                                       _%body166364%_))
                                (_%$%E166343166352%_)))))
                      (_%$%E166343166352%_)))))
          (_%$%E166342166366%_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_%stx166309%_)
        (let* ((_%$%e166310166317%_ _%stx166309%_)
               (_%$%E166312166321%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e166310166317%_)))
               (_%$%E166311166336%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e166310166317%_)
                      (let ((_%$%e166313166325%_
                             (gx#syntax-e _%$%e166310166317%_)))
                        (let ((_%$%hd166314166328%_
                               (##car _%$%e166313166325%_))
                              (_%$%tl166315166330%_
                               (##cdr _%$%e166313166325%_)))
                          (let ((_%body166333%_ _%$%tl166315166330%_))
                            (if '#t
                                (cons '%#begin-syntax
                                      (call-with-parameters
                                       (lambda ()
                                         (gx#stx-map
                                          gx#core-compile-top-syntax
                                          _%body166333%_))
                                       gx#current-expander-phi
                                       (fx1+ (gx#current-expander-phi))))
                                (_%$%E166312166321%_)))))
                      (_%$%E166312166321%_)))))
          (_%$%E166311166336%_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_%stx166279%_)
        (let* ((_%$%e166280166287%_ _%stx166279%_)
               (_%$%E166282166291%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e166280166287%_)))
               (_%$%E166281166305%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e166280166287%_)
                      (let ((_%$%e166283166295%_
                             (gx#syntax-e _%$%e166280166287%_)))
                        (let ((_%$%hd166284166298%_
                               (##car _%$%e166283166295%_))
                              (_%$%tl166285166300%_
                               (##cdr _%$%e166283166295%_)))
                          (let ((_%body166303%_ _%$%tl166285166300%_))
                            (if '#t
                                (cons '%#begin-foreign _%body166303%_)
                                (_%$%E166282166291%_)))))
                      (_%$%E166282166291%_)))))
          (_%$%E166281166305%_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_%stx166225%_)
        (let* ((_%$%e166226166239%_ _%stx166225%_)
               (_%$%E166228166243%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e166226166239%_)))
               (_%$%E166227166275%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e166226166239%_)
                      (let ((_%$%e166229166247%_
                             (gx#syntax-e _%$%e166226166239%_)))
                        (let ((_%$%hd166230166250%_
                               (##car _%$%e166229166247%_))
                              (_%$%tl166231166252%_
                               (##cdr _%$%e166229166247%_)))
                          (if (gx#stx-pair? _%$%tl166231166252%_)
                              (let ((_%$%e166232166255%_
                                     (gx#syntax-e _%$%tl166231166252%_)))
                                (let ((_%$%hd166233166258%_
                                       (##car _%$%e166232166255%_))
                                      (_%$%tl166234166260%_
                                       (##cdr _%$%e166232166255%_)))
                                  (let ((_%ann166263%_ _%$%hd166233166258%_))
                                    (if (gx#stx-pair? _%$%tl166234166260%_)
                                        (let ((_%$%e166235166265%_
                                               (gx#syntax-e
                                                _%$%tl166234166260%_)))
                                          (let ((_%$%hd166236166268%_
                                                 (##car _%$%e166235166265%_))
                                                (_%$%tl166237166270%_
                                                 (##cdr _%$%e166235166265%_)))
                                            (let ((_%expr166273%_
                                                   _%$%hd166236166268%_))
                                              (if (gx#stx-null?
                                                   _%$%tl166237166270%_)
                                                  (if '#t
                                                      (gx#core-compile-top-syntax
                                                       _%expr166273%_)
                                                      (_%$%E166228166243%_))
                                                  (_%$%E166228166243%_)))))
                                        (_%$%E166228166243%_)))))
                              (_%$%E166228166243%_))))
                      (_%$%E166228166243%_)))))
          (_%$%E166227166275%_))))
    (define gx#core-compile-top-import%
      (lambda (_%stx166195%_)
        (let* ((_%$%e166196166203%_ _%stx166195%_)
               (_%$%E166198166207%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e166196166203%_)))
               (_%$%E166197166221%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e166196166203%_)
                      (let ((_%$%e166199166211%_
                             (gx#syntax-e _%$%e166196166203%_)))
                        (let ((_%$%hd166200166214%_
                               (##car _%$%e166199166211%_))
                              (_%$%tl166201166216%_
                               (##cdr _%$%e166199166211%_)))
                          (let ((_%body166219%_ _%$%tl166201166216%_))
                            (if '#t
                                (cons '%#import _%body166219%_)
                                (_%$%E166198166207%_)))))
                      (_%$%E166198166207%_)))))
          (_%$%E166197166221%_))))
    (define gx#core-compile-top-module%
      (lambda (_%stx166152%_)
        (let* ((_%$%e166153166163%_ _%stx166152%_)
               (_%$%E166155166167%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e166153166163%_)))
               (_%$%E166154166191%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e166153166163%_)
                      (let ((_%$%e166156166171%_
                             (gx#syntax-e _%$%e166153166163%_)))
                        (let ((_%$%hd166157166174%_
                               (##car _%$%e166156166171%_))
                              (_%$%tl166158166176%_
                               (##cdr _%$%e166156166171%_)))
                          (if (gx#stx-pair? _%$%tl166158166176%_)
                              (let ((_%$%e166159166179%_
                                     (gx#syntax-e _%$%tl166158166176%_)))
                                (let ((_%$%hd166160166182%_
                                       (##car _%$%e166159166179%_))
                                      (_%$%tl166161166184%_
                                       (##cdr _%$%e166159166179%_)))
                                  (let* ((_%hd166187%_ _%$%hd166160166182%_)
                                         (_%body166189%_ _%$%tl166161166184%_))
                                    (if '#t
                                        (cons* '%#module
                                               (gx#expander-context-id
                                                (gx#syntax-local-e
                                                 _%hd166187%_))
                                               (gx#stx-map
                                                gx#core-compile-top-syntax
                                                _%body166189%_))
                                        (_%$%E166155166167%_)))))
                              (_%$%E166155166167%_))))
                      (_%$%E166155166167%_)))))
          (_%$%E166154166191%_))))
    (define gx#core-compile-top-export%
      (lambda (_%stx166122%_)
        (let* ((_%$%e166123166130%_ _%stx166122%_)
               (_%$%E166125166134%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e166123166130%_)))
               (_%$%E166124166148%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e166123166130%_)
                      (let ((_%$%e166126166138%_
                             (gx#syntax-e _%$%e166123166130%_)))
                        (let ((_%$%hd166127166141%_
                               (##car _%$%e166126166138%_))
                              (_%$%tl166128166143%_
                               (##cdr _%$%e166126166138%_)))
                          (let ((_%body166146%_ _%$%tl166128166143%_))
                            (if '#t
                                (cons '%#export _%body166146%_)
                                (_%$%E166125166134%_)))))
                      (_%$%E166125166134%_)))))
          (_%$%E166124166148%_))))
    (define gx#core-compile-top-provide%
      (lambda (_%stx166092%_)
        (let* ((_%$%e166093166100%_ _%stx166092%_)
               (_%$%E166095166104%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e166093166100%_)))
               (_%$%E166094166118%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e166093166100%_)
                      (let ((_%$%e166096166108%_
                             (gx#syntax-e _%$%e166093166100%_)))
                        (let ((_%$%hd166097166111%_
                               (##car _%$%e166096166108%_))
                              (_%$%tl166098166113%_
                               (##cdr _%$%e166096166108%_)))
                          (let ((_%body166116%_ _%$%tl166098166113%_))
                            (if '#t
                                (cons '%#provide _%body166116%_)
                                (_%$%E166095166104%_)))))
                      (_%$%E166095166104%_)))))
          (_%$%E166094166118%_))))
    (define gx#core-compile-top-extern%
      (lambda (_%stx166062%_)
        (let* ((_%$%e166063166070%_ _%stx166062%_)
               (_%$%E166065166074%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e166063166070%_)))
               (_%$%E166064166088%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e166063166070%_)
                      (let ((_%$%e166066166078%_
                             (gx#syntax-e _%$%e166063166070%_)))
                        (let ((_%$%hd166067166081%_
                               (##car _%$%e166066166078%_))
                              (_%$%tl166068166083%_
                               (##cdr _%$%e166066166078%_)))
                          (let ((_%body166086%_ _%$%tl166068166083%_))
                            (if '#t
                                (cons '%#extern _%body166086%_)
                                (_%$%E166065166074%_)))))
                      (_%$%E166065166074%_)))))
          (_%$%E166064166088%_))))
    (define gx#core-compile-top-define-values%
      (lambda (_%stx166008%_)
        (let* ((_%$%e166009166022%_ _%stx166008%_)
               (_%$%E166011166026%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e166009166022%_)))
               (_%$%E166010166058%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e166009166022%_)
                      (let ((_%$%e166012166030%_
                             (gx#syntax-e _%$%e166009166022%_)))
                        (let ((_%$%hd166013166033%_
                               (##car _%$%e166012166030%_))
                              (_%$%tl166014166035%_
                               (##cdr _%$%e166012166030%_)))
                          (if (gx#stx-pair? _%$%tl166014166035%_)
                              (let ((_%$%e166015166038%_
                                     (gx#syntax-e _%$%tl166014166035%_)))
                                (let ((_%$%hd166016166041%_
                                       (##car _%$%e166015166038%_))
                                      (_%$%tl166017166043%_
                                       (##cdr _%$%e166015166038%_)))
                                  (let ((_%hd166046%_ _%$%hd166016166041%_))
                                    (if (gx#stx-pair? _%$%tl166017166043%_)
                                        (let ((_%$%e166018166048%_
                                               (gx#syntax-e
                                                _%$%tl166017166043%_)))
                                          (let ((_%$%hd166019166051%_
                                                 (##car _%$%e166018166048%_))
                                                (_%$%tl166020166053%_
                                                 (##cdr _%$%e166018166048%_)))
                                            (let ((_%expr166056%_
                                                   _%$%hd166019166051%_))
                                              (if (gx#stx-null?
                                                   _%$%tl166020166053%_)
                                                  (if '#t
                                                      (cons '%#define-values
                                                            (cons (gx#stx-map
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-runtime-bind
                           _%hd166046%_)
                          (cons (gx#core-compile-top-syntax _%expr166056%_)
                                '())))
              (_%$%E166011166026%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E166011166026%_)))))
                                        (_%$%E166011166026%_)))))
                              (_%$%E166011166026%_))))
                      (_%$%E166011166026%_)))))
          (_%$%E166010166058%_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_%stx165953%_)
        (let* ((_%$%e165954165967%_ _%stx165953%_)
               (_%$%E165956165971%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e165954165967%_)))
               (_%$%E165955166004%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e165954165967%_)
                      (let ((_%$%e165957165975%_
                             (gx#syntax-e _%$%e165954165967%_)))
                        (let ((_%$%hd165958165978%_
                               (##car _%$%e165957165975%_))
                              (_%$%tl165959165980%_
                               (##cdr _%$%e165957165975%_)))
                          (if (gx#stx-pair? _%$%tl165959165980%_)
                              (let ((_%$%e165960165983%_
                                     (gx#syntax-e _%$%tl165959165980%_)))
                                (let ((_%$%hd165961165986%_
                                       (##car _%$%e165960165983%_))
                                      (_%$%tl165962165988%_
                                       (##cdr _%$%e165960165983%_)))
                                  (let ((_%hd165991%_ _%$%hd165961165986%_))
                                    (if (gx#stx-pair? _%$%tl165962165988%_)
                                        (let ((_%$%e165963165993%_
                                               (gx#syntax-e
                                                _%$%tl165962165988%_)))
                                          (let ((_%$%hd165964165996%_
                                                 (##car _%$%e165963165993%_))
                                                (_%$%tl165965165998%_
                                                 (##cdr _%$%e165963165993%_)))
                                            (let ((_%expr166001%_
                                                   _%$%hd165964165996%_))
                                              (if (gx#stx-null?
                                                   _%$%tl165965165998%_)
                                                  (if '#t
                                                      (cons '%#define-syntax
                                                            (cons _%hd165991%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (call-with-parameters
                                 (lambda ()
                                   (gx#core-compile-top-syntax _%expr166001%_))
                                 gx#current-expander-phi
                                 (fx1+ (gx#current-expander-phi)))
                                '())))
              (_%$%E165956165971%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E165956165971%_)))))
                                        (_%$%E165956165971%_)))))
                              (_%$%E165956165971%_))))
                      (_%$%E165956165971%_)))))
          (_%$%E165955166004%_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_%stx165923%_)
        (let* ((_%$%e165924165931%_ _%stx165923%_)
               (_%$%E165926165935%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e165924165931%_)))
               (_%$%E165925165949%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e165924165931%_)
                      (let ((_%$%e165927165939%_
                             (gx#syntax-e _%$%e165924165931%_)))
                        (let ((_%$%hd165928165942%_
                               (##car _%$%e165927165939%_))
                              (_%$%tl165929165944%_
                               (##cdr _%$%e165927165939%_)))
                          (let ((_%body165947%_ _%$%tl165929165944%_))
                            (if '#t
                                (cons '%#define-alias _%body165947%_)
                                (_%$%E165926165935%_)))))
                      (_%$%E165926165935%_)))))
          (_%$%E165925165949%_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_%stx165893%_)
        (let* ((_%$%e165894165901%_ _%stx165893%_)
               (_%$%E165896165905%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e165894165901%_)))
               (_%$%E165895165919%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e165894165901%_)
                      (let ((_%$%e165897165909%_
                             (gx#syntax-e _%$%e165894165901%_)))
                        (let ((_%$%hd165898165912%_
                               (##car _%$%e165897165909%_))
                              (_%$%tl165899165914%_
                               (##cdr _%$%e165897165909%_)))
                          (let ((_%body165917%_ _%$%tl165899165914%_))
                            (if '#t
                                (cons '%#define-runtime _%body165917%_)
                                (_%$%E165896165905%_)))))
                      (_%$%E165896165905%_)))))
          (_%$%E165895165919%_))))
    (define gx#core-compile-top-declare%
      (lambda (_%stx165863%_)
        (let* ((_%$%e165864165871%_ _%stx165863%_)
               (_%$%E165866165875%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e165864165871%_)))
               (_%$%E165865165889%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e165864165871%_)
                      (let ((_%$%e165867165879%_
                             (gx#syntax-e _%$%e165864165871%_)))
                        (let ((_%$%hd165868165882%_
                               (##car _%$%e165867165879%_))
                              (_%$%tl165869165884%_
                               (##cdr _%$%e165867165879%_)))
                          (let ((_%decls165887%_ _%$%tl165869165884%_))
                            (if '#t
                                (cons '%#declare _%decls165887%_)
                                (_%$%E165866165875%_)))))
                      (_%$%E165866165875%_)))))
          (_%$%E165865165889%_))))
    (define gx#core-compile-top-lambda%
      (lambda (_%stx165833%_)
        (let* ((_%$%e165834165841%_ _%stx165833%_)
               (_%$%E165836165845%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e165834165841%_)))
               (_%$%E165835165859%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e165834165841%_)
                      (let ((_%$%e165837165849%_
                             (gx#syntax-e _%$%e165834165841%_)))
                        (let ((_%$%hd165838165852%_
                               (##car _%$%e165837165849%_))
                              (_%$%tl165839165854%_
                               (##cdr _%$%e165837165849%_)))
                          (let ((_%clause165857%_ _%$%tl165839165854%_))
                            (if '#t
                                (cons '%#lambda
                                      (gx#core-compile-top-lambda-clause
                                       _%clause165857%_))
                                (_%$%E165836165845%_)))))
                      (_%$%E165836165845%_)))))
          (_%$%E165835165859%_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_%stx165790%_)
        (let* ((_%$%e165791165801%_ _%stx165790%_)
               (_%$%E165793165805%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e165791165801%_)))
               (_%$%E165792165829%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e165791165801%_)
                      (let ((_%$%e165794165809%_
                             (gx#syntax-e _%$%e165791165801%_)))
                        (let ((_%$%hd165795165812%_
                               (##car _%$%e165794165809%_))
                              (_%$%tl165796165814%_
                               (##cdr _%$%e165794165809%_)))
                          (let ((_%hd165817%_ _%$%hd165795165812%_))
                            (if (gx#stx-pair? _%$%tl165796165814%_)
                                (let ((_%$%e165797165819%_
                                       (gx#syntax-e _%$%tl165796165814%_)))
                                  (let ((_%$%hd165798165822%_
                                         (##car _%$%e165797165819%_))
                                        (_%$%tl165799165824%_
                                         (##cdr _%$%e165797165819%_)))
                                    (let ((_%body165827%_
                                           _%$%hd165798165822%_))
                                      (if (gx#stx-null? _%$%tl165799165824%_)
                                          (if '#t
                                              (cons (gx#stx-map
                                                     gx#core-compile-top-runtime-bind
                                                     _%hd165817%_)
                                                    (cons (gx#core-compile-top-syntax
                                                           _%body165827%_)
                                                          '()))
                                              (_%$%E165793165805%_))
                                          (_%$%E165793165805%_)))))
                                (_%$%E165793165805%_)))))
                      (_%$%E165793165805%_)))))
          (_%$%E165792165829%_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_%stx165760%_)
        (let* ((_%$%e165761165768%_ _%stx165760%_)
               (_%$%E165763165772%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e165761165768%_)))
               (_%$%E165762165786%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e165761165768%_)
                      (let ((_%$%e165764165776%_
                             (gx#syntax-e _%$%e165761165768%_)))
                        (let ((_%$%hd165765165779%_
                               (##car _%$%e165764165776%_))
                              (_%$%tl165766165781%_
                               (##cdr _%$%e165764165776%_)))
                          (let ((_%clauses165784%_ _%$%tl165766165781%_))
                            (if '#t
                                (cons '%#case-lambda
                                      (gx#stx-map
                                       gx#core-compile-top-lambda-clause
                                       _%clauses165784%_))
                                (_%$%E165763165772%_)))))
                      (_%$%E165763165772%_)))))
          (_%$%E165762165786%_))))
    (define gx#core-compile-top-let-values%
      (let ((_%$%opt-lambda165693165750%_
             (lambda (_%stx165695%_ _%form165696%_)
               (let* ((_%$%e165697165710%_ _%stx165695%_)
                      (_%$%E165699165714%_
                       (lambda ()
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid syntax-case clause"
                          _%$%e165697165710%_)))
                      (_%$%E165698165746%_
                       (lambda ()
                         (if (gx#stx-pair? _%$%e165697165710%_)
                             (let ((_%$%e165700165718%_
                                    (gx#syntax-e _%$%e165697165710%_)))
                               (let ((_%$%hd165701165721%_
                                      (##car _%$%e165700165718%_))
                                     (_%$%tl165702165723%_
                                      (##cdr _%$%e165700165718%_)))
                                 (if (gx#stx-pair? _%$%tl165702165723%_)
                                     (let ((_%$%e165703165726%_
                                            (gx#syntax-e
                                             _%$%tl165702165723%_)))
                                       (let ((_%$%hd165704165729%_
                                              (##car _%$%e165703165726%_))
                                             (_%$%tl165705165731%_
                                              (##cdr _%$%e165703165726%_)))
                                         (let ((_%hd165734%_
                                                _%$%hd165704165729%_))
                                           (if (gx#stx-pair?
                                                _%$%tl165705165731%_)
                                               (let ((_%$%e165706165736%_
                                                      (gx#syntax-e
                                                       _%$%tl165705165731%_)))
                                                 (let ((_%$%hd165707165739%_
                                                        (##car _%$%e165706165736%_))
                                                       (_%$%tl165708165741%_
                                                        (##cdr _%$%e165706165736%_)))
                                                   (let ((_%body165744%_
                                                          _%$%hd165707165739%_))
                                                     (if (gx#stx-null?
                                                          _%$%tl165708165741%_)
                                                         (if '#t
                                                             (cons _%form165696%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#stx-map
                                  gx#core-compile-top-lambda-clause
                                  _%hd165734%_)
                                 (cons (gx#core-compile-top-syntax
                                        _%body165744%_)
                                       '())))
                     (_%$%E165699165714%_))
                 (_%$%E165699165714%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%E165699165714%_)))))
                                     (_%$%E165699165714%_))))
                             (_%$%E165699165714%_)))))
                 (_%$%E165698165746%_)))))
        (lambda _g166576_
          (let ((_g166577_ (##length _g166576_)))
            (cond ((##fx= _g166577_ 1)
                   (apply (lambda (_%stx165753%_)
                            (let ((_%form165755%_ '%#let-values))
                              (_%$%opt-lambda165693165750%_
                               _%stx165753%_
                               _%form165755%_)))
                          _g166576_))
                  ((##fx= _g166577_ 2)
                   (apply _%$%opt-lambda165693165750%_ _g166576_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-compile-top-let-values%
                    _g166576_)))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_%stx165692%_)
        (gx#core-compile-top-let-values% _%stx165692%_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_%stx165690%_)
        (gx#core-compile-top-let-values% _%stx165690%_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_%stx165649%_)
        (let* ((_%$%e165650165660%_ _%stx165649%_)
               (_%$%E165652165664%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e165650165660%_)))
               (_%$%E165651165686%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e165650165660%_)
                      (let ((_%$%e165653165668%_
                             (gx#syntax-e _%$%e165650165660%_)))
                        (let ((_%$%hd165654165671%_
                               (##car _%$%e165653165668%_))
                              (_%$%tl165655165673%_
                               (##cdr _%$%e165653165668%_)))
                          (if (gx#stx-pair? _%$%tl165655165673%_)
                              (let ((_%$%e165656165676%_
                                     (gx#syntax-e _%$%tl165655165673%_)))
                                (let ((_%$%hd165657165679%_
                                       (##car _%$%e165656165676%_))
                                      (_%$%tl165658165681%_
                                       (##cdr _%$%e165656165676%_)))
                                  (let ((_%e165684%_ _%$%hd165657165679%_))
                                    (if (gx#stx-null? _%$%tl165658165681%_)
                                        (if '#t
                                            (cons '%#quote
                                                  (cons (gx#syntax->datum
                                                         _%e165684%_)
                                                        '()))
                                            (_%$%E165652165664%_))
                                        (_%$%E165652165664%_)))))
                              (_%$%E165652165664%_))))
                      (_%$%E165652165664%_)))))
          (_%$%E165651165686%_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_%stx165608%_)
        (let* ((_%$%e165609165619%_ _%stx165608%_)
               (_%$%E165611165623%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e165609165619%_)))
               (_%$%E165610165645%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e165609165619%_)
                      (let ((_%$%e165612165627%_
                             (gx#syntax-e _%$%e165609165619%_)))
                        (let ((_%$%hd165613165630%_
                               (##car _%$%e165612165627%_))
                              (_%$%tl165614165632%_
                               (##cdr _%$%e165612165627%_)))
                          (if (gx#stx-pair? _%$%tl165614165632%_)
                              (let ((_%$%e165615165635%_
                                     (gx#syntax-e _%$%tl165614165632%_)))
                                (let ((_%$%hd165616165638%_
                                       (##car _%$%e165615165635%_))
                                      (_%$%tl165617165640%_
                                       (##cdr _%$%e165615165635%_)))
                                  (let ((_%e165643%_ _%$%hd165616165638%_))
                                    (if (gx#stx-null? _%$%tl165617165640%_)
                                        (if '#t
                                            (cons '%#quote-syntax
                                                  (cons (gx#core-quote-syntax
                                                         _%e165643%_)
                                                        '()))
                                            (_%$%E165611165623%_))
                                        (_%$%E165611165623%_)))))
                              (_%$%E165611165623%_))))
                      (_%$%E165611165623%_)))))
          (_%$%E165610165645%_))))
    (define gx#core-compile-top-call%
      (lambda (_%stx165565%_)
        (let* ((_%$%e165566165576%_ _%stx165565%_)
               (_%$%E165568165580%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e165566165576%_)))
               (_%$%E165567165604%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e165566165576%_)
                      (let ((_%$%e165569165584%_
                             (gx#syntax-e _%$%e165566165576%_)))
                        (let ((_%$%hd165570165587%_
                               (##car _%$%e165569165584%_))
                              (_%$%tl165571165589%_
                               (##cdr _%$%e165569165584%_)))
                          (if (gx#stx-pair? _%$%tl165571165589%_)
                              (let ((_%$%e165572165592%_
                                     (gx#syntax-e _%$%tl165571165589%_)))
                                (let ((_%$%hd165573165595%_
                                       (##car _%$%e165572165592%_))
                                      (_%$%tl165574165597%_
                                       (##cdr _%$%e165572165592%_)))
                                  (let* ((_%rator165600%_ _%$%hd165573165595%_)
                                         (_%args165602%_ _%$%tl165574165597%_))
                                    (if '#t
                                        (cons* '%#call
                                               (gx#core-compile-top-syntax
                                                _%rator165600%_)
                                               (gx#stx-map
                                                gx#core-compile-top-syntax
                                                _%args165602%_))
                                        (_%$%E165568165580%_)))))
                              (_%$%E165568165580%_))))
                      (_%$%E165568165580%_)))))
          (_%$%E165567165604%_))))
    (define gx#core-compile-top-if%
      (lambda (_%stx165498%_)
        (let* ((_%$%e165499165515%_ _%stx165498%_)
               (_%$%E165501165519%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e165499165515%_)))
               (_%$%E165500165561%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e165499165515%_)
                      (let ((_%$%e165502165523%_
                             (gx#syntax-e _%$%e165499165515%_)))
                        (let ((_%$%hd165503165526%_
                               (##car _%$%e165502165523%_))
                              (_%$%tl165504165528%_
                               (##cdr _%$%e165502165523%_)))
                          (if (gx#stx-pair? _%$%tl165504165528%_)
                              (let ((_%$%e165505165531%_
                                     (gx#syntax-e _%$%tl165504165528%_)))
                                (let ((_%$%hd165506165534%_
                                       (##car _%$%e165505165531%_))
                                      (_%$%tl165507165536%_
                                       (##cdr _%$%e165505165531%_)))
                                  (let ((_%test165539%_ _%$%hd165506165534%_))
                                    (if (gx#stx-pair? _%$%tl165507165536%_)
                                        (let ((_%$%e165508165541%_
                                               (gx#syntax-e
                                                _%$%tl165507165536%_)))
                                          (let ((_%$%hd165509165544%_
                                                 (##car _%$%e165508165541%_))
                                                (_%$%tl165510165546%_
                                                 (##cdr _%$%e165508165541%_)))
                                            (let ((_%K165549%_
                                                   _%$%hd165509165544%_))
                                              (if (gx#stx-pair?
                                                   _%$%tl165510165546%_)
                                                  (let ((_%$%e165511165551%_
                                                         (gx#syntax-e
                                                          _%$%tl165510165546%_)))
                                                    (let ((_%$%hd165512165554%_
                                                           (##car _%$%e165511165551%_))
                                                          (_%$%tl165513165556%_
                                                           (##cdr _%$%e165511165551%_)))
                                                      (let ((_%E165559%_
                                                             _%$%hd165512165554%_))
                                                        (if (gx#stx-null?
                                                             _%$%tl165513165556%_)
                                                            (if '#t
                                                                (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#core-compile-top-syntax _%test165539%_)
                                    (cons (gx#core-compile-top-syntax
                                           _%K165549%_)
                                          (cons (gx#core-compile-top-syntax
                                                 _%E165559%_)
                                                '()))))
                        (_%$%E165501165519%_))
                    (_%$%E165501165519%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E165501165519%_)))))
                                        (_%$%E165501165519%_)))))
                              (_%$%E165501165519%_))))
                      (_%$%E165501165519%_)))))
          (_%$%E165500165561%_))))
    (define gx#core-compile-top-ref%
      (lambda (_%stx165457%_)
        (let* ((_%$%e165458165468%_ _%stx165457%_)
               (_%$%E165460165472%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e165458165468%_)))
               (_%$%E165459165494%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e165458165468%_)
                      (let ((_%$%e165461165476%_
                             (gx#syntax-e _%$%e165458165468%_)))
                        (let ((_%$%hd165462165479%_
                               (##car _%$%e165461165476%_))
                              (_%$%tl165463165481%_
                               (##cdr _%$%e165461165476%_)))
                          (if (gx#stx-pair? _%$%tl165463165481%_)
                              (let ((_%$%e165464165484%_
                                     (gx#syntax-e _%$%tl165463165481%_)))
                                (let ((_%$%hd165465165487%_
                                       (##car _%$%e165464165484%_))
                                      (_%$%tl165466165489%_
                                       (##cdr _%$%e165464165484%_)))
                                  (let ((_%id165492%_ _%$%hd165465165487%_))
                                    (if (gx#stx-null? _%$%tl165466165489%_)
                                        (if (gx#identifier? _%id165492%_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _%id165492%_)
                                                        '()))
                                            (_%$%E165460165472%_))
                                        (_%$%E165460165472%_)))))
                              (_%$%E165460165472%_))))
                      (_%$%E165460165472%_)))))
          (_%$%E165459165494%_))))
    (define gx#core-compile-top-setq%
      (lambda (_%stx165403%_)
        (let* ((_%$%e165404165417%_ _%stx165403%_)
               (_%$%E165406165421%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e165404165417%_)))
               (_%$%E165405165453%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e165404165417%_)
                      (let ((_%$%e165407165425%_
                             (gx#syntax-e _%$%e165404165417%_)))
                        (let ((_%$%hd165408165428%_
                               (##car _%$%e165407165425%_))
                              (_%$%tl165409165430%_
                               (##cdr _%$%e165407165425%_)))
                          (if (gx#stx-pair? _%$%tl165409165430%_)
                              (let ((_%$%e165410165433%_
                                     (gx#syntax-e _%$%tl165409165430%_)))
                                (let ((_%$%hd165411165436%_
                                       (##car _%$%e165410165433%_))
                                      (_%$%tl165412165438%_
                                       (##cdr _%$%e165410165433%_)))
                                  (let ((_%id165441%_ _%$%hd165411165436%_))
                                    (if (gx#stx-pair? _%$%tl165412165438%_)
                                        (let ((_%$%e165413165443%_
                                               (gx#syntax-e
                                                _%$%tl165412165438%_)))
                                          (let ((_%$%hd165414165446%_
                                                 (##car _%$%e165413165443%_))
                                                (_%$%tl165415165448%_
                                                 (##cdr _%$%e165413165443%_)))
                                            (let ((_%expr165451%_
                                                   _%$%hd165414165446%_))
                                              (if (gx#stx-null?
                                                   _%$%tl165415165448%_)
                                                  (if (gx#identifier?
                                                       _%id165441%_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%id165441%_)
                          (cons (gx#core-compile-top-syntax _%expr165451%_)
                                '())))
              (_%$%E165406165421%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E165406165421%_)))))
                                        (_%$%E165406165421%_)))))
                              (_%$%E165406165421%_))))
                      (_%$%E165406165421%_)))))
          (_%$%E165405165453%_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_%id165397%_)
        (let ((_%$e165399%_ (gx#resolve-identifier _%id165397%_)))
          (if _%$e165399%_ (gx#&binding-id _%$e165399%_) _%id165397%_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_%hd165395%_)
        (if (gx#identifier? _%hd165395%_)
            (gx#core-compile-top-runtime-ref _%hd165395%_)
            '#f)))))
