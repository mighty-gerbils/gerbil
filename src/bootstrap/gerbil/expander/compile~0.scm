(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1769382895)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_%stx142556%_)
        (let* ((_%e142557142564%_ _%stx142556%_)
               (_%E142559142568%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e142557142564%_)))
               (_%E142558142582%_
                (lambda ()
                  (if (gx#stx-pair? _%e142557142564%_)
                      (let ((_%e142560142572%_
                             (gx#syntax-e _%e142557142564%_)))
                        (let ((_%hd142561142575%_ (##car _%e142560142572%_))
                              (_%tl142562142577%_ (##cdr _%e142560142572%_)))
                          (let* ((_%form142580%_ _%hd142561142575%_)
                                 (__self142585
                                  (gx#syntax-local-e__0 _%form142580%_))
                                 (__method142586
                                  (__method-ref
                                   __self142585
                                   'compile-top-syntax)))
                            (if __method142586
                                (__method142586 __self142585 _%stx142556%_)
                                (begin
                                  (error '"Missing method"
                                         __self142585
                                         'compile-top-syntax)
                                  '#!void)))))
                      (_%E142559142568%_)))))
          (_%E142558142582%_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_%self142505%_ _%stx142506%_)
        (let* ((_%self142509%_ _%self142505%_)
               (_%self142518142526%_ _%self142509%_)
               (_%E142520142529%_
                (lambda ()
                  (error '"No clause matching"
                         _%self142518142526%_
                         '((core-expander _ _ K)))
                  '#!void))
               (_%K142521142542%_
                (lambda (_%K142532%_)
                  (let ((_%$e142534%_ (gx#stx-source _%stx142506%_)))
                    (if _%$e142534%_
                        ((lambda (_%g142536142538%_)
                           (gx#stx-wrap-source
                            (_%K142532%_ _%stx142506%_)
                            _%g142536142538%_))
                         _%$e142534%_)
                        (_%K142532%_ _%stx142506%_)))))
               (_%e142522142545%_
                (##unchecked-structure-ref _%self142518142526%_ '1 '#f '#f))
               (_%e142523142548%_
                (##unchecked-structure-ref _%self142518142526%_ '2 '#f '#f))
               (_%e142524142551%_
                (##unchecked-structure-ref _%self142518142526%_ '3 '#f '#f))
               (_%K142554%_ _%e142524142551%_))
          (_%K142521142542%_ _%K142554%_))))
    (__bind-method!__%
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_%stx142379%_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _%stx142379%_)))
    (define gx#core-compile-top-begin%
      (lambda (_%stx142349%_)
        (let* ((_%e142350142357%_ _%stx142349%_)
               (_%E142352142361%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e142350142357%_)))
               (_%E142351142375%_
                (lambda ()
                  (if (gx#stx-pair? _%e142350142357%_)
                      (let ((_%e142353142365%_
                             (gx#syntax-e _%e142350142357%_)))
                        (let ((_%hd142354142368%_ (##car _%e142353142365%_))
                              (_%tl142355142370%_ (##cdr _%e142353142365%_)))
                          (let ((_%body142373%_ _%tl142355142370%_))
                            (cons '%#begin
                                  (gx#stx-map1
                                   gx#core-compile-top-syntax
                                   _%body142373%_)))))
                      (_%E142352142361%_)))))
          (_%E142351142375%_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_%stx142318%_)
        (let* ((_%e142319142326%_ _%stx142318%_)
               (_%E142321142330%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e142319142326%_)))
               (_%E142320142345%_
                (lambda ()
                  (if (gx#stx-pair? _%e142319142326%_)
                      (let ((_%e142322142334%_
                             (gx#syntax-e _%e142319142326%_)))
                        (let ((_%hd142323142337%_ (##car _%e142322142334%_))
                              (_%tl142324142339%_ (##cdr _%e142322142334%_)))
                          (let ((_%body142342%_ _%tl142324142339%_))
                            (cons '%#begin-syntax
                                  (call-with-parameters__1
                                   (lambda ()
                                     (gx#stx-map1
                                      gx#core-compile-top-syntax
                                      _%body142342%_))
                                   gx#current-expander-phi
                                   (##fx+ (gx#current-expander-phi) '1))))))
                      (_%E142321142330%_)))))
          (_%E142320142345%_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_%stx142288%_)
        (let* ((_%e142289142296%_ _%stx142288%_)
               (_%E142291142300%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e142289142296%_)))
               (_%E142290142314%_
                (lambda ()
                  (if (gx#stx-pair? _%e142289142296%_)
                      (let ((_%e142292142304%_
                             (gx#syntax-e _%e142289142296%_)))
                        (let ((_%hd142293142307%_ (##car _%e142292142304%_))
                              (_%tl142294142309%_ (##cdr _%e142292142304%_)))
                          (let ((_%body142312%_ _%tl142294142309%_))
                            (cons '%#begin-foreign _%body142312%_))))
                      (_%E142291142300%_)))))
          (_%E142290142314%_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_%stx142234%_)
        (let* ((_%e142235142248%_ _%stx142234%_)
               (_%E142237142252%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e142235142248%_)))
               (_%E142236142284%_
                (lambda ()
                  (if (gx#stx-pair? _%e142235142248%_)
                      (let ((_%e142238142256%_
                             (gx#syntax-e _%e142235142248%_)))
                        (let ((_%hd142239142259%_ (##car _%e142238142256%_))
                              (_%tl142240142261%_ (##cdr _%e142238142256%_)))
                          (if (gx#stx-pair? _%tl142240142261%_)
                              (let ((_%e142241142264%_
                                     (gx#syntax-e _%tl142240142261%_)))
                                (let ((_%hd142242142267%_
                                       (##car _%e142241142264%_))
                                      (_%tl142243142269%_
                                       (##cdr _%e142241142264%_)))
                                  (let ((_%ann142272%_ _%hd142242142267%_))
                                    (if (gx#stx-pair? _%tl142243142269%_)
                                        (let ((_%e142244142274%_
                                               (gx#syntax-e
                                                _%tl142243142269%_)))
                                          (let ((_%hd142245142277%_
                                                 (##car _%e142244142274%_))
                                                (_%tl142246142279%_
                                                 (##cdr _%e142244142274%_)))
                                            (let ((_%expr142282%_
                                                   _%hd142245142277%_))
                                              (if (gx#stx-null?
                                                   _%tl142246142279%_)
                                                  (gx#core-compile-top-syntax
                                                   _%expr142282%_)
                                                  (_%E142237142252%_)))))
                                        (_%E142237142252%_)))))
                              (_%E142237142252%_))))
                      (_%E142237142252%_)))))
          (_%E142236142284%_))))
    (define gx#core-compile-top-import%
      (lambda (_%stx142204%_)
        (let* ((_%e142205142212%_ _%stx142204%_)
               (_%E142207142216%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e142205142212%_)))
               (_%E142206142230%_
                (lambda ()
                  (if (gx#stx-pair? _%e142205142212%_)
                      (let ((_%e142208142220%_
                             (gx#syntax-e _%e142205142212%_)))
                        (let ((_%hd142209142223%_ (##car _%e142208142220%_))
                              (_%tl142210142225%_ (##cdr _%e142208142220%_)))
                          (let ((_%body142228%_ _%tl142210142225%_))
                            (cons '%#import _%body142228%_))))
                      (_%E142207142216%_)))))
          (_%E142206142230%_))))
    (define gx#core-compile-top-module%
      (lambda (_%stx142161%_)
        (let* ((_%e142162142172%_ _%stx142161%_)
               (_%E142164142176%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e142162142172%_)))
               (_%E142163142200%_
                (lambda ()
                  (if (gx#stx-pair? _%e142162142172%_)
                      (let ((_%e142165142180%_
                             (gx#syntax-e _%e142162142172%_)))
                        (let ((_%hd142166142183%_ (##car _%e142165142180%_))
                              (_%tl142167142185%_ (##cdr _%e142165142180%_)))
                          (if (gx#stx-pair? _%tl142167142185%_)
                              (let ((_%e142168142188%_
                                     (gx#syntax-e _%tl142167142185%_)))
                                (let ((_%hd142169142191%_
                                       (##car _%e142168142188%_))
                                      (_%tl142170142193%_
                                       (##cdr _%e142168142188%_)))
                                  (let* ((_%hd142196%_ _%hd142169142191%_)
                                         (_%body142198%_ _%tl142170142193%_))
                                    (cons '%#module
                                          (cons (##structure-ref
                                                 (gx#syntax-local-e__0
                                                  _%hd142196%_)
                                                 '1
                                                 gx#expander-context::t
                                                 '#f)
                                                (gx#stx-map1
                                                 gx#core-compile-top-syntax
                                                 _%body142198%_))))))
                              (_%E142164142176%_))))
                      (_%E142164142176%_)))))
          (_%E142163142200%_))))
    (define gx#core-compile-top-export%
      (lambda (_%stx142131%_)
        (let* ((_%e142132142139%_ _%stx142131%_)
               (_%E142134142143%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e142132142139%_)))
               (_%E142133142157%_
                (lambda ()
                  (if (gx#stx-pair? _%e142132142139%_)
                      (let ((_%e142135142147%_
                             (gx#syntax-e _%e142132142139%_)))
                        (let ((_%hd142136142150%_ (##car _%e142135142147%_))
                              (_%tl142137142152%_ (##cdr _%e142135142147%_)))
                          (let ((_%body142155%_ _%tl142137142152%_))
                            (cons '%#export _%body142155%_))))
                      (_%E142134142143%_)))))
          (_%E142133142157%_))))
    (define gx#core-compile-top-provide%
      (lambda (_%stx142101%_)
        (let* ((_%e142102142109%_ _%stx142101%_)
               (_%E142104142113%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e142102142109%_)))
               (_%E142103142127%_
                (lambda ()
                  (if (gx#stx-pair? _%e142102142109%_)
                      (let ((_%e142105142117%_
                             (gx#syntax-e _%e142102142109%_)))
                        (let ((_%hd142106142120%_ (##car _%e142105142117%_))
                              (_%tl142107142122%_ (##cdr _%e142105142117%_)))
                          (let ((_%body142125%_ _%tl142107142122%_))
                            (cons '%#provide _%body142125%_))))
                      (_%E142104142113%_)))))
          (_%E142103142127%_))))
    (define gx#core-compile-top-extern%
      (lambda (_%stx142071%_)
        (let* ((_%e142072142079%_ _%stx142071%_)
               (_%E142074142083%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e142072142079%_)))
               (_%E142073142097%_
                (lambda ()
                  (if (gx#stx-pair? _%e142072142079%_)
                      (let ((_%e142075142087%_
                             (gx#syntax-e _%e142072142079%_)))
                        (let ((_%hd142076142090%_ (##car _%e142075142087%_))
                              (_%tl142077142092%_ (##cdr _%e142075142087%_)))
                          (let ((_%body142095%_ _%tl142077142092%_))
                            (cons '%#extern _%body142095%_))))
                      (_%E142074142083%_)))))
          (_%E142073142097%_))))
    (define gx#core-compile-top-define-values%
      (lambda (_%stx142017%_)
        (let* ((_%e142018142031%_ _%stx142017%_)
               (_%E142020142035%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e142018142031%_)))
               (_%E142019142067%_
                (lambda ()
                  (if (gx#stx-pair? _%e142018142031%_)
                      (let ((_%e142021142039%_
                             (gx#syntax-e _%e142018142031%_)))
                        (let ((_%hd142022142042%_ (##car _%e142021142039%_))
                              (_%tl142023142044%_ (##cdr _%e142021142039%_)))
                          (if (gx#stx-pair? _%tl142023142044%_)
                              (let ((_%e142024142047%_
                                     (gx#syntax-e _%tl142023142044%_)))
                                (let ((_%hd142025142050%_
                                       (##car _%e142024142047%_))
                                      (_%tl142026142052%_
                                       (##cdr _%e142024142047%_)))
                                  (let ((_%hd142055%_ _%hd142025142050%_))
                                    (if (gx#stx-pair? _%tl142026142052%_)
                                        (let ((_%e142027142057%_
                                               (gx#syntax-e
                                                _%tl142026142052%_)))
                                          (let ((_%hd142028142060%_
                                                 (##car _%e142027142057%_))
                                                (_%tl142029142062%_
                                                 (##cdr _%e142027142057%_)))
                                            (let ((_%expr142065%_
                                                   _%hd142028142060%_))
                                              (if (gx#stx-null?
                                                   _%tl142029142062%_)
                                                  (cons '%#define-values
                                                        (cons (gx#stx-map1
                                                               gx#core-compile-top-runtime-bind
                                                               _%hd142055%_)
                                                              (cons (gx#core-compile-top-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%expr142065%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E142020142035%_)))))
                                        (_%E142020142035%_)))))
                              (_%E142020142035%_))))
                      (_%E142020142035%_)))))
          (_%E142019142067%_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_%stx141962%_)
        (let* ((_%e141963141976%_ _%stx141962%_)
               (_%E141965141980%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e141963141976%_)))
               (_%E141964142013%_
                (lambda ()
                  (if (gx#stx-pair? _%e141963141976%_)
                      (let ((_%e141966141984%_
                             (gx#syntax-e _%e141963141976%_)))
                        (let ((_%hd141967141987%_ (##car _%e141966141984%_))
                              (_%tl141968141989%_ (##cdr _%e141966141984%_)))
                          (if (gx#stx-pair? _%tl141968141989%_)
                              (let ((_%e141969141992%_
                                     (gx#syntax-e _%tl141968141989%_)))
                                (let ((_%hd141970141995%_
                                       (##car _%e141969141992%_))
                                      (_%tl141971141997%_
                                       (##cdr _%e141969141992%_)))
                                  (let ((_%hd142000%_ _%hd141970141995%_))
                                    (if (gx#stx-pair? _%tl141971141997%_)
                                        (let ((_%e141972142002%_
                                               (gx#syntax-e
                                                _%tl141971141997%_)))
                                          (let ((_%hd141973142005%_
                                                 (##car _%e141972142002%_))
                                                (_%tl141974142007%_
                                                 (##cdr _%e141972142002%_)))
                                            (let ((_%expr142010%_
                                                   _%hd141973142005%_))
                                              (if (gx#stx-null?
                                                   _%tl141974142007%_)
                                                  (cons '%#define-syntax
                                                        (cons _%hd142000%_
                                                              (cons (call-with-parameters__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda ()
                               (gx#core-compile-top-syntax _%expr142010%_))
                             gx#current-expander-phi
                             (##fx+ (gx#current-expander-phi) '1))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E141965141980%_)))))
                                        (_%E141965141980%_)))))
                              (_%E141965141980%_))))
                      (_%E141965141980%_)))))
          (_%E141964142013%_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_%stx141932%_)
        (let* ((_%e141933141940%_ _%stx141932%_)
               (_%E141935141944%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e141933141940%_)))
               (_%E141934141958%_
                (lambda ()
                  (if (gx#stx-pair? _%e141933141940%_)
                      (let ((_%e141936141948%_
                             (gx#syntax-e _%e141933141940%_)))
                        (let ((_%hd141937141951%_ (##car _%e141936141948%_))
                              (_%tl141938141953%_ (##cdr _%e141936141948%_)))
                          (let ((_%body141956%_ _%tl141938141953%_))
                            (cons '%#define-alias _%body141956%_))))
                      (_%E141935141944%_)))))
          (_%E141934141958%_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_%stx141902%_)
        (let* ((_%e141903141910%_ _%stx141902%_)
               (_%E141905141914%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e141903141910%_)))
               (_%E141904141928%_
                (lambda ()
                  (if (gx#stx-pair? _%e141903141910%_)
                      (let ((_%e141906141918%_
                             (gx#syntax-e _%e141903141910%_)))
                        (let ((_%hd141907141921%_ (##car _%e141906141918%_))
                              (_%tl141908141923%_ (##cdr _%e141906141918%_)))
                          (let ((_%body141926%_ _%tl141908141923%_))
                            (cons '%#define-runtime _%body141926%_))))
                      (_%E141905141914%_)))))
          (_%E141904141928%_))))
    (define gx#core-compile-top-declare%
      (lambda (_%stx141872%_)
        (let* ((_%e141873141880%_ _%stx141872%_)
               (_%E141875141884%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e141873141880%_)))
               (_%E141874141898%_
                (lambda ()
                  (if (gx#stx-pair? _%e141873141880%_)
                      (let ((_%e141876141888%_
                             (gx#syntax-e _%e141873141880%_)))
                        (let ((_%hd141877141891%_ (##car _%e141876141888%_))
                              (_%tl141878141893%_ (##cdr _%e141876141888%_)))
                          (let ((_%decls141896%_ _%tl141878141893%_))
                            (cons '%#declare _%decls141896%_))))
                      (_%E141875141884%_)))))
          (_%E141874141898%_))))
    (define gx#core-compile-top-lambda%
      (lambda (_%stx141842%_)
        (let* ((_%e141843141850%_ _%stx141842%_)
               (_%E141845141854%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e141843141850%_)))
               (_%E141844141868%_
                (lambda ()
                  (if (gx#stx-pair? _%e141843141850%_)
                      (let ((_%e141846141858%_
                             (gx#syntax-e _%e141843141850%_)))
                        (let ((_%hd141847141861%_ (##car _%e141846141858%_))
                              (_%tl141848141863%_ (##cdr _%e141846141858%_)))
                          (let ((_%clause141866%_ _%tl141848141863%_))
                            (cons '%#lambda
                                  (gx#core-compile-top-lambda-clause
                                   _%clause141866%_)))))
                      (_%E141845141854%_)))))
          (_%E141844141868%_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_%stx141799%_)
        (let* ((_%e141800141810%_ _%stx141799%_)
               (_%E141802141814%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e141800141810%_)))
               (_%E141801141838%_
                (lambda ()
                  (if (gx#stx-pair? _%e141800141810%_)
                      (let ((_%e141803141818%_
                             (gx#syntax-e _%e141800141810%_)))
                        (let ((_%hd141804141821%_ (##car _%e141803141818%_))
                              (_%tl141805141823%_ (##cdr _%e141803141818%_)))
                          (let ((_%hd141826%_ _%hd141804141821%_))
                            (if (gx#stx-pair? _%tl141805141823%_)
                                (let ((_%e141806141828%_
                                       (gx#syntax-e _%tl141805141823%_)))
                                  (let ((_%hd141807141831%_
                                         (##car _%e141806141828%_))
                                        (_%tl141808141833%_
                                         (##cdr _%e141806141828%_)))
                                    (let ((_%body141836%_ _%hd141807141831%_))
                                      (if (gx#stx-null? _%tl141808141833%_)
                                          (cons (gx#stx-map1
                                                 gx#core-compile-top-runtime-bind
                                                 _%hd141826%_)
                                                (cons (gx#core-compile-top-syntax
                                                       _%body141836%_)
                                                      '()))
                                          (_%E141802141814%_)))))
                                (_%E141802141814%_)))))
                      (_%E141802141814%_)))))
          (_%E141801141838%_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_%stx141769%_)
        (let* ((_%e141770141777%_ _%stx141769%_)
               (_%E141772141781%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e141770141777%_)))
               (_%E141771141795%_
                (lambda ()
                  (if (gx#stx-pair? _%e141770141777%_)
                      (let ((_%e141773141785%_
                             (gx#syntax-e _%e141770141777%_)))
                        (let ((_%hd141774141788%_ (##car _%e141773141785%_))
                              (_%tl141775141790%_ (##cdr _%e141773141785%_)))
                          (let ((_%clauses141793%_ _%tl141775141790%_))
                            (cons '%#case-lambda
                                  (gx#stx-map1
                                   gx#core-compile-top-lambda-clause
                                   _%clauses141793%_)))))
                      (_%E141772141781%_)))))
          (_%E141771141795%_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_%stx141704%_ _%form141705%_)
        (let* ((_%e141706141719%_ _%stx141704%_)
               (_%E141708141723%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e141706141719%_)))
               (_%E141707141755%_
                (lambda ()
                  (if (gx#stx-pair? _%e141706141719%_)
                      (let ((_%e141709141727%_
                             (gx#syntax-e _%e141706141719%_)))
                        (let ((_%hd141710141730%_ (##car _%e141709141727%_))
                              (_%tl141711141732%_ (##cdr _%e141709141727%_)))
                          (if (gx#stx-pair? _%tl141711141732%_)
                              (let ((_%e141712141735%_
                                     (gx#syntax-e _%tl141711141732%_)))
                                (let ((_%hd141713141738%_
                                       (##car _%e141712141735%_))
                                      (_%tl141714141740%_
                                       (##cdr _%e141712141735%_)))
                                  (let ((_%hd141743%_ _%hd141713141738%_))
                                    (if (gx#stx-pair? _%tl141714141740%_)
                                        (let ((_%e141715141745%_
                                               (gx#syntax-e
                                                _%tl141714141740%_)))
                                          (let ((_%hd141716141748%_
                                                 (##car _%e141715141745%_))
                                                (_%tl141717141750%_
                                                 (##cdr _%e141715141745%_)))
                                            (let ((_%body141753%_
                                                   _%hd141716141748%_))
                                              (if (gx#stx-null?
                                                   _%tl141717141750%_)
                                                  (cons _%form141705%_
                                                        (cons (gx#stx-map1
                                                               gx#core-compile-top-lambda-clause
                                                               _%hd141743%_)
                                                              (cons (gx#core-compile-top-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%body141753%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E141708141723%_)))))
                                        (_%E141708141723%_)))))
                              (_%E141708141723%_))))
                      (_%E141708141723%_)))))
          (_%E141707141755%_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_%stx141762%_)
        (let ((_%form141764%_ '%#let-values))
          (gx#core-compile-top-let-values%__% _%stx141762%_ _%form141764%_))))
    (define gx#core-compile-top-let-values%
      (lambda _g142587_
        (let ((_g142588_ (##length _g142587_)))
          (cond ((##fx= _g142588_ 1)
                 (apply gx#core-compile-top-let-values%__0 _g142587_))
                ((##fx= _g142588_ 2)
                 (apply gx#core-compile-top-let-values%__% _g142587_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g142587_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_%stx141701%_)
        (gx#core-compile-top-let-values%__% _%stx141701%_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_%stx141699%_)
        (gx#core-compile-top-let-values%__% _%stx141699%_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_%stx141658%_)
        (let* ((_%e141659141669%_ _%stx141658%_)
               (_%E141661141673%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e141659141669%_)))
               (_%E141660141695%_
                (lambda ()
                  (if (gx#stx-pair? _%e141659141669%_)
                      (let ((_%e141662141677%_
                             (gx#syntax-e _%e141659141669%_)))
                        (let ((_%hd141663141680%_ (##car _%e141662141677%_))
                              (_%tl141664141682%_ (##cdr _%e141662141677%_)))
                          (if (gx#stx-pair? _%tl141664141682%_)
                              (let ((_%e141665141685%_
                                     (gx#syntax-e _%tl141664141682%_)))
                                (let ((_%hd141666141688%_
                                       (##car _%e141665141685%_))
                                      (_%tl141667141690%_
                                       (##cdr _%e141665141685%_)))
                                  (let ((_%e141693%_ _%hd141666141688%_))
                                    (if (gx#stx-null? _%tl141667141690%_)
                                        (cons '%#quote
                                              (cons (gx#syntax->datum
                                                     _%e141693%_)
                                                    '()))
                                        (_%E141661141673%_)))))
                              (_%E141661141673%_))))
                      (_%E141661141673%_)))))
          (_%E141660141695%_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_%stx141617%_)
        (let* ((_%e141618141628%_ _%stx141617%_)
               (_%E141620141632%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e141618141628%_)))
               (_%E141619141654%_
                (lambda ()
                  (if (gx#stx-pair? _%e141618141628%_)
                      (let ((_%e141621141636%_
                             (gx#syntax-e _%e141618141628%_)))
                        (let ((_%hd141622141639%_ (##car _%e141621141636%_))
                              (_%tl141623141641%_ (##cdr _%e141621141636%_)))
                          (if (gx#stx-pair? _%tl141623141641%_)
                              (let ((_%e141624141644%_
                                     (gx#syntax-e _%tl141623141641%_)))
                                (let ((_%hd141625141647%_
                                       (##car _%e141624141644%_))
                                      (_%tl141626141649%_
                                       (##cdr _%e141624141644%_)))
                                  (let ((_%e141652%_ _%hd141625141647%_))
                                    (if (gx#stx-null? _%tl141626141649%_)
                                        (cons '%#quote-syntax
                                              (cons (gx#core-quote-syntax__0
                                                     _%e141652%_)
                                                    '()))
                                        (_%E141620141632%_)))))
                              (_%E141620141632%_))))
                      (_%E141620141632%_)))))
          (_%E141619141654%_))))
    (define gx#core-compile-top-call%
      (lambda (_%stx141574%_)
        (let* ((_%e141575141585%_ _%stx141574%_)
               (_%E141577141589%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e141575141585%_)))
               (_%E141576141613%_
                (lambda ()
                  (if (gx#stx-pair? _%e141575141585%_)
                      (let ((_%e141578141593%_
                             (gx#syntax-e _%e141575141585%_)))
                        (let ((_%hd141579141596%_ (##car _%e141578141593%_))
                              (_%tl141580141598%_ (##cdr _%e141578141593%_)))
                          (if (gx#stx-pair? _%tl141580141598%_)
                              (let ((_%e141581141601%_
                                     (gx#syntax-e _%tl141580141598%_)))
                                (let ((_%hd141582141604%_
                                       (##car _%e141581141601%_))
                                      (_%tl141583141606%_
                                       (##cdr _%e141581141601%_)))
                                  (let* ((_%rator141609%_ _%hd141582141604%_)
                                         (_%args141611%_ _%tl141583141606%_))
                                    (cons '%#call
                                          (cons (gx#core-compile-top-syntax
                                                 _%rator141609%_)
                                                (gx#stx-map1
                                                 gx#core-compile-top-syntax
                                                 _%args141611%_))))))
                              (_%E141577141589%_))))
                      (_%E141577141589%_)))))
          (_%E141576141613%_))))
    (define gx#core-compile-top-if%
      (lambda (_%stx141507%_)
        (let* ((_%e141508141524%_ _%stx141507%_)
               (_%E141510141528%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e141508141524%_)))
               (_%E141509141570%_
                (lambda ()
                  (if (gx#stx-pair? _%e141508141524%_)
                      (let ((_%e141511141532%_
                             (gx#syntax-e _%e141508141524%_)))
                        (let ((_%hd141512141535%_ (##car _%e141511141532%_))
                              (_%tl141513141537%_ (##cdr _%e141511141532%_)))
                          (if (gx#stx-pair? _%tl141513141537%_)
                              (let ((_%e141514141540%_
                                     (gx#syntax-e _%tl141513141537%_)))
                                (let ((_%hd141515141543%_
                                       (##car _%e141514141540%_))
                                      (_%tl141516141545%_
                                       (##cdr _%e141514141540%_)))
                                  (let ((_%test141548%_ _%hd141515141543%_))
                                    (if (gx#stx-pair? _%tl141516141545%_)
                                        (let ((_%e141517141550%_
                                               (gx#syntax-e
                                                _%tl141516141545%_)))
                                          (let ((_%hd141518141553%_
                                                 (##car _%e141517141550%_))
                                                (_%tl141519141555%_
                                                 (##cdr _%e141517141550%_)))
                                            (let ((_%K141558%_
                                                   _%hd141518141553%_))
                                              (if (gx#stx-pair?
                                                   _%tl141519141555%_)
                                                  (let ((_%e141520141560%_
                                                         (gx#syntax-e
                                                          _%tl141519141555%_)))
                                                    (let ((_%hd141521141563%_
                                                           (##car _%e141520141560%_))
                                                          (_%tl141522141565%_
                                                           (##cdr _%e141520141560%_)))
                                                      (let ((_%E141568%_
                                                             _%hd141521141563%_))
                                                        (if (gx#stx-null?
                                                             _%tl141522141565%_)
                                                            (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#core-compile-top-syntax _%test141548%_)
                                (cons (gx#core-compile-top-syntax _%K141558%_)
                                      (cons (gx#core-compile-top-syntax
                                             _%E141568%_)
                                            '()))))
                    (_%E141510141528%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E141510141528%_)))))
                                        (_%E141510141528%_)))))
                              (_%E141510141528%_))))
                      (_%E141510141528%_)))))
          (_%E141509141570%_))))
    (define gx#core-compile-top-ref%
      (lambda (_%stx141466%_)
        (let* ((_%e141467141477%_ _%stx141466%_)
               (_%E141469141481%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e141467141477%_)))
               (_%E141468141503%_
                (lambda ()
                  (if (gx#stx-pair? _%e141467141477%_)
                      (let ((_%e141470141485%_
                             (gx#syntax-e _%e141467141477%_)))
                        (let ((_%hd141471141488%_ (##car _%e141470141485%_))
                              (_%tl141472141490%_ (##cdr _%e141470141485%_)))
                          (if (gx#stx-pair? _%tl141472141490%_)
                              (let ((_%e141473141493%_
                                     (gx#syntax-e _%tl141472141490%_)))
                                (let ((_%hd141474141496%_
                                       (##car _%e141473141493%_))
                                      (_%tl141475141498%_
                                       (##cdr _%e141473141493%_)))
                                  (let ((_%id141501%_ _%hd141474141496%_))
                                    (if (gx#stx-null? _%tl141475141498%_)
                                        (if (gx#identifier? _%id141501%_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _%id141501%_)
                                                        '()))
                                            (_%E141469141481%_))
                                        (_%E141469141481%_)))))
                              (_%E141469141481%_))))
                      (_%E141469141481%_)))))
          (_%E141468141503%_))))
    (define gx#core-compile-top-setq%
      (lambda (_%stx141412%_)
        (let* ((_%e141413141426%_ _%stx141412%_)
               (_%E141415141430%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e141413141426%_)))
               (_%E141414141462%_
                (lambda ()
                  (if (gx#stx-pair? _%e141413141426%_)
                      (let ((_%e141416141434%_
                             (gx#syntax-e _%e141413141426%_)))
                        (let ((_%hd141417141437%_ (##car _%e141416141434%_))
                              (_%tl141418141439%_ (##cdr _%e141416141434%_)))
                          (if (gx#stx-pair? _%tl141418141439%_)
                              (let ((_%e141419141442%_
                                     (gx#syntax-e _%tl141418141439%_)))
                                (let ((_%hd141420141445%_
                                       (##car _%e141419141442%_))
                                      (_%tl141421141447%_
                                       (##cdr _%e141419141442%_)))
                                  (let ((_%id141450%_ _%hd141420141445%_))
                                    (if (gx#stx-pair? _%tl141421141447%_)
                                        (let ((_%e141422141452%_
                                               (gx#syntax-e
                                                _%tl141421141447%_)))
                                          (let ((_%hd141423141455%_
                                                 (##car _%e141422141452%_))
                                                (_%tl141424141457%_
                                                 (##cdr _%e141422141452%_)))
                                            (let ((_%expr141460%_
                                                   _%hd141423141455%_))
                                              (if (gx#stx-null?
                                                   _%tl141424141457%_)
                                                  (if (gx#identifier?
                                                       _%id141450%_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%id141450%_)
                          (cons (gx#core-compile-top-syntax _%expr141460%_)
                                '())))
              (_%E141415141430%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E141415141430%_)))))
                                        (_%E141415141430%_)))))
                              (_%E141415141430%_))))
                      (_%E141415141430%_)))))
          (_%E141414141462%_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_%id141406%_)
        (let ((_%$e141408%_ (gx#resolve-identifier__0 _%id141406%_)))
          (if _%$e141408%_
              (##unchecked-structure-ref _%$e141408%_ '1 '#f '#f)
              _%id141406%_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_%hd141404%_)
        (if (gx#identifier? _%hd141404%_)
            (gx#core-compile-top-runtime-ref _%hd141404%_)
            '#f)))))
