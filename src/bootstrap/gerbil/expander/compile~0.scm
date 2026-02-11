(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1770752337)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_%stx184941%_)
        (let* ((_%e184942184949%_ _%stx184941%_)
               (_%E184944184953%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e184942184949%_)))
               (_%E184943184967%_
                (lambda ()
                  (if (gx#stx-pair? _%e184942184949%_)
                      (let ((_%e184945184957%_
                             (gx#syntax-e _%e184942184949%_)))
                        (let ((_%hd184946184960%_ (##car _%e184945184957%_))
                              (_%tl184947184962%_ (##cdr _%e184945184957%_)))
                          (let* ((_%form184965%_ _%hd184946184960%_)
                                 (__self184970
                                  (gx#syntax-local-e__0 _%form184965%_))
                                 (__method184971
                                  (__method-ref
                                   __self184970
                                   'compile-top-syntax)))
                            (if __method184971
                                (__method184971 __self184970 _%stx184941%_)
                                (begin
                                  (error '"Missing method"
                                         __self184970
                                         'compile-top-syntax)
                                  '#!void)))))
                      (_%E184944184953%_)))))
          (_%E184943184967%_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_%self184890%_ _%stx184891%_)
        (let* ((_%self184894%_ _%self184890%_)
               (_%self184903184911%_ _%self184894%_)
               (_%E184905184914%_
                (lambda ()
                  (error '"No clause matching"
                         _%self184903184911%_
                         '((core-expander _ _ K)))
                  '#!void))
               (_%K184906184927%_
                (lambda (_%K184917%_)
                  (let ((_%$e184919%_ (gx#stx-source _%stx184891%_)))
                    (if _%$e184919%_
                        ((lambda (_%g184921184923%_)
                           (gx#stx-wrap-source
                            (_%K184917%_ _%stx184891%_)
                            _%g184921184923%_))
                         _%$e184919%_)
                        (_%K184917%_ _%stx184891%_)))))
               (_%e184907184930%_
                (##unchecked-structure-ref _%self184903184911%_ '1 '#f '#f))
               (_%e184908184933%_
                (##unchecked-structure-ref _%self184903184911%_ '2 '#f '#f))
               (_%e184909184936%_
                (##unchecked-structure-ref _%self184903184911%_ '3 '#f '#f))
               (_%K184939%_ _%e184909184936%_))
          (_%K184906184927%_ _%K184939%_))))
    (__bind-method!__%
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_%stx184764%_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _%stx184764%_)))
    (define gx#core-compile-top-begin%
      (lambda (_%stx184734%_)
        (let* ((_%e184735184742%_ _%stx184734%_)
               (_%E184737184746%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e184735184742%_)))
               (_%E184736184760%_
                (lambda ()
                  (if (gx#stx-pair? _%e184735184742%_)
                      (let ((_%e184738184750%_
                             (gx#syntax-e _%e184735184742%_)))
                        (let ((_%hd184739184753%_ (##car _%e184738184750%_))
                              (_%tl184740184755%_ (##cdr _%e184738184750%_)))
                          (let ((_%body184758%_ _%tl184740184755%_))
                            (cons '%#begin
                                  (gx#stx-map1
                                   gx#core-compile-top-syntax
                                   _%body184758%_)))))
                      (_%E184737184746%_)))))
          (_%E184736184760%_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_%stx184703%_)
        (let* ((_%e184704184711%_ _%stx184703%_)
               (_%E184706184715%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e184704184711%_)))
               (_%E184705184730%_
                (lambda ()
                  (if (gx#stx-pair? _%e184704184711%_)
                      (let ((_%e184707184719%_
                             (gx#syntax-e _%e184704184711%_)))
                        (let ((_%hd184708184722%_ (##car _%e184707184719%_))
                              (_%tl184709184724%_ (##cdr _%e184707184719%_)))
                          (let ((_%body184727%_ _%tl184709184724%_))
                            (cons '%#begin-syntax
                                  (call-with-parameters__1
                                   (lambda ()
                                     (gx#stx-map1
                                      gx#core-compile-top-syntax
                                      _%body184727%_))
                                   gx#current-expander-phi
                                   (##fx+ (gx#current-expander-phi) '1))))))
                      (_%E184706184715%_)))))
          (_%E184705184730%_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_%stx184673%_)
        (let* ((_%e184674184681%_ _%stx184673%_)
               (_%E184676184685%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e184674184681%_)))
               (_%E184675184699%_
                (lambda ()
                  (if (gx#stx-pair? _%e184674184681%_)
                      (let ((_%e184677184689%_
                             (gx#syntax-e _%e184674184681%_)))
                        (let ((_%hd184678184692%_ (##car _%e184677184689%_))
                              (_%tl184679184694%_ (##cdr _%e184677184689%_)))
                          (let ((_%body184697%_ _%tl184679184694%_))
                            (cons '%#begin-foreign _%body184697%_))))
                      (_%E184676184685%_)))))
          (_%E184675184699%_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_%stx184619%_)
        (let* ((_%e184620184633%_ _%stx184619%_)
               (_%E184622184637%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e184620184633%_)))
               (_%E184621184669%_
                (lambda ()
                  (if (gx#stx-pair? _%e184620184633%_)
                      (let ((_%e184623184641%_
                             (gx#syntax-e _%e184620184633%_)))
                        (let ((_%hd184624184644%_ (##car _%e184623184641%_))
                              (_%tl184625184646%_ (##cdr _%e184623184641%_)))
                          (if (gx#stx-pair? _%tl184625184646%_)
                              (let ((_%e184626184649%_
                                     (gx#syntax-e _%tl184625184646%_)))
                                (let ((_%hd184627184652%_
                                       (##car _%e184626184649%_))
                                      (_%tl184628184654%_
                                       (##cdr _%e184626184649%_)))
                                  (let ((_%ann184657%_ _%hd184627184652%_))
                                    (if (gx#stx-pair? _%tl184628184654%_)
                                        (let ((_%e184629184659%_
                                               (gx#syntax-e
                                                _%tl184628184654%_)))
                                          (let ((_%hd184630184662%_
                                                 (##car _%e184629184659%_))
                                                (_%tl184631184664%_
                                                 (##cdr _%e184629184659%_)))
                                            (let ((_%expr184667%_
                                                   _%hd184630184662%_))
                                              (if (gx#stx-null?
                                                   _%tl184631184664%_)
                                                  (gx#core-compile-top-syntax
                                                   _%expr184667%_)
                                                  (_%E184622184637%_)))))
                                        (_%E184622184637%_)))))
                              (_%E184622184637%_))))
                      (_%E184622184637%_)))))
          (_%E184621184669%_))))
    (define gx#core-compile-top-import%
      (lambda (_%stx184589%_)
        (let* ((_%e184590184597%_ _%stx184589%_)
               (_%E184592184601%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e184590184597%_)))
               (_%E184591184615%_
                (lambda ()
                  (if (gx#stx-pair? _%e184590184597%_)
                      (let ((_%e184593184605%_
                             (gx#syntax-e _%e184590184597%_)))
                        (let ((_%hd184594184608%_ (##car _%e184593184605%_))
                              (_%tl184595184610%_ (##cdr _%e184593184605%_)))
                          (let ((_%body184613%_ _%tl184595184610%_))
                            (cons '%#import _%body184613%_))))
                      (_%E184592184601%_)))))
          (_%E184591184615%_))))
    (define gx#core-compile-top-module%
      (lambda (_%stx184546%_)
        (let* ((_%e184547184557%_ _%stx184546%_)
               (_%E184549184561%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e184547184557%_)))
               (_%E184548184585%_
                (lambda ()
                  (if (gx#stx-pair? _%e184547184557%_)
                      (let ((_%e184550184565%_
                             (gx#syntax-e _%e184547184557%_)))
                        (let ((_%hd184551184568%_ (##car _%e184550184565%_))
                              (_%tl184552184570%_ (##cdr _%e184550184565%_)))
                          (if (gx#stx-pair? _%tl184552184570%_)
                              (let ((_%e184553184573%_
                                     (gx#syntax-e _%tl184552184570%_)))
                                (let ((_%hd184554184576%_
                                       (##car _%e184553184573%_))
                                      (_%tl184555184578%_
                                       (##cdr _%e184553184573%_)))
                                  (let* ((_%hd184581%_ _%hd184554184576%_)
                                         (_%body184583%_ _%tl184555184578%_))
                                    (cons '%#module
                                          (cons (##structure-ref
                                                 (gx#syntax-local-e__0
                                                  _%hd184581%_)
                                                 '1
                                                 gx#expander-context::t
                                                 '#f)
                                                (gx#stx-map1
                                                 gx#core-compile-top-syntax
                                                 _%body184583%_))))))
                              (_%E184549184561%_))))
                      (_%E184549184561%_)))))
          (_%E184548184585%_))))
    (define gx#core-compile-top-export%
      (lambda (_%stx184516%_)
        (let* ((_%e184517184524%_ _%stx184516%_)
               (_%E184519184528%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e184517184524%_)))
               (_%E184518184542%_
                (lambda ()
                  (if (gx#stx-pair? _%e184517184524%_)
                      (let ((_%e184520184532%_
                             (gx#syntax-e _%e184517184524%_)))
                        (let ((_%hd184521184535%_ (##car _%e184520184532%_))
                              (_%tl184522184537%_ (##cdr _%e184520184532%_)))
                          (let ((_%body184540%_ _%tl184522184537%_))
                            (cons '%#export _%body184540%_))))
                      (_%E184519184528%_)))))
          (_%E184518184542%_))))
    (define gx#core-compile-top-provide%
      (lambda (_%stx184486%_)
        (let* ((_%e184487184494%_ _%stx184486%_)
               (_%E184489184498%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e184487184494%_)))
               (_%E184488184512%_
                (lambda ()
                  (if (gx#stx-pair? _%e184487184494%_)
                      (let ((_%e184490184502%_
                             (gx#syntax-e _%e184487184494%_)))
                        (let ((_%hd184491184505%_ (##car _%e184490184502%_))
                              (_%tl184492184507%_ (##cdr _%e184490184502%_)))
                          (let ((_%body184510%_ _%tl184492184507%_))
                            (cons '%#provide _%body184510%_))))
                      (_%E184489184498%_)))))
          (_%E184488184512%_))))
    (define gx#core-compile-top-extern%
      (lambda (_%stx184456%_)
        (let* ((_%e184457184464%_ _%stx184456%_)
               (_%E184459184468%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e184457184464%_)))
               (_%E184458184482%_
                (lambda ()
                  (if (gx#stx-pair? _%e184457184464%_)
                      (let ((_%e184460184472%_
                             (gx#syntax-e _%e184457184464%_)))
                        (let ((_%hd184461184475%_ (##car _%e184460184472%_))
                              (_%tl184462184477%_ (##cdr _%e184460184472%_)))
                          (let ((_%body184480%_ _%tl184462184477%_))
                            (cons '%#extern _%body184480%_))))
                      (_%E184459184468%_)))))
          (_%E184458184482%_))))
    (define gx#core-compile-top-define-values%
      (lambda (_%stx184402%_)
        (let* ((_%e184403184416%_ _%stx184402%_)
               (_%E184405184420%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e184403184416%_)))
               (_%E184404184452%_
                (lambda ()
                  (if (gx#stx-pair? _%e184403184416%_)
                      (let ((_%e184406184424%_
                             (gx#syntax-e _%e184403184416%_)))
                        (let ((_%hd184407184427%_ (##car _%e184406184424%_))
                              (_%tl184408184429%_ (##cdr _%e184406184424%_)))
                          (if (gx#stx-pair? _%tl184408184429%_)
                              (let ((_%e184409184432%_
                                     (gx#syntax-e _%tl184408184429%_)))
                                (let ((_%hd184410184435%_
                                       (##car _%e184409184432%_))
                                      (_%tl184411184437%_
                                       (##cdr _%e184409184432%_)))
                                  (let ((_%hd184440%_ _%hd184410184435%_))
                                    (if (gx#stx-pair? _%tl184411184437%_)
                                        (let ((_%e184412184442%_
                                               (gx#syntax-e
                                                _%tl184411184437%_)))
                                          (let ((_%hd184413184445%_
                                                 (##car _%e184412184442%_))
                                                (_%tl184414184447%_
                                                 (##cdr _%e184412184442%_)))
                                            (let ((_%expr184450%_
                                                   _%hd184413184445%_))
                                              (if (gx#stx-null?
                                                   _%tl184414184447%_)
                                                  (cons '%#define-values
                                                        (cons (gx#stx-map1
                                                               gx#core-compile-top-runtime-bind
                                                               _%hd184440%_)
                                                              (cons (gx#core-compile-top-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%expr184450%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E184405184420%_)))))
                                        (_%E184405184420%_)))))
                              (_%E184405184420%_))))
                      (_%E184405184420%_)))))
          (_%E184404184452%_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_%stx184347%_)
        (let* ((_%e184348184361%_ _%stx184347%_)
               (_%E184350184365%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e184348184361%_)))
               (_%E184349184398%_
                (lambda ()
                  (if (gx#stx-pair? _%e184348184361%_)
                      (let ((_%e184351184369%_
                             (gx#syntax-e _%e184348184361%_)))
                        (let ((_%hd184352184372%_ (##car _%e184351184369%_))
                              (_%tl184353184374%_ (##cdr _%e184351184369%_)))
                          (if (gx#stx-pair? _%tl184353184374%_)
                              (let ((_%e184354184377%_
                                     (gx#syntax-e _%tl184353184374%_)))
                                (let ((_%hd184355184380%_
                                       (##car _%e184354184377%_))
                                      (_%tl184356184382%_
                                       (##cdr _%e184354184377%_)))
                                  (let ((_%hd184385%_ _%hd184355184380%_))
                                    (if (gx#stx-pair? _%tl184356184382%_)
                                        (let ((_%e184357184387%_
                                               (gx#syntax-e
                                                _%tl184356184382%_)))
                                          (let ((_%hd184358184390%_
                                                 (##car _%e184357184387%_))
                                                (_%tl184359184392%_
                                                 (##cdr _%e184357184387%_)))
                                            (let ((_%expr184395%_
                                                   _%hd184358184390%_))
                                              (if (gx#stx-null?
                                                   _%tl184359184392%_)
                                                  (cons '%#define-syntax
                                                        (cons _%hd184385%_
                                                              (cons (call-with-parameters__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda ()
                               (gx#core-compile-top-syntax _%expr184395%_))
                             gx#current-expander-phi
                             (##fx+ (gx#current-expander-phi) '1))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E184350184365%_)))))
                                        (_%E184350184365%_)))))
                              (_%E184350184365%_))))
                      (_%E184350184365%_)))))
          (_%E184349184398%_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_%stx184317%_)
        (let* ((_%e184318184325%_ _%stx184317%_)
               (_%E184320184329%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e184318184325%_)))
               (_%E184319184343%_
                (lambda ()
                  (if (gx#stx-pair? _%e184318184325%_)
                      (let ((_%e184321184333%_
                             (gx#syntax-e _%e184318184325%_)))
                        (let ((_%hd184322184336%_ (##car _%e184321184333%_))
                              (_%tl184323184338%_ (##cdr _%e184321184333%_)))
                          (let ((_%body184341%_ _%tl184323184338%_))
                            (cons '%#define-alias _%body184341%_))))
                      (_%E184320184329%_)))))
          (_%E184319184343%_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_%stx184287%_)
        (let* ((_%e184288184295%_ _%stx184287%_)
               (_%E184290184299%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e184288184295%_)))
               (_%E184289184313%_
                (lambda ()
                  (if (gx#stx-pair? _%e184288184295%_)
                      (let ((_%e184291184303%_
                             (gx#syntax-e _%e184288184295%_)))
                        (let ((_%hd184292184306%_ (##car _%e184291184303%_))
                              (_%tl184293184308%_ (##cdr _%e184291184303%_)))
                          (let ((_%body184311%_ _%tl184293184308%_))
                            (cons '%#define-runtime _%body184311%_))))
                      (_%E184290184299%_)))))
          (_%E184289184313%_))))
    (define gx#core-compile-top-declare%
      (lambda (_%stx184257%_)
        (let* ((_%e184258184265%_ _%stx184257%_)
               (_%E184260184269%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e184258184265%_)))
               (_%E184259184283%_
                (lambda ()
                  (if (gx#stx-pair? _%e184258184265%_)
                      (let ((_%e184261184273%_
                             (gx#syntax-e _%e184258184265%_)))
                        (let ((_%hd184262184276%_ (##car _%e184261184273%_))
                              (_%tl184263184278%_ (##cdr _%e184261184273%_)))
                          (let ((_%decls184281%_ _%tl184263184278%_))
                            (cons '%#declare _%decls184281%_))))
                      (_%E184260184269%_)))))
          (_%E184259184283%_))))
    (define gx#core-compile-top-lambda%
      (lambda (_%stx184227%_)
        (let* ((_%e184228184235%_ _%stx184227%_)
               (_%E184230184239%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e184228184235%_)))
               (_%E184229184253%_
                (lambda ()
                  (if (gx#stx-pair? _%e184228184235%_)
                      (let ((_%e184231184243%_
                             (gx#syntax-e _%e184228184235%_)))
                        (let ((_%hd184232184246%_ (##car _%e184231184243%_))
                              (_%tl184233184248%_ (##cdr _%e184231184243%_)))
                          (let ((_%clause184251%_ _%tl184233184248%_))
                            (cons '%#lambda
                                  (gx#core-compile-top-lambda-clause
                                   _%clause184251%_)))))
                      (_%E184230184239%_)))))
          (_%E184229184253%_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_%stx184184%_)
        (let* ((_%e184185184195%_ _%stx184184%_)
               (_%E184187184199%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e184185184195%_)))
               (_%E184186184223%_
                (lambda ()
                  (if (gx#stx-pair? _%e184185184195%_)
                      (let ((_%e184188184203%_
                             (gx#syntax-e _%e184185184195%_)))
                        (let ((_%hd184189184206%_ (##car _%e184188184203%_))
                              (_%tl184190184208%_ (##cdr _%e184188184203%_)))
                          (let ((_%hd184211%_ _%hd184189184206%_))
                            (if (gx#stx-pair? _%tl184190184208%_)
                                (let ((_%e184191184213%_
                                       (gx#syntax-e _%tl184190184208%_)))
                                  (let ((_%hd184192184216%_
                                         (##car _%e184191184213%_))
                                        (_%tl184193184218%_
                                         (##cdr _%e184191184213%_)))
                                    (let ((_%body184221%_ _%hd184192184216%_))
                                      (if (gx#stx-null? _%tl184193184218%_)
                                          (cons (gx#stx-map1
                                                 gx#core-compile-top-runtime-bind
                                                 _%hd184211%_)
                                                (cons (gx#core-compile-top-syntax
                                                       _%body184221%_)
                                                      '()))
                                          (_%E184187184199%_)))))
                                (_%E184187184199%_)))))
                      (_%E184187184199%_)))))
          (_%E184186184223%_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_%stx184154%_)
        (let* ((_%e184155184162%_ _%stx184154%_)
               (_%E184157184166%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e184155184162%_)))
               (_%E184156184180%_
                (lambda ()
                  (if (gx#stx-pair? _%e184155184162%_)
                      (let ((_%e184158184170%_
                             (gx#syntax-e _%e184155184162%_)))
                        (let ((_%hd184159184173%_ (##car _%e184158184170%_))
                              (_%tl184160184175%_ (##cdr _%e184158184170%_)))
                          (let ((_%clauses184178%_ _%tl184160184175%_))
                            (cons '%#case-lambda
                                  (gx#stx-map1
                                   gx#core-compile-top-lambda-clause
                                   _%clauses184178%_)))))
                      (_%E184157184166%_)))))
          (_%E184156184180%_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_%stx184089%_ _%form184090%_)
        (let* ((_%e184091184104%_ _%stx184089%_)
               (_%E184093184108%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e184091184104%_)))
               (_%E184092184140%_
                (lambda ()
                  (if (gx#stx-pair? _%e184091184104%_)
                      (let ((_%e184094184112%_
                             (gx#syntax-e _%e184091184104%_)))
                        (let ((_%hd184095184115%_ (##car _%e184094184112%_))
                              (_%tl184096184117%_ (##cdr _%e184094184112%_)))
                          (if (gx#stx-pair? _%tl184096184117%_)
                              (let ((_%e184097184120%_
                                     (gx#syntax-e _%tl184096184117%_)))
                                (let ((_%hd184098184123%_
                                       (##car _%e184097184120%_))
                                      (_%tl184099184125%_
                                       (##cdr _%e184097184120%_)))
                                  (let ((_%hd184128%_ _%hd184098184123%_))
                                    (if (gx#stx-pair? _%tl184099184125%_)
                                        (let ((_%e184100184130%_
                                               (gx#syntax-e
                                                _%tl184099184125%_)))
                                          (let ((_%hd184101184133%_
                                                 (##car _%e184100184130%_))
                                                (_%tl184102184135%_
                                                 (##cdr _%e184100184130%_)))
                                            (let ((_%body184138%_
                                                   _%hd184101184133%_))
                                              (if (gx#stx-null?
                                                   _%tl184102184135%_)
                                                  (cons _%form184090%_
                                                        (cons (gx#stx-map1
                                                               gx#core-compile-top-lambda-clause
                                                               _%hd184128%_)
                                                              (cons (gx#core-compile-top-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%body184138%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E184093184108%_)))))
                                        (_%E184093184108%_)))))
                              (_%E184093184108%_))))
                      (_%E184093184108%_)))))
          (_%E184092184140%_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_%stx184147%_)
        (let ((_%form184149%_ '%#let-values))
          (gx#core-compile-top-let-values%__% _%stx184147%_ _%form184149%_))))
    (define gx#core-compile-top-let-values%
      (lambda _g184972_
        (let ((_g184973_ (##length _g184972_)))
          (cond ((##fx= _g184973_ 1)
                 (apply gx#core-compile-top-let-values%__0 _g184972_))
                ((##fx= _g184973_ 2)
                 (apply gx#core-compile-top-let-values%__% _g184972_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g184972_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_%stx184086%_)
        (gx#core-compile-top-let-values%__% _%stx184086%_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_%stx184084%_)
        (gx#core-compile-top-let-values%__% _%stx184084%_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_%stx184043%_)
        (let* ((_%e184044184054%_ _%stx184043%_)
               (_%E184046184058%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e184044184054%_)))
               (_%E184045184080%_
                (lambda ()
                  (if (gx#stx-pair? _%e184044184054%_)
                      (let ((_%e184047184062%_
                             (gx#syntax-e _%e184044184054%_)))
                        (let ((_%hd184048184065%_ (##car _%e184047184062%_))
                              (_%tl184049184067%_ (##cdr _%e184047184062%_)))
                          (if (gx#stx-pair? _%tl184049184067%_)
                              (let ((_%e184050184070%_
                                     (gx#syntax-e _%tl184049184067%_)))
                                (let ((_%hd184051184073%_
                                       (##car _%e184050184070%_))
                                      (_%tl184052184075%_
                                       (##cdr _%e184050184070%_)))
                                  (let ((_%e184078%_ _%hd184051184073%_))
                                    (if (gx#stx-null? _%tl184052184075%_)
                                        (cons '%#quote
                                              (cons (gx#syntax->datum
                                                     _%e184078%_)
                                                    '()))
                                        (_%E184046184058%_)))))
                              (_%E184046184058%_))))
                      (_%E184046184058%_)))))
          (_%E184045184080%_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_%stx184002%_)
        (let* ((_%e184003184013%_ _%stx184002%_)
               (_%E184005184017%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e184003184013%_)))
               (_%E184004184039%_
                (lambda ()
                  (if (gx#stx-pair? _%e184003184013%_)
                      (let ((_%e184006184021%_
                             (gx#syntax-e _%e184003184013%_)))
                        (let ((_%hd184007184024%_ (##car _%e184006184021%_))
                              (_%tl184008184026%_ (##cdr _%e184006184021%_)))
                          (if (gx#stx-pair? _%tl184008184026%_)
                              (let ((_%e184009184029%_
                                     (gx#syntax-e _%tl184008184026%_)))
                                (let ((_%hd184010184032%_
                                       (##car _%e184009184029%_))
                                      (_%tl184011184034%_
                                       (##cdr _%e184009184029%_)))
                                  (let ((_%e184037%_ _%hd184010184032%_))
                                    (if (gx#stx-null? _%tl184011184034%_)
                                        (cons '%#quote-syntax
                                              (cons (gx#core-quote-syntax__0
                                                     _%e184037%_)
                                                    '()))
                                        (_%E184005184017%_)))))
                              (_%E184005184017%_))))
                      (_%E184005184017%_)))))
          (_%E184004184039%_))))
    (define gx#core-compile-top-call%
      (lambda (_%stx183959%_)
        (let* ((_%e183960183970%_ _%stx183959%_)
               (_%E183962183974%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e183960183970%_)))
               (_%E183961183998%_
                (lambda ()
                  (if (gx#stx-pair? _%e183960183970%_)
                      (let ((_%e183963183978%_
                             (gx#syntax-e _%e183960183970%_)))
                        (let ((_%hd183964183981%_ (##car _%e183963183978%_))
                              (_%tl183965183983%_ (##cdr _%e183963183978%_)))
                          (if (gx#stx-pair? _%tl183965183983%_)
                              (let ((_%e183966183986%_
                                     (gx#syntax-e _%tl183965183983%_)))
                                (let ((_%hd183967183989%_
                                       (##car _%e183966183986%_))
                                      (_%tl183968183991%_
                                       (##cdr _%e183966183986%_)))
                                  (let* ((_%rator183994%_ _%hd183967183989%_)
                                         (_%args183996%_ _%tl183968183991%_))
                                    (cons '%#call
                                          (cons (gx#core-compile-top-syntax
                                                 _%rator183994%_)
                                                (gx#stx-map1
                                                 gx#core-compile-top-syntax
                                                 _%args183996%_))))))
                              (_%E183962183974%_))))
                      (_%E183962183974%_)))))
          (_%E183961183998%_))))
    (define gx#core-compile-top-if%
      (lambda (_%stx183892%_)
        (let* ((_%e183893183909%_ _%stx183892%_)
               (_%E183895183913%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e183893183909%_)))
               (_%E183894183955%_
                (lambda ()
                  (if (gx#stx-pair? _%e183893183909%_)
                      (let ((_%e183896183917%_
                             (gx#syntax-e _%e183893183909%_)))
                        (let ((_%hd183897183920%_ (##car _%e183896183917%_))
                              (_%tl183898183922%_ (##cdr _%e183896183917%_)))
                          (if (gx#stx-pair? _%tl183898183922%_)
                              (let ((_%e183899183925%_
                                     (gx#syntax-e _%tl183898183922%_)))
                                (let ((_%hd183900183928%_
                                       (##car _%e183899183925%_))
                                      (_%tl183901183930%_
                                       (##cdr _%e183899183925%_)))
                                  (let ((_%test183933%_ _%hd183900183928%_))
                                    (if (gx#stx-pair? _%tl183901183930%_)
                                        (let ((_%e183902183935%_
                                               (gx#syntax-e
                                                _%tl183901183930%_)))
                                          (let ((_%hd183903183938%_
                                                 (##car _%e183902183935%_))
                                                (_%tl183904183940%_
                                                 (##cdr _%e183902183935%_)))
                                            (let ((_%K183943%_
                                                   _%hd183903183938%_))
                                              (if (gx#stx-pair?
                                                   _%tl183904183940%_)
                                                  (let ((_%e183905183945%_
                                                         (gx#syntax-e
                                                          _%tl183904183940%_)))
                                                    (let ((_%hd183906183948%_
                                                           (##car _%e183905183945%_))
                                                          (_%tl183907183950%_
                                                           (##cdr _%e183905183945%_)))
                                                      (let ((_%E183953%_
                                                             _%hd183906183948%_))
                                                        (if (gx#stx-null?
                                                             _%tl183907183950%_)
                                                            (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#core-compile-top-syntax _%test183933%_)
                                (cons (gx#core-compile-top-syntax _%K183943%_)
                                      (cons (gx#core-compile-top-syntax
                                             _%E183953%_)
                                            '()))))
                    (_%E183895183913%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E183895183913%_)))))
                                        (_%E183895183913%_)))))
                              (_%E183895183913%_))))
                      (_%E183895183913%_)))))
          (_%E183894183955%_))))
    (define gx#core-compile-top-ref%
      (lambda (_%stx183851%_)
        (let* ((_%e183852183862%_ _%stx183851%_)
               (_%E183854183866%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e183852183862%_)))
               (_%E183853183888%_
                (lambda ()
                  (if (gx#stx-pair? _%e183852183862%_)
                      (let ((_%e183855183870%_
                             (gx#syntax-e _%e183852183862%_)))
                        (let ((_%hd183856183873%_ (##car _%e183855183870%_))
                              (_%tl183857183875%_ (##cdr _%e183855183870%_)))
                          (if (gx#stx-pair? _%tl183857183875%_)
                              (let ((_%e183858183878%_
                                     (gx#syntax-e _%tl183857183875%_)))
                                (let ((_%hd183859183881%_
                                       (##car _%e183858183878%_))
                                      (_%tl183860183883%_
                                       (##cdr _%e183858183878%_)))
                                  (let ((_%id183886%_ _%hd183859183881%_))
                                    (if (gx#stx-null? _%tl183860183883%_)
                                        (if (gx#identifier? _%id183886%_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _%id183886%_)
                                                        '()))
                                            (_%E183854183866%_))
                                        (_%E183854183866%_)))))
                              (_%E183854183866%_))))
                      (_%E183854183866%_)))))
          (_%E183853183888%_))))
    (define gx#core-compile-top-setq%
      (lambda (_%stx183797%_)
        (let* ((_%e183798183811%_ _%stx183797%_)
               (_%E183800183815%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e183798183811%_)))
               (_%E183799183847%_
                (lambda ()
                  (if (gx#stx-pair? _%e183798183811%_)
                      (let ((_%e183801183819%_
                             (gx#syntax-e _%e183798183811%_)))
                        (let ((_%hd183802183822%_ (##car _%e183801183819%_))
                              (_%tl183803183824%_ (##cdr _%e183801183819%_)))
                          (if (gx#stx-pair? _%tl183803183824%_)
                              (let ((_%e183804183827%_
                                     (gx#syntax-e _%tl183803183824%_)))
                                (let ((_%hd183805183830%_
                                       (##car _%e183804183827%_))
                                      (_%tl183806183832%_
                                       (##cdr _%e183804183827%_)))
                                  (let ((_%id183835%_ _%hd183805183830%_))
                                    (if (gx#stx-pair? _%tl183806183832%_)
                                        (let ((_%e183807183837%_
                                               (gx#syntax-e
                                                _%tl183806183832%_)))
                                          (let ((_%hd183808183840%_
                                                 (##car _%e183807183837%_))
                                                (_%tl183809183842%_
                                                 (##cdr _%e183807183837%_)))
                                            (let ((_%expr183845%_
                                                   _%hd183808183840%_))
                                              (if (gx#stx-null?
                                                   _%tl183809183842%_)
                                                  (if (gx#identifier?
                                                       _%id183835%_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%id183835%_)
                          (cons (gx#core-compile-top-syntax _%expr183845%_)
                                '())))
              (_%E183800183815%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E183800183815%_)))))
                                        (_%E183800183815%_)))))
                              (_%E183800183815%_))))
                      (_%E183800183815%_)))))
          (_%E183799183847%_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_%id183791%_)
        (let ((_%$e183793%_ (gx#resolve-identifier__0 _%id183791%_)))
          (if _%$e183793%_
              (##unchecked-structure-ref _%$e183793%_ '1 '#f '#f)
              _%id183791%_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_%hd183789%_)
        (if (gx#identifier? _%hd183789%_)
            (gx#core-compile-top-runtime-ref _%hd183789%_)
            '#f)))))
