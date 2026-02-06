(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1770342299)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_%stx154039%_)
        (let* ((_%e154040154047%_ _%stx154039%_)
               (_%E154042154051%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e154040154047%_)))
               (_%E154041154065%_
                (lambda ()
                  (if (gx#stx-pair? _%e154040154047%_)
                      (let ((_%e154043154055%_
                             (gx#syntax-e _%e154040154047%_)))
                        (let ((_%hd154044154058%_ (##car _%e154043154055%_))
                              (_%tl154045154060%_ (##cdr _%e154043154055%_)))
                          (let* ((_%form154063%_ _%hd154044154058%_)
                                 (__self154068
                                  (gx#syntax-local-e__0 _%form154063%_))
                                 (__method154069
                                  (__method-ref
                                   __self154068
                                   'compile-top-syntax)))
                            (if __method154069
                                (__method154069 __self154068 _%stx154039%_)
                                (begin
                                  (error '"Missing method"
                                         __self154068
                                         'compile-top-syntax)
                                  '#!void)))))
                      (_%E154042154051%_)))))
          (_%E154041154065%_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_%self153988%_ _%stx153989%_)
        (let* ((_%self153992%_ _%self153988%_)
               (_%self154001154009%_ _%self153992%_)
               (_%E154003154012%_
                (lambda ()
                  (error '"No clause matching"
                         _%self154001154009%_
                         '((core-expander _ _ K)))
                  '#!void))
               (_%K154004154025%_
                (lambda (_%K154015%_)
                  (let ((_%$e154017%_ (gx#stx-source _%stx153989%_)))
                    (if _%$e154017%_
                        ((lambda (_%g154019154021%_)
                           (gx#stx-wrap-source
                            (_%K154015%_ _%stx153989%_)
                            _%g154019154021%_))
                         _%$e154017%_)
                        (_%K154015%_ _%stx153989%_)))))
               (_%e154005154028%_
                (##unchecked-structure-ref _%self154001154009%_ '1 '#f '#f))
               (_%e154006154031%_
                (##unchecked-structure-ref _%self154001154009%_ '2 '#f '#f))
               (_%e154007154034%_
                (##unchecked-structure-ref _%self154001154009%_ '3 '#f '#f))
               (_%K154037%_ _%e154007154034%_))
          (_%K154004154025%_ _%K154037%_))))
    (__bind-method!__%
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_%stx153862%_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _%stx153862%_)))
    (define gx#core-compile-top-begin%
      (lambda (_%stx153832%_)
        (let* ((_%e153833153840%_ _%stx153832%_)
               (_%E153835153844%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e153833153840%_)))
               (_%E153834153858%_
                (lambda ()
                  (if (gx#stx-pair? _%e153833153840%_)
                      (let ((_%e153836153848%_
                             (gx#syntax-e _%e153833153840%_)))
                        (let ((_%hd153837153851%_ (##car _%e153836153848%_))
                              (_%tl153838153853%_ (##cdr _%e153836153848%_)))
                          (let ((_%body153856%_ _%tl153838153853%_))
                            (cons '%#begin
                                  (gx#stx-map1
                                   gx#core-compile-top-syntax
                                   _%body153856%_)))))
                      (_%E153835153844%_)))))
          (_%E153834153858%_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_%stx153801%_)
        (let* ((_%e153802153809%_ _%stx153801%_)
               (_%E153804153813%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e153802153809%_)))
               (_%E153803153828%_
                (lambda ()
                  (if (gx#stx-pair? _%e153802153809%_)
                      (let ((_%e153805153817%_
                             (gx#syntax-e _%e153802153809%_)))
                        (let ((_%hd153806153820%_ (##car _%e153805153817%_))
                              (_%tl153807153822%_ (##cdr _%e153805153817%_)))
                          (let ((_%body153825%_ _%tl153807153822%_))
                            (cons '%#begin-syntax
                                  (call-with-parameters__1
                                   (lambda ()
                                     (gx#stx-map1
                                      gx#core-compile-top-syntax
                                      _%body153825%_))
                                   gx#current-expander-phi
                                   (##fx+ (gx#current-expander-phi) '1))))))
                      (_%E153804153813%_)))))
          (_%E153803153828%_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_%stx153771%_)
        (let* ((_%e153772153779%_ _%stx153771%_)
               (_%E153774153783%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e153772153779%_)))
               (_%E153773153797%_
                (lambda ()
                  (if (gx#stx-pair? _%e153772153779%_)
                      (let ((_%e153775153787%_
                             (gx#syntax-e _%e153772153779%_)))
                        (let ((_%hd153776153790%_ (##car _%e153775153787%_))
                              (_%tl153777153792%_ (##cdr _%e153775153787%_)))
                          (let ((_%body153795%_ _%tl153777153792%_))
                            (cons '%#begin-foreign _%body153795%_))))
                      (_%E153774153783%_)))))
          (_%E153773153797%_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_%stx153717%_)
        (let* ((_%e153718153731%_ _%stx153717%_)
               (_%E153720153735%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e153718153731%_)))
               (_%E153719153767%_
                (lambda ()
                  (if (gx#stx-pair? _%e153718153731%_)
                      (let ((_%e153721153739%_
                             (gx#syntax-e _%e153718153731%_)))
                        (let ((_%hd153722153742%_ (##car _%e153721153739%_))
                              (_%tl153723153744%_ (##cdr _%e153721153739%_)))
                          (if (gx#stx-pair? _%tl153723153744%_)
                              (let ((_%e153724153747%_
                                     (gx#syntax-e _%tl153723153744%_)))
                                (let ((_%hd153725153750%_
                                       (##car _%e153724153747%_))
                                      (_%tl153726153752%_
                                       (##cdr _%e153724153747%_)))
                                  (let ((_%ann153755%_ _%hd153725153750%_))
                                    (if (gx#stx-pair? _%tl153726153752%_)
                                        (let ((_%e153727153757%_
                                               (gx#syntax-e
                                                _%tl153726153752%_)))
                                          (let ((_%hd153728153760%_
                                                 (##car _%e153727153757%_))
                                                (_%tl153729153762%_
                                                 (##cdr _%e153727153757%_)))
                                            (let ((_%expr153765%_
                                                   _%hd153728153760%_))
                                              (if (gx#stx-null?
                                                   _%tl153729153762%_)
                                                  (gx#core-compile-top-syntax
                                                   _%expr153765%_)
                                                  (_%E153720153735%_)))))
                                        (_%E153720153735%_)))))
                              (_%E153720153735%_))))
                      (_%E153720153735%_)))))
          (_%E153719153767%_))))
    (define gx#core-compile-top-import%
      (lambda (_%stx153687%_)
        (let* ((_%e153688153695%_ _%stx153687%_)
               (_%E153690153699%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e153688153695%_)))
               (_%E153689153713%_
                (lambda ()
                  (if (gx#stx-pair? _%e153688153695%_)
                      (let ((_%e153691153703%_
                             (gx#syntax-e _%e153688153695%_)))
                        (let ((_%hd153692153706%_ (##car _%e153691153703%_))
                              (_%tl153693153708%_ (##cdr _%e153691153703%_)))
                          (let ((_%body153711%_ _%tl153693153708%_))
                            (cons '%#import _%body153711%_))))
                      (_%E153690153699%_)))))
          (_%E153689153713%_))))
    (define gx#core-compile-top-module%
      (lambda (_%stx153644%_)
        (let* ((_%e153645153655%_ _%stx153644%_)
               (_%E153647153659%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e153645153655%_)))
               (_%E153646153683%_
                (lambda ()
                  (if (gx#stx-pair? _%e153645153655%_)
                      (let ((_%e153648153663%_
                             (gx#syntax-e _%e153645153655%_)))
                        (let ((_%hd153649153666%_ (##car _%e153648153663%_))
                              (_%tl153650153668%_ (##cdr _%e153648153663%_)))
                          (if (gx#stx-pair? _%tl153650153668%_)
                              (let ((_%e153651153671%_
                                     (gx#syntax-e _%tl153650153668%_)))
                                (let ((_%hd153652153674%_
                                       (##car _%e153651153671%_))
                                      (_%tl153653153676%_
                                       (##cdr _%e153651153671%_)))
                                  (let* ((_%hd153679%_ _%hd153652153674%_)
                                         (_%body153681%_ _%tl153653153676%_))
                                    (cons '%#module
                                          (cons (##structure-ref
                                                 (gx#syntax-local-e__0
                                                  _%hd153679%_)
                                                 '1
                                                 gx#expander-context::t
                                                 '#f)
                                                (gx#stx-map1
                                                 gx#core-compile-top-syntax
                                                 _%body153681%_))))))
                              (_%E153647153659%_))))
                      (_%E153647153659%_)))))
          (_%E153646153683%_))))
    (define gx#core-compile-top-export%
      (lambda (_%stx153614%_)
        (let* ((_%e153615153622%_ _%stx153614%_)
               (_%E153617153626%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e153615153622%_)))
               (_%E153616153640%_
                (lambda ()
                  (if (gx#stx-pair? _%e153615153622%_)
                      (let ((_%e153618153630%_
                             (gx#syntax-e _%e153615153622%_)))
                        (let ((_%hd153619153633%_ (##car _%e153618153630%_))
                              (_%tl153620153635%_ (##cdr _%e153618153630%_)))
                          (let ((_%body153638%_ _%tl153620153635%_))
                            (cons '%#export _%body153638%_))))
                      (_%E153617153626%_)))))
          (_%E153616153640%_))))
    (define gx#core-compile-top-provide%
      (lambda (_%stx153584%_)
        (let* ((_%e153585153592%_ _%stx153584%_)
               (_%E153587153596%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e153585153592%_)))
               (_%E153586153610%_
                (lambda ()
                  (if (gx#stx-pair? _%e153585153592%_)
                      (let ((_%e153588153600%_
                             (gx#syntax-e _%e153585153592%_)))
                        (let ((_%hd153589153603%_ (##car _%e153588153600%_))
                              (_%tl153590153605%_ (##cdr _%e153588153600%_)))
                          (let ((_%body153608%_ _%tl153590153605%_))
                            (cons '%#provide _%body153608%_))))
                      (_%E153587153596%_)))))
          (_%E153586153610%_))))
    (define gx#core-compile-top-extern%
      (lambda (_%stx153554%_)
        (let* ((_%e153555153562%_ _%stx153554%_)
               (_%E153557153566%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e153555153562%_)))
               (_%E153556153580%_
                (lambda ()
                  (if (gx#stx-pair? _%e153555153562%_)
                      (let ((_%e153558153570%_
                             (gx#syntax-e _%e153555153562%_)))
                        (let ((_%hd153559153573%_ (##car _%e153558153570%_))
                              (_%tl153560153575%_ (##cdr _%e153558153570%_)))
                          (let ((_%body153578%_ _%tl153560153575%_))
                            (cons '%#extern _%body153578%_))))
                      (_%E153557153566%_)))))
          (_%E153556153580%_))))
    (define gx#core-compile-top-define-values%
      (lambda (_%stx153500%_)
        (let* ((_%e153501153514%_ _%stx153500%_)
               (_%E153503153518%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e153501153514%_)))
               (_%E153502153550%_
                (lambda ()
                  (if (gx#stx-pair? _%e153501153514%_)
                      (let ((_%e153504153522%_
                             (gx#syntax-e _%e153501153514%_)))
                        (let ((_%hd153505153525%_ (##car _%e153504153522%_))
                              (_%tl153506153527%_ (##cdr _%e153504153522%_)))
                          (if (gx#stx-pair? _%tl153506153527%_)
                              (let ((_%e153507153530%_
                                     (gx#syntax-e _%tl153506153527%_)))
                                (let ((_%hd153508153533%_
                                       (##car _%e153507153530%_))
                                      (_%tl153509153535%_
                                       (##cdr _%e153507153530%_)))
                                  (let ((_%hd153538%_ _%hd153508153533%_))
                                    (if (gx#stx-pair? _%tl153509153535%_)
                                        (let ((_%e153510153540%_
                                               (gx#syntax-e
                                                _%tl153509153535%_)))
                                          (let ((_%hd153511153543%_
                                                 (##car _%e153510153540%_))
                                                (_%tl153512153545%_
                                                 (##cdr _%e153510153540%_)))
                                            (let ((_%expr153548%_
                                                   _%hd153511153543%_))
                                              (if (gx#stx-null?
                                                   _%tl153512153545%_)
                                                  (cons '%#define-values
                                                        (cons (gx#stx-map1
                                                               gx#core-compile-top-runtime-bind
                                                               _%hd153538%_)
                                                              (cons (gx#core-compile-top-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%expr153548%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E153503153518%_)))))
                                        (_%E153503153518%_)))))
                              (_%E153503153518%_))))
                      (_%E153503153518%_)))))
          (_%E153502153550%_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_%stx153445%_)
        (let* ((_%e153446153459%_ _%stx153445%_)
               (_%E153448153463%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e153446153459%_)))
               (_%E153447153496%_
                (lambda ()
                  (if (gx#stx-pair? _%e153446153459%_)
                      (let ((_%e153449153467%_
                             (gx#syntax-e _%e153446153459%_)))
                        (let ((_%hd153450153470%_ (##car _%e153449153467%_))
                              (_%tl153451153472%_ (##cdr _%e153449153467%_)))
                          (if (gx#stx-pair? _%tl153451153472%_)
                              (let ((_%e153452153475%_
                                     (gx#syntax-e _%tl153451153472%_)))
                                (let ((_%hd153453153478%_
                                       (##car _%e153452153475%_))
                                      (_%tl153454153480%_
                                       (##cdr _%e153452153475%_)))
                                  (let ((_%hd153483%_ _%hd153453153478%_))
                                    (if (gx#stx-pair? _%tl153454153480%_)
                                        (let ((_%e153455153485%_
                                               (gx#syntax-e
                                                _%tl153454153480%_)))
                                          (let ((_%hd153456153488%_
                                                 (##car _%e153455153485%_))
                                                (_%tl153457153490%_
                                                 (##cdr _%e153455153485%_)))
                                            (let ((_%expr153493%_
                                                   _%hd153456153488%_))
                                              (if (gx#stx-null?
                                                   _%tl153457153490%_)
                                                  (cons '%#define-syntax
                                                        (cons _%hd153483%_
                                                              (cons (call-with-parameters__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda ()
                               (gx#core-compile-top-syntax _%expr153493%_))
                             gx#current-expander-phi
                             (##fx+ (gx#current-expander-phi) '1))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E153448153463%_)))))
                                        (_%E153448153463%_)))))
                              (_%E153448153463%_))))
                      (_%E153448153463%_)))))
          (_%E153447153496%_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_%stx153415%_)
        (let* ((_%e153416153423%_ _%stx153415%_)
               (_%E153418153427%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e153416153423%_)))
               (_%E153417153441%_
                (lambda ()
                  (if (gx#stx-pair? _%e153416153423%_)
                      (let ((_%e153419153431%_
                             (gx#syntax-e _%e153416153423%_)))
                        (let ((_%hd153420153434%_ (##car _%e153419153431%_))
                              (_%tl153421153436%_ (##cdr _%e153419153431%_)))
                          (let ((_%body153439%_ _%tl153421153436%_))
                            (cons '%#define-alias _%body153439%_))))
                      (_%E153418153427%_)))))
          (_%E153417153441%_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_%stx153385%_)
        (let* ((_%e153386153393%_ _%stx153385%_)
               (_%E153388153397%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e153386153393%_)))
               (_%E153387153411%_
                (lambda ()
                  (if (gx#stx-pair? _%e153386153393%_)
                      (let ((_%e153389153401%_
                             (gx#syntax-e _%e153386153393%_)))
                        (let ((_%hd153390153404%_ (##car _%e153389153401%_))
                              (_%tl153391153406%_ (##cdr _%e153389153401%_)))
                          (let ((_%body153409%_ _%tl153391153406%_))
                            (cons '%#define-runtime _%body153409%_))))
                      (_%E153388153397%_)))))
          (_%E153387153411%_))))
    (define gx#core-compile-top-declare%
      (lambda (_%stx153355%_)
        (let* ((_%e153356153363%_ _%stx153355%_)
               (_%E153358153367%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e153356153363%_)))
               (_%E153357153381%_
                (lambda ()
                  (if (gx#stx-pair? _%e153356153363%_)
                      (let ((_%e153359153371%_
                             (gx#syntax-e _%e153356153363%_)))
                        (let ((_%hd153360153374%_ (##car _%e153359153371%_))
                              (_%tl153361153376%_ (##cdr _%e153359153371%_)))
                          (let ((_%decls153379%_ _%tl153361153376%_))
                            (cons '%#declare _%decls153379%_))))
                      (_%E153358153367%_)))))
          (_%E153357153381%_))))
    (define gx#core-compile-top-lambda%
      (lambda (_%stx153325%_)
        (let* ((_%e153326153333%_ _%stx153325%_)
               (_%E153328153337%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e153326153333%_)))
               (_%E153327153351%_
                (lambda ()
                  (if (gx#stx-pair? _%e153326153333%_)
                      (let ((_%e153329153341%_
                             (gx#syntax-e _%e153326153333%_)))
                        (let ((_%hd153330153344%_ (##car _%e153329153341%_))
                              (_%tl153331153346%_ (##cdr _%e153329153341%_)))
                          (let ((_%clause153349%_ _%tl153331153346%_))
                            (cons '%#lambda
                                  (gx#core-compile-top-lambda-clause
                                   _%clause153349%_)))))
                      (_%E153328153337%_)))))
          (_%E153327153351%_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_%stx153282%_)
        (let* ((_%e153283153293%_ _%stx153282%_)
               (_%E153285153297%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e153283153293%_)))
               (_%E153284153321%_
                (lambda ()
                  (if (gx#stx-pair? _%e153283153293%_)
                      (let ((_%e153286153301%_
                             (gx#syntax-e _%e153283153293%_)))
                        (let ((_%hd153287153304%_ (##car _%e153286153301%_))
                              (_%tl153288153306%_ (##cdr _%e153286153301%_)))
                          (let ((_%hd153309%_ _%hd153287153304%_))
                            (if (gx#stx-pair? _%tl153288153306%_)
                                (let ((_%e153289153311%_
                                       (gx#syntax-e _%tl153288153306%_)))
                                  (let ((_%hd153290153314%_
                                         (##car _%e153289153311%_))
                                        (_%tl153291153316%_
                                         (##cdr _%e153289153311%_)))
                                    (let ((_%body153319%_ _%hd153290153314%_))
                                      (if (gx#stx-null? _%tl153291153316%_)
                                          (cons (gx#stx-map1
                                                 gx#core-compile-top-runtime-bind
                                                 _%hd153309%_)
                                                (cons (gx#core-compile-top-syntax
                                                       _%body153319%_)
                                                      '()))
                                          (_%E153285153297%_)))))
                                (_%E153285153297%_)))))
                      (_%E153285153297%_)))))
          (_%E153284153321%_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_%stx153252%_)
        (let* ((_%e153253153260%_ _%stx153252%_)
               (_%E153255153264%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e153253153260%_)))
               (_%E153254153278%_
                (lambda ()
                  (if (gx#stx-pair? _%e153253153260%_)
                      (let ((_%e153256153268%_
                             (gx#syntax-e _%e153253153260%_)))
                        (let ((_%hd153257153271%_ (##car _%e153256153268%_))
                              (_%tl153258153273%_ (##cdr _%e153256153268%_)))
                          (let ((_%clauses153276%_ _%tl153258153273%_))
                            (cons '%#case-lambda
                                  (gx#stx-map1
                                   gx#core-compile-top-lambda-clause
                                   _%clauses153276%_)))))
                      (_%E153255153264%_)))))
          (_%E153254153278%_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_%stx153187%_ _%form153188%_)
        (let* ((_%e153189153202%_ _%stx153187%_)
               (_%E153191153206%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e153189153202%_)))
               (_%E153190153238%_
                (lambda ()
                  (if (gx#stx-pair? _%e153189153202%_)
                      (let ((_%e153192153210%_
                             (gx#syntax-e _%e153189153202%_)))
                        (let ((_%hd153193153213%_ (##car _%e153192153210%_))
                              (_%tl153194153215%_ (##cdr _%e153192153210%_)))
                          (if (gx#stx-pair? _%tl153194153215%_)
                              (let ((_%e153195153218%_
                                     (gx#syntax-e _%tl153194153215%_)))
                                (let ((_%hd153196153221%_
                                       (##car _%e153195153218%_))
                                      (_%tl153197153223%_
                                       (##cdr _%e153195153218%_)))
                                  (let ((_%hd153226%_ _%hd153196153221%_))
                                    (if (gx#stx-pair? _%tl153197153223%_)
                                        (let ((_%e153198153228%_
                                               (gx#syntax-e
                                                _%tl153197153223%_)))
                                          (let ((_%hd153199153231%_
                                                 (##car _%e153198153228%_))
                                                (_%tl153200153233%_
                                                 (##cdr _%e153198153228%_)))
                                            (let ((_%body153236%_
                                                   _%hd153199153231%_))
                                              (if (gx#stx-null?
                                                   _%tl153200153233%_)
                                                  (cons _%form153188%_
                                                        (cons (gx#stx-map1
                                                               gx#core-compile-top-lambda-clause
                                                               _%hd153226%_)
                                                              (cons (gx#core-compile-top-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%body153236%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E153191153206%_)))))
                                        (_%E153191153206%_)))))
                              (_%E153191153206%_))))
                      (_%E153191153206%_)))))
          (_%E153190153238%_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_%stx153245%_)
        (let ((_%form153247%_ '%#let-values))
          (gx#core-compile-top-let-values%__% _%stx153245%_ _%form153247%_))))
    (define gx#core-compile-top-let-values%
      (lambda _g154070_
        (let ((_g154071_ (##length _g154070_)))
          (cond ((##fx= _g154071_ 1)
                 (apply gx#core-compile-top-let-values%__0 _g154070_))
                ((##fx= _g154071_ 2)
                 (apply gx#core-compile-top-let-values%__% _g154070_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g154070_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_%stx153184%_)
        (gx#core-compile-top-let-values%__% _%stx153184%_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_%stx153182%_)
        (gx#core-compile-top-let-values%__% _%stx153182%_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_%stx153141%_)
        (let* ((_%e153142153152%_ _%stx153141%_)
               (_%E153144153156%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e153142153152%_)))
               (_%E153143153178%_
                (lambda ()
                  (if (gx#stx-pair? _%e153142153152%_)
                      (let ((_%e153145153160%_
                             (gx#syntax-e _%e153142153152%_)))
                        (let ((_%hd153146153163%_ (##car _%e153145153160%_))
                              (_%tl153147153165%_ (##cdr _%e153145153160%_)))
                          (if (gx#stx-pair? _%tl153147153165%_)
                              (let ((_%e153148153168%_
                                     (gx#syntax-e _%tl153147153165%_)))
                                (let ((_%hd153149153171%_
                                       (##car _%e153148153168%_))
                                      (_%tl153150153173%_
                                       (##cdr _%e153148153168%_)))
                                  (let ((_%e153176%_ _%hd153149153171%_))
                                    (if (gx#stx-null? _%tl153150153173%_)
                                        (cons '%#quote
                                              (cons (gx#syntax->datum
                                                     _%e153176%_)
                                                    '()))
                                        (_%E153144153156%_)))))
                              (_%E153144153156%_))))
                      (_%E153144153156%_)))))
          (_%E153143153178%_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_%stx153100%_)
        (let* ((_%e153101153111%_ _%stx153100%_)
               (_%E153103153115%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e153101153111%_)))
               (_%E153102153137%_
                (lambda ()
                  (if (gx#stx-pair? _%e153101153111%_)
                      (let ((_%e153104153119%_
                             (gx#syntax-e _%e153101153111%_)))
                        (let ((_%hd153105153122%_ (##car _%e153104153119%_))
                              (_%tl153106153124%_ (##cdr _%e153104153119%_)))
                          (if (gx#stx-pair? _%tl153106153124%_)
                              (let ((_%e153107153127%_
                                     (gx#syntax-e _%tl153106153124%_)))
                                (let ((_%hd153108153130%_
                                       (##car _%e153107153127%_))
                                      (_%tl153109153132%_
                                       (##cdr _%e153107153127%_)))
                                  (let ((_%e153135%_ _%hd153108153130%_))
                                    (if (gx#stx-null? _%tl153109153132%_)
                                        (cons '%#quote-syntax
                                              (cons (gx#core-quote-syntax__0
                                                     _%e153135%_)
                                                    '()))
                                        (_%E153103153115%_)))))
                              (_%E153103153115%_))))
                      (_%E153103153115%_)))))
          (_%E153102153137%_))))
    (define gx#core-compile-top-call%
      (lambda (_%stx153057%_)
        (let* ((_%e153058153068%_ _%stx153057%_)
               (_%E153060153072%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e153058153068%_)))
               (_%E153059153096%_
                (lambda ()
                  (if (gx#stx-pair? _%e153058153068%_)
                      (let ((_%e153061153076%_
                             (gx#syntax-e _%e153058153068%_)))
                        (let ((_%hd153062153079%_ (##car _%e153061153076%_))
                              (_%tl153063153081%_ (##cdr _%e153061153076%_)))
                          (if (gx#stx-pair? _%tl153063153081%_)
                              (let ((_%e153064153084%_
                                     (gx#syntax-e _%tl153063153081%_)))
                                (let ((_%hd153065153087%_
                                       (##car _%e153064153084%_))
                                      (_%tl153066153089%_
                                       (##cdr _%e153064153084%_)))
                                  (let* ((_%rator153092%_ _%hd153065153087%_)
                                         (_%args153094%_ _%tl153066153089%_))
                                    (cons '%#call
                                          (cons (gx#core-compile-top-syntax
                                                 _%rator153092%_)
                                                (gx#stx-map1
                                                 gx#core-compile-top-syntax
                                                 _%args153094%_))))))
                              (_%E153060153072%_))))
                      (_%E153060153072%_)))))
          (_%E153059153096%_))))
    (define gx#core-compile-top-if%
      (lambda (_%stx152990%_)
        (let* ((_%e152991153007%_ _%stx152990%_)
               (_%E152993153011%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e152991153007%_)))
               (_%E152992153053%_
                (lambda ()
                  (if (gx#stx-pair? _%e152991153007%_)
                      (let ((_%e152994153015%_
                             (gx#syntax-e _%e152991153007%_)))
                        (let ((_%hd152995153018%_ (##car _%e152994153015%_))
                              (_%tl152996153020%_ (##cdr _%e152994153015%_)))
                          (if (gx#stx-pair? _%tl152996153020%_)
                              (let ((_%e152997153023%_
                                     (gx#syntax-e _%tl152996153020%_)))
                                (let ((_%hd152998153026%_
                                       (##car _%e152997153023%_))
                                      (_%tl152999153028%_
                                       (##cdr _%e152997153023%_)))
                                  (let ((_%test153031%_ _%hd152998153026%_))
                                    (if (gx#stx-pair? _%tl152999153028%_)
                                        (let ((_%e153000153033%_
                                               (gx#syntax-e
                                                _%tl152999153028%_)))
                                          (let ((_%hd153001153036%_
                                                 (##car _%e153000153033%_))
                                                (_%tl153002153038%_
                                                 (##cdr _%e153000153033%_)))
                                            (let ((_%K153041%_
                                                   _%hd153001153036%_))
                                              (if (gx#stx-pair?
                                                   _%tl153002153038%_)
                                                  (let ((_%e153003153043%_
                                                         (gx#syntax-e
                                                          _%tl153002153038%_)))
                                                    (let ((_%hd153004153046%_
                                                           (##car _%e153003153043%_))
                                                          (_%tl153005153048%_
                                                           (##cdr _%e153003153043%_)))
                                                      (let ((_%E153051%_
                                                             _%hd153004153046%_))
                                                        (if (gx#stx-null?
                                                             _%tl153005153048%_)
                                                            (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#core-compile-top-syntax _%test153031%_)
                                (cons (gx#core-compile-top-syntax _%K153041%_)
                                      (cons (gx#core-compile-top-syntax
                                             _%E153051%_)
                                            '()))))
                    (_%E152993153011%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E152993153011%_)))))
                                        (_%E152993153011%_)))))
                              (_%E152993153011%_))))
                      (_%E152993153011%_)))))
          (_%E152992153053%_))))
    (define gx#core-compile-top-ref%
      (lambda (_%stx152949%_)
        (let* ((_%e152950152960%_ _%stx152949%_)
               (_%E152952152964%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e152950152960%_)))
               (_%E152951152986%_
                (lambda ()
                  (if (gx#stx-pair? _%e152950152960%_)
                      (let ((_%e152953152968%_
                             (gx#syntax-e _%e152950152960%_)))
                        (let ((_%hd152954152971%_ (##car _%e152953152968%_))
                              (_%tl152955152973%_ (##cdr _%e152953152968%_)))
                          (if (gx#stx-pair? _%tl152955152973%_)
                              (let ((_%e152956152976%_
                                     (gx#syntax-e _%tl152955152973%_)))
                                (let ((_%hd152957152979%_
                                       (##car _%e152956152976%_))
                                      (_%tl152958152981%_
                                       (##cdr _%e152956152976%_)))
                                  (let ((_%id152984%_ _%hd152957152979%_))
                                    (if (gx#stx-null? _%tl152958152981%_)
                                        (if (gx#identifier? _%id152984%_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _%id152984%_)
                                                        '()))
                                            (_%E152952152964%_))
                                        (_%E152952152964%_)))))
                              (_%E152952152964%_))))
                      (_%E152952152964%_)))))
          (_%E152951152986%_))))
    (define gx#core-compile-top-setq%
      (lambda (_%stx152895%_)
        (let* ((_%e152896152909%_ _%stx152895%_)
               (_%E152898152913%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e152896152909%_)))
               (_%E152897152945%_
                (lambda ()
                  (if (gx#stx-pair? _%e152896152909%_)
                      (let ((_%e152899152917%_
                             (gx#syntax-e _%e152896152909%_)))
                        (let ((_%hd152900152920%_ (##car _%e152899152917%_))
                              (_%tl152901152922%_ (##cdr _%e152899152917%_)))
                          (if (gx#stx-pair? _%tl152901152922%_)
                              (let ((_%e152902152925%_
                                     (gx#syntax-e _%tl152901152922%_)))
                                (let ((_%hd152903152928%_
                                       (##car _%e152902152925%_))
                                      (_%tl152904152930%_
                                       (##cdr _%e152902152925%_)))
                                  (let ((_%id152933%_ _%hd152903152928%_))
                                    (if (gx#stx-pair? _%tl152904152930%_)
                                        (let ((_%e152905152935%_
                                               (gx#syntax-e
                                                _%tl152904152930%_)))
                                          (let ((_%hd152906152938%_
                                                 (##car _%e152905152935%_))
                                                (_%tl152907152940%_
                                                 (##cdr _%e152905152935%_)))
                                            (let ((_%expr152943%_
                                                   _%hd152906152938%_))
                                              (if (gx#stx-null?
                                                   _%tl152907152940%_)
                                                  (if (gx#identifier?
                                                       _%id152933%_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%id152933%_)
                          (cons (gx#core-compile-top-syntax _%expr152943%_)
                                '())))
              (_%E152898152913%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E152898152913%_)))))
                                        (_%E152898152913%_)))))
                              (_%E152898152913%_))))
                      (_%E152898152913%_)))))
          (_%E152897152945%_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_%id152889%_)
        (let ((_%$e152891%_ (gx#resolve-identifier__0 _%id152889%_)))
          (if _%$e152891%_
              (##unchecked-structure-ref _%$e152891%_ '1 '#f '#f)
              _%id152889%_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_%hd152887%_)
        (if (gx#identifier? _%hd152887%_)
            (gx#core-compile-top-runtime-ref _%hd152887%_)
            '#f)))))
