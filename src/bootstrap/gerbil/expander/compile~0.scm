(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1770607523)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_%stx184934%_)
        (let* ((_%e184935184942%_ _%stx184934%_)
               (_%E184937184946%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e184935184942%_)))
               (_%E184936184960%_
                (lambda ()
                  (if (gx#stx-pair? _%e184935184942%_)
                      (let ((_%e184938184950%_
                             (gx#syntax-e _%e184935184942%_)))
                        (let ((_%hd184939184953%_ (##car _%e184938184950%_))
                              (_%tl184940184955%_ (##cdr _%e184938184950%_)))
                          (let* ((_%form184958%_ _%hd184939184953%_)
                                 (__self184963
                                  (gx#syntax-local-e__0 _%form184958%_))
                                 (__method184964
                                  (__method-ref
                                   __self184963
                                   'compile-top-syntax)))
                            (if __method184964
                                (__method184964 __self184963 _%stx184934%_)
                                (begin
                                  (error '"Missing method"
                                         __self184963
                                         'compile-top-syntax)
                                  '#!void)))))
                      (_%E184937184946%_)))))
          (_%E184936184960%_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_%self184883%_ _%stx184884%_)
        (let* ((_%self184887%_ _%self184883%_)
               (_%self184896184904%_ _%self184887%_)
               (_%E184898184907%_
                (lambda ()
                  (error '"No clause matching"
                         _%self184896184904%_
                         '((core-expander _ _ K)))
                  '#!void))
               (_%K184899184920%_
                (lambda (_%K184910%_)
                  (let ((_%$e184912%_ (gx#stx-source _%stx184884%_)))
                    (if _%$e184912%_
                        ((lambda (_%g184914184916%_)
                           (gx#stx-wrap-source
                            (_%K184910%_ _%stx184884%_)
                            _%g184914184916%_))
                         _%$e184912%_)
                        (_%K184910%_ _%stx184884%_)))))
               (_%e184900184923%_
                (##unchecked-structure-ref _%self184896184904%_ '1 '#f '#f))
               (_%e184901184926%_
                (##unchecked-structure-ref _%self184896184904%_ '2 '#f '#f))
               (_%e184902184929%_
                (##unchecked-structure-ref _%self184896184904%_ '3 '#f '#f))
               (_%K184932%_ _%e184902184929%_))
          (_%K184899184920%_ _%K184932%_))))
    (__bind-method!__%
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_%stx184757%_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _%stx184757%_)))
    (define gx#core-compile-top-begin%
      (lambda (_%stx184727%_)
        (let* ((_%e184728184735%_ _%stx184727%_)
               (_%E184730184739%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e184728184735%_)))
               (_%E184729184753%_
                (lambda ()
                  (if (gx#stx-pair? _%e184728184735%_)
                      (let ((_%e184731184743%_
                             (gx#syntax-e _%e184728184735%_)))
                        (let ((_%hd184732184746%_ (##car _%e184731184743%_))
                              (_%tl184733184748%_ (##cdr _%e184731184743%_)))
                          (let ((_%body184751%_ _%tl184733184748%_))
                            (cons '%#begin
                                  (gx#stx-map1
                                   gx#core-compile-top-syntax
                                   _%body184751%_)))))
                      (_%E184730184739%_)))))
          (_%E184729184753%_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_%stx184696%_)
        (let* ((_%e184697184704%_ _%stx184696%_)
               (_%E184699184708%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e184697184704%_)))
               (_%E184698184723%_
                (lambda ()
                  (if (gx#stx-pair? _%e184697184704%_)
                      (let ((_%e184700184712%_
                             (gx#syntax-e _%e184697184704%_)))
                        (let ((_%hd184701184715%_ (##car _%e184700184712%_))
                              (_%tl184702184717%_ (##cdr _%e184700184712%_)))
                          (let ((_%body184720%_ _%tl184702184717%_))
                            (cons '%#begin-syntax
                                  (call-with-parameters__1
                                   (lambda ()
                                     (gx#stx-map1
                                      gx#core-compile-top-syntax
                                      _%body184720%_))
                                   gx#current-expander-phi
                                   (##fx+ (gx#current-expander-phi) '1))))))
                      (_%E184699184708%_)))))
          (_%E184698184723%_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_%stx184666%_)
        (let* ((_%e184667184674%_ _%stx184666%_)
               (_%E184669184678%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e184667184674%_)))
               (_%E184668184692%_
                (lambda ()
                  (if (gx#stx-pair? _%e184667184674%_)
                      (let ((_%e184670184682%_
                             (gx#syntax-e _%e184667184674%_)))
                        (let ((_%hd184671184685%_ (##car _%e184670184682%_))
                              (_%tl184672184687%_ (##cdr _%e184670184682%_)))
                          (let ((_%body184690%_ _%tl184672184687%_))
                            (cons '%#begin-foreign _%body184690%_))))
                      (_%E184669184678%_)))))
          (_%E184668184692%_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_%stx184612%_)
        (let* ((_%e184613184626%_ _%stx184612%_)
               (_%E184615184630%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e184613184626%_)))
               (_%E184614184662%_
                (lambda ()
                  (if (gx#stx-pair? _%e184613184626%_)
                      (let ((_%e184616184634%_
                             (gx#syntax-e _%e184613184626%_)))
                        (let ((_%hd184617184637%_ (##car _%e184616184634%_))
                              (_%tl184618184639%_ (##cdr _%e184616184634%_)))
                          (if (gx#stx-pair? _%tl184618184639%_)
                              (let ((_%e184619184642%_
                                     (gx#syntax-e _%tl184618184639%_)))
                                (let ((_%hd184620184645%_
                                       (##car _%e184619184642%_))
                                      (_%tl184621184647%_
                                       (##cdr _%e184619184642%_)))
                                  (let ((_%ann184650%_ _%hd184620184645%_))
                                    (if (gx#stx-pair? _%tl184621184647%_)
                                        (let ((_%e184622184652%_
                                               (gx#syntax-e
                                                _%tl184621184647%_)))
                                          (let ((_%hd184623184655%_
                                                 (##car _%e184622184652%_))
                                                (_%tl184624184657%_
                                                 (##cdr _%e184622184652%_)))
                                            (let ((_%expr184660%_
                                                   _%hd184623184655%_))
                                              (if (gx#stx-null?
                                                   _%tl184624184657%_)
                                                  (gx#core-compile-top-syntax
                                                   _%expr184660%_)
                                                  (_%E184615184630%_)))))
                                        (_%E184615184630%_)))))
                              (_%E184615184630%_))))
                      (_%E184615184630%_)))))
          (_%E184614184662%_))))
    (define gx#core-compile-top-import%
      (lambda (_%stx184582%_)
        (let* ((_%e184583184590%_ _%stx184582%_)
               (_%E184585184594%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e184583184590%_)))
               (_%E184584184608%_
                (lambda ()
                  (if (gx#stx-pair? _%e184583184590%_)
                      (let ((_%e184586184598%_
                             (gx#syntax-e _%e184583184590%_)))
                        (let ((_%hd184587184601%_ (##car _%e184586184598%_))
                              (_%tl184588184603%_ (##cdr _%e184586184598%_)))
                          (let ((_%body184606%_ _%tl184588184603%_))
                            (cons '%#import _%body184606%_))))
                      (_%E184585184594%_)))))
          (_%E184584184608%_))))
    (define gx#core-compile-top-module%
      (lambda (_%stx184539%_)
        (let* ((_%e184540184550%_ _%stx184539%_)
               (_%E184542184554%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e184540184550%_)))
               (_%E184541184578%_
                (lambda ()
                  (if (gx#stx-pair? _%e184540184550%_)
                      (let ((_%e184543184558%_
                             (gx#syntax-e _%e184540184550%_)))
                        (let ((_%hd184544184561%_ (##car _%e184543184558%_))
                              (_%tl184545184563%_ (##cdr _%e184543184558%_)))
                          (if (gx#stx-pair? _%tl184545184563%_)
                              (let ((_%e184546184566%_
                                     (gx#syntax-e _%tl184545184563%_)))
                                (let ((_%hd184547184569%_
                                       (##car _%e184546184566%_))
                                      (_%tl184548184571%_
                                       (##cdr _%e184546184566%_)))
                                  (let* ((_%hd184574%_ _%hd184547184569%_)
                                         (_%body184576%_ _%tl184548184571%_))
                                    (cons '%#module
                                          (cons (##structure-ref
                                                 (gx#syntax-local-e__0
                                                  _%hd184574%_)
                                                 '1
                                                 gx#expander-context::t
                                                 '#f)
                                                (gx#stx-map1
                                                 gx#core-compile-top-syntax
                                                 _%body184576%_))))))
                              (_%E184542184554%_))))
                      (_%E184542184554%_)))))
          (_%E184541184578%_))))
    (define gx#core-compile-top-export%
      (lambda (_%stx184509%_)
        (let* ((_%e184510184517%_ _%stx184509%_)
               (_%E184512184521%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e184510184517%_)))
               (_%E184511184535%_
                (lambda ()
                  (if (gx#stx-pair? _%e184510184517%_)
                      (let ((_%e184513184525%_
                             (gx#syntax-e _%e184510184517%_)))
                        (let ((_%hd184514184528%_ (##car _%e184513184525%_))
                              (_%tl184515184530%_ (##cdr _%e184513184525%_)))
                          (let ((_%body184533%_ _%tl184515184530%_))
                            (cons '%#export _%body184533%_))))
                      (_%E184512184521%_)))))
          (_%E184511184535%_))))
    (define gx#core-compile-top-provide%
      (lambda (_%stx184479%_)
        (let* ((_%e184480184487%_ _%stx184479%_)
               (_%E184482184491%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e184480184487%_)))
               (_%E184481184505%_
                (lambda ()
                  (if (gx#stx-pair? _%e184480184487%_)
                      (let ((_%e184483184495%_
                             (gx#syntax-e _%e184480184487%_)))
                        (let ((_%hd184484184498%_ (##car _%e184483184495%_))
                              (_%tl184485184500%_ (##cdr _%e184483184495%_)))
                          (let ((_%body184503%_ _%tl184485184500%_))
                            (cons '%#provide _%body184503%_))))
                      (_%E184482184491%_)))))
          (_%E184481184505%_))))
    (define gx#core-compile-top-extern%
      (lambda (_%stx184449%_)
        (let* ((_%e184450184457%_ _%stx184449%_)
               (_%E184452184461%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e184450184457%_)))
               (_%E184451184475%_
                (lambda ()
                  (if (gx#stx-pair? _%e184450184457%_)
                      (let ((_%e184453184465%_
                             (gx#syntax-e _%e184450184457%_)))
                        (let ((_%hd184454184468%_ (##car _%e184453184465%_))
                              (_%tl184455184470%_ (##cdr _%e184453184465%_)))
                          (let ((_%body184473%_ _%tl184455184470%_))
                            (cons '%#extern _%body184473%_))))
                      (_%E184452184461%_)))))
          (_%E184451184475%_))))
    (define gx#core-compile-top-define-values%
      (lambda (_%stx184395%_)
        (let* ((_%e184396184409%_ _%stx184395%_)
               (_%E184398184413%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e184396184409%_)))
               (_%E184397184445%_
                (lambda ()
                  (if (gx#stx-pair? _%e184396184409%_)
                      (let ((_%e184399184417%_
                             (gx#syntax-e _%e184396184409%_)))
                        (let ((_%hd184400184420%_ (##car _%e184399184417%_))
                              (_%tl184401184422%_ (##cdr _%e184399184417%_)))
                          (if (gx#stx-pair? _%tl184401184422%_)
                              (let ((_%e184402184425%_
                                     (gx#syntax-e _%tl184401184422%_)))
                                (let ((_%hd184403184428%_
                                       (##car _%e184402184425%_))
                                      (_%tl184404184430%_
                                       (##cdr _%e184402184425%_)))
                                  (let ((_%hd184433%_ _%hd184403184428%_))
                                    (if (gx#stx-pair? _%tl184404184430%_)
                                        (let ((_%e184405184435%_
                                               (gx#syntax-e
                                                _%tl184404184430%_)))
                                          (let ((_%hd184406184438%_
                                                 (##car _%e184405184435%_))
                                                (_%tl184407184440%_
                                                 (##cdr _%e184405184435%_)))
                                            (let ((_%expr184443%_
                                                   _%hd184406184438%_))
                                              (if (gx#stx-null?
                                                   _%tl184407184440%_)
                                                  (cons '%#define-values
                                                        (cons (gx#stx-map1
                                                               gx#core-compile-top-runtime-bind
                                                               _%hd184433%_)
                                                              (cons (gx#core-compile-top-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%expr184443%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E184398184413%_)))))
                                        (_%E184398184413%_)))))
                              (_%E184398184413%_))))
                      (_%E184398184413%_)))))
          (_%E184397184445%_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_%stx184340%_)
        (let* ((_%e184341184354%_ _%stx184340%_)
               (_%E184343184358%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e184341184354%_)))
               (_%E184342184391%_
                (lambda ()
                  (if (gx#stx-pair? _%e184341184354%_)
                      (let ((_%e184344184362%_
                             (gx#syntax-e _%e184341184354%_)))
                        (let ((_%hd184345184365%_ (##car _%e184344184362%_))
                              (_%tl184346184367%_ (##cdr _%e184344184362%_)))
                          (if (gx#stx-pair? _%tl184346184367%_)
                              (let ((_%e184347184370%_
                                     (gx#syntax-e _%tl184346184367%_)))
                                (let ((_%hd184348184373%_
                                       (##car _%e184347184370%_))
                                      (_%tl184349184375%_
                                       (##cdr _%e184347184370%_)))
                                  (let ((_%hd184378%_ _%hd184348184373%_))
                                    (if (gx#stx-pair? _%tl184349184375%_)
                                        (let ((_%e184350184380%_
                                               (gx#syntax-e
                                                _%tl184349184375%_)))
                                          (let ((_%hd184351184383%_
                                                 (##car _%e184350184380%_))
                                                (_%tl184352184385%_
                                                 (##cdr _%e184350184380%_)))
                                            (let ((_%expr184388%_
                                                   _%hd184351184383%_))
                                              (if (gx#stx-null?
                                                   _%tl184352184385%_)
                                                  (cons '%#define-syntax
                                                        (cons _%hd184378%_
                                                              (cons (call-with-parameters__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda ()
                               (gx#core-compile-top-syntax _%expr184388%_))
                             gx#current-expander-phi
                             (##fx+ (gx#current-expander-phi) '1))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E184343184358%_)))))
                                        (_%E184343184358%_)))))
                              (_%E184343184358%_))))
                      (_%E184343184358%_)))))
          (_%E184342184391%_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_%stx184310%_)
        (let* ((_%e184311184318%_ _%stx184310%_)
               (_%E184313184322%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e184311184318%_)))
               (_%E184312184336%_
                (lambda ()
                  (if (gx#stx-pair? _%e184311184318%_)
                      (let ((_%e184314184326%_
                             (gx#syntax-e _%e184311184318%_)))
                        (let ((_%hd184315184329%_ (##car _%e184314184326%_))
                              (_%tl184316184331%_ (##cdr _%e184314184326%_)))
                          (let ((_%body184334%_ _%tl184316184331%_))
                            (cons '%#define-alias _%body184334%_))))
                      (_%E184313184322%_)))))
          (_%E184312184336%_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_%stx184280%_)
        (let* ((_%e184281184288%_ _%stx184280%_)
               (_%E184283184292%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e184281184288%_)))
               (_%E184282184306%_
                (lambda ()
                  (if (gx#stx-pair? _%e184281184288%_)
                      (let ((_%e184284184296%_
                             (gx#syntax-e _%e184281184288%_)))
                        (let ((_%hd184285184299%_ (##car _%e184284184296%_))
                              (_%tl184286184301%_ (##cdr _%e184284184296%_)))
                          (let ((_%body184304%_ _%tl184286184301%_))
                            (cons '%#define-runtime _%body184304%_))))
                      (_%E184283184292%_)))))
          (_%E184282184306%_))))
    (define gx#core-compile-top-declare%
      (lambda (_%stx184250%_)
        (let* ((_%e184251184258%_ _%stx184250%_)
               (_%E184253184262%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e184251184258%_)))
               (_%E184252184276%_
                (lambda ()
                  (if (gx#stx-pair? _%e184251184258%_)
                      (let ((_%e184254184266%_
                             (gx#syntax-e _%e184251184258%_)))
                        (let ((_%hd184255184269%_ (##car _%e184254184266%_))
                              (_%tl184256184271%_ (##cdr _%e184254184266%_)))
                          (let ((_%decls184274%_ _%tl184256184271%_))
                            (cons '%#declare _%decls184274%_))))
                      (_%E184253184262%_)))))
          (_%E184252184276%_))))
    (define gx#core-compile-top-lambda%
      (lambda (_%stx184220%_)
        (let* ((_%e184221184228%_ _%stx184220%_)
               (_%E184223184232%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e184221184228%_)))
               (_%E184222184246%_
                (lambda ()
                  (if (gx#stx-pair? _%e184221184228%_)
                      (let ((_%e184224184236%_
                             (gx#syntax-e _%e184221184228%_)))
                        (let ((_%hd184225184239%_ (##car _%e184224184236%_))
                              (_%tl184226184241%_ (##cdr _%e184224184236%_)))
                          (let ((_%clause184244%_ _%tl184226184241%_))
                            (cons '%#lambda
                                  (gx#core-compile-top-lambda-clause
                                   _%clause184244%_)))))
                      (_%E184223184232%_)))))
          (_%E184222184246%_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_%stx184177%_)
        (let* ((_%e184178184188%_ _%stx184177%_)
               (_%E184180184192%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e184178184188%_)))
               (_%E184179184216%_
                (lambda ()
                  (if (gx#stx-pair? _%e184178184188%_)
                      (let ((_%e184181184196%_
                             (gx#syntax-e _%e184178184188%_)))
                        (let ((_%hd184182184199%_ (##car _%e184181184196%_))
                              (_%tl184183184201%_ (##cdr _%e184181184196%_)))
                          (let ((_%hd184204%_ _%hd184182184199%_))
                            (if (gx#stx-pair? _%tl184183184201%_)
                                (let ((_%e184184184206%_
                                       (gx#syntax-e _%tl184183184201%_)))
                                  (let ((_%hd184185184209%_
                                         (##car _%e184184184206%_))
                                        (_%tl184186184211%_
                                         (##cdr _%e184184184206%_)))
                                    (let ((_%body184214%_ _%hd184185184209%_))
                                      (if (gx#stx-null? _%tl184186184211%_)
                                          (cons (gx#stx-map1
                                                 gx#core-compile-top-runtime-bind
                                                 _%hd184204%_)
                                                (cons (gx#core-compile-top-syntax
                                                       _%body184214%_)
                                                      '()))
                                          (_%E184180184192%_)))))
                                (_%E184180184192%_)))))
                      (_%E184180184192%_)))))
          (_%E184179184216%_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_%stx184147%_)
        (let* ((_%e184148184155%_ _%stx184147%_)
               (_%E184150184159%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e184148184155%_)))
               (_%E184149184173%_
                (lambda ()
                  (if (gx#stx-pair? _%e184148184155%_)
                      (let ((_%e184151184163%_
                             (gx#syntax-e _%e184148184155%_)))
                        (let ((_%hd184152184166%_ (##car _%e184151184163%_))
                              (_%tl184153184168%_ (##cdr _%e184151184163%_)))
                          (let ((_%clauses184171%_ _%tl184153184168%_))
                            (cons '%#case-lambda
                                  (gx#stx-map1
                                   gx#core-compile-top-lambda-clause
                                   _%clauses184171%_)))))
                      (_%E184150184159%_)))))
          (_%E184149184173%_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_%stx184082%_ _%form184083%_)
        (let* ((_%e184084184097%_ _%stx184082%_)
               (_%E184086184101%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e184084184097%_)))
               (_%E184085184133%_
                (lambda ()
                  (if (gx#stx-pair? _%e184084184097%_)
                      (let ((_%e184087184105%_
                             (gx#syntax-e _%e184084184097%_)))
                        (let ((_%hd184088184108%_ (##car _%e184087184105%_))
                              (_%tl184089184110%_ (##cdr _%e184087184105%_)))
                          (if (gx#stx-pair? _%tl184089184110%_)
                              (let ((_%e184090184113%_
                                     (gx#syntax-e _%tl184089184110%_)))
                                (let ((_%hd184091184116%_
                                       (##car _%e184090184113%_))
                                      (_%tl184092184118%_
                                       (##cdr _%e184090184113%_)))
                                  (let ((_%hd184121%_ _%hd184091184116%_))
                                    (if (gx#stx-pair? _%tl184092184118%_)
                                        (let ((_%e184093184123%_
                                               (gx#syntax-e
                                                _%tl184092184118%_)))
                                          (let ((_%hd184094184126%_
                                                 (##car _%e184093184123%_))
                                                (_%tl184095184128%_
                                                 (##cdr _%e184093184123%_)))
                                            (let ((_%body184131%_
                                                   _%hd184094184126%_))
                                              (if (gx#stx-null?
                                                   _%tl184095184128%_)
                                                  (cons _%form184083%_
                                                        (cons (gx#stx-map1
                                                               gx#core-compile-top-lambda-clause
                                                               _%hd184121%_)
                                                              (cons (gx#core-compile-top-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%body184131%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E184086184101%_)))))
                                        (_%E184086184101%_)))))
                              (_%E184086184101%_))))
                      (_%E184086184101%_)))))
          (_%E184085184133%_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_%stx184140%_)
        (let ((_%form184142%_ '%#let-values))
          (gx#core-compile-top-let-values%__% _%stx184140%_ _%form184142%_))))
    (define gx#core-compile-top-let-values%
      (lambda _g184965_
        (let ((_g184966_ (##length _g184965_)))
          (cond ((##fx= _g184966_ 1)
                 (apply gx#core-compile-top-let-values%__0 _g184965_))
                ((##fx= _g184966_ 2)
                 (apply gx#core-compile-top-let-values%__% _g184965_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g184965_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_%stx184079%_)
        (gx#core-compile-top-let-values%__% _%stx184079%_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_%stx184077%_)
        (gx#core-compile-top-let-values%__% _%stx184077%_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_%stx184036%_)
        (let* ((_%e184037184047%_ _%stx184036%_)
               (_%E184039184051%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e184037184047%_)))
               (_%E184038184073%_
                (lambda ()
                  (if (gx#stx-pair? _%e184037184047%_)
                      (let ((_%e184040184055%_
                             (gx#syntax-e _%e184037184047%_)))
                        (let ((_%hd184041184058%_ (##car _%e184040184055%_))
                              (_%tl184042184060%_ (##cdr _%e184040184055%_)))
                          (if (gx#stx-pair? _%tl184042184060%_)
                              (let ((_%e184043184063%_
                                     (gx#syntax-e _%tl184042184060%_)))
                                (let ((_%hd184044184066%_
                                       (##car _%e184043184063%_))
                                      (_%tl184045184068%_
                                       (##cdr _%e184043184063%_)))
                                  (let ((_%e184071%_ _%hd184044184066%_))
                                    (if (gx#stx-null? _%tl184045184068%_)
                                        (cons '%#quote
                                              (cons (gx#syntax->datum
                                                     _%e184071%_)
                                                    '()))
                                        (_%E184039184051%_)))))
                              (_%E184039184051%_))))
                      (_%E184039184051%_)))))
          (_%E184038184073%_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_%stx183995%_)
        (let* ((_%e183996184006%_ _%stx183995%_)
               (_%E183998184010%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e183996184006%_)))
               (_%E183997184032%_
                (lambda ()
                  (if (gx#stx-pair? _%e183996184006%_)
                      (let ((_%e183999184014%_
                             (gx#syntax-e _%e183996184006%_)))
                        (let ((_%hd184000184017%_ (##car _%e183999184014%_))
                              (_%tl184001184019%_ (##cdr _%e183999184014%_)))
                          (if (gx#stx-pair? _%tl184001184019%_)
                              (let ((_%e184002184022%_
                                     (gx#syntax-e _%tl184001184019%_)))
                                (let ((_%hd184003184025%_
                                       (##car _%e184002184022%_))
                                      (_%tl184004184027%_
                                       (##cdr _%e184002184022%_)))
                                  (let ((_%e184030%_ _%hd184003184025%_))
                                    (if (gx#stx-null? _%tl184004184027%_)
                                        (cons '%#quote-syntax
                                              (cons (gx#core-quote-syntax__0
                                                     _%e184030%_)
                                                    '()))
                                        (_%E183998184010%_)))))
                              (_%E183998184010%_))))
                      (_%E183998184010%_)))))
          (_%E183997184032%_))))
    (define gx#core-compile-top-call%
      (lambda (_%stx183952%_)
        (let* ((_%e183953183963%_ _%stx183952%_)
               (_%E183955183967%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e183953183963%_)))
               (_%E183954183991%_
                (lambda ()
                  (if (gx#stx-pair? _%e183953183963%_)
                      (let ((_%e183956183971%_
                             (gx#syntax-e _%e183953183963%_)))
                        (let ((_%hd183957183974%_ (##car _%e183956183971%_))
                              (_%tl183958183976%_ (##cdr _%e183956183971%_)))
                          (if (gx#stx-pair? _%tl183958183976%_)
                              (let ((_%e183959183979%_
                                     (gx#syntax-e _%tl183958183976%_)))
                                (let ((_%hd183960183982%_
                                       (##car _%e183959183979%_))
                                      (_%tl183961183984%_
                                       (##cdr _%e183959183979%_)))
                                  (let* ((_%rator183987%_ _%hd183960183982%_)
                                         (_%args183989%_ _%tl183961183984%_))
                                    (cons '%#call
                                          (cons (gx#core-compile-top-syntax
                                                 _%rator183987%_)
                                                (gx#stx-map1
                                                 gx#core-compile-top-syntax
                                                 _%args183989%_))))))
                              (_%E183955183967%_))))
                      (_%E183955183967%_)))))
          (_%E183954183991%_))))
    (define gx#core-compile-top-if%
      (lambda (_%stx183885%_)
        (let* ((_%e183886183902%_ _%stx183885%_)
               (_%E183888183906%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e183886183902%_)))
               (_%E183887183948%_
                (lambda ()
                  (if (gx#stx-pair? _%e183886183902%_)
                      (let ((_%e183889183910%_
                             (gx#syntax-e _%e183886183902%_)))
                        (let ((_%hd183890183913%_ (##car _%e183889183910%_))
                              (_%tl183891183915%_ (##cdr _%e183889183910%_)))
                          (if (gx#stx-pair? _%tl183891183915%_)
                              (let ((_%e183892183918%_
                                     (gx#syntax-e _%tl183891183915%_)))
                                (let ((_%hd183893183921%_
                                       (##car _%e183892183918%_))
                                      (_%tl183894183923%_
                                       (##cdr _%e183892183918%_)))
                                  (let ((_%test183926%_ _%hd183893183921%_))
                                    (if (gx#stx-pair? _%tl183894183923%_)
                                        (let ((_%e183895183928%_
                                               (gx#syntax-e
                                                _%tl183894183923%_)))
                                          (let ((_%hd183896183931%_
                                                 (##car _%e183895183928%_))
                                                (_%tl183897183933%_
                                                 (##cdr _%e183895183928%_)))
                                            (let ((_%K183936%_
                                                   _%hd183896183931%_))
                                              (if (gx#stx-pair?
                                                   _%tl183897183933%_)
                                                  (let ((_%e183898183938%_
                                                         (gx#syntax-e
                                                          _%tl183897183933%_)))
                                                    (let ((_%hd183899183941%_
                                                           (##car _%e183898183938%_))
                                                          (_%tl183900183943%_
                                                           (##cdr _%e183898183938%_)))
                                                      (let ((_%E183946%_
                                                             _%hd183899183941%_))
                                                        (if (gx#stx-null?
                                                             _%tl183900183943%_)
                                                            (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#core-compile-top-syntax _%test183926%_)
                                (cons (gx#core-compile-top-syntax _%K183936%_)
                                      (cons (gx#core-compile-top-syntax
                                             _%E183946%_)
                                            '()))))
                    (_%E183888183906%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E183888183906%_)))))
                                        (_%E183888183906%_)))))
                              (_%E183888183906%_))))
                      (_%E183888183906%_)))))
          (_%E183887183948%_))))
    (define gx#core-compile-top-ref%
      (lambda (_%stx183844%_)
        (let* ((_%e183845183855%_ _%stx183844%_)
               (_%E183847183859%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e183845183855%_)))
               (_%E183846183881%_
                (lambda ()
                  (if (gx#stx-pair? _%e183845183855%_)
                      (let ((_%e183848183863%_
                             (gx#syntax-e _%e183845183855%_)))
                        (let ((_%hd183849183866%_ (##car _%e183848183863%_))
                              (_%tl183850183868%_ (##cdr _%e183848183863%_)))
                          (if (gx#stx-pair? _%tl183850183868%_)
                              (let ((_%e183851183871%_
                                     (gx#syntax-e _%tl183850183868%_)))
                                (let ((_%hd183852183874%_
                                       (##car _%e183851183871%_))
                                      (_%tl183853183876%_
                                       (##cdr _%e183851183871%_)))
                                  (let ((_%id183879%_ _%hd183852183874%_))
                                    (if (gx#stx-null? _%tl183853183876%_)
                                        (if (gx#identifier? _%id183879%_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _%id183879%_)
                                                        '()))
                                            (_%E183847183859%_))
                                        (_%E183847183859%_)))))
                              (_%E183847183859%_))))
                      (_%E183847183859%_)))))
          (_%E183846183881%_))))
    (define gx#core-compile-top-setq%
      (lambda (_%stx183790%_)
        (let* ((_%e183791183804%_ _%stx183790%_)
               (_%E183793183808%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e183791183804%_)))
               (_%E183792183840%_
                (lambda ()
                  (if (gx#stx-pair? _%e183791183804%_)
                      (let ((_%e183794183812%_
                             (gx#syntax-e _%e183791183804%_)))
                        (let ((_%hd183795183815%_ (##car _%e183794183812%_))
                              (_%tl183796183817%_ (##cdr _%e183794183812%_)))
                          (if (gx#stx-pair? _%tl183796183817%_)
                              (let ((_%e183797183820%_
                                     (gx#syntax-e _%tl183796183817%_)))
                                (let ((_%hd183798183823%_
                                       (##car _%e183797183820%_))
                                      (_%tl183799183825%_
                                       (##cdr _%e183797183820%_)))
                                  (let ((_%id183828%_ _%hd183798183823%_))
                                    (if (gx#stx-pair? _%tl183799183825%_)
                                        (let ((_%e183800183830%_
                                               (gx#syntax-e
                                                _%tl183799183825%_)))
                                          (let ((_%hd183801183833%_
                                                 (##car _%e183800183830%_))
                                                (_%tl183802183835%_
                                                 (##cdr _%e183800183830%_)))
                                            (let ((_%expr183838%_
                                                   _%hd183801183833%_))
                                              (if (gx#stx-null?
                                                   _%tl183802183835%_)
                                                  (if (gx#identifier?
                                                       _%id183828%_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%id183828%_)
                          (cons (gx#core-compile-top-syntax _%expr183838%_)
                                '())))
              (_%E183793183808%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E183793183808%_)))))
                                        (_%E183793183808%_)))))
                              (_%E183793183808%_))))
                      (_%E183793183808%_)))))
          (_%E183792183840%_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_%id183784%_)
        (let ((_%$e183786%_ (gx#resolve-identifier__0 _%id183784%_)))
          (if _%$e183786%_
              (##unchecked-structure-ref _%$e183786%_ '1 '#f '#f)
              _%id183784%_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_%hd183782%_)
        (if (gx#identifier? _%hd183782%_)
            (gx#core-compile-top-runtime-ref _%hd183782%_)
            '#f)))))
