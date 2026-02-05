(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1770325971)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_%stx153902%_)
        (let* ((_%e153903153910%_ _%stx153902%_)
               (_%E153905153914%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e153903153910%_)))
               (_%E153904153928%_
                (lambda ()
                  (if (gx#stx-pair? _%e153903153910%_)
                      (let ((_%e153906153918%_
                             (gx#syntax-e _%e153903153910%_)))
                        (let ((_%hd153907153921%_ (##car _%e153906153918%_))
                              (_%tl153908153923%_ (##cdr _%e153906153918%_)))
                          (let* ((_%form153926%_ _%hd153907153921%_)
                                 (__self153931
                                  (gx#syntax-local-e__0 _%form153926%_))
                                 (__method153932
                                  (__method-ref
                                   __self153931
                                   'compile-top-syntax)))
                            (if __method153932
                                (__method153932 __self153931 _%stx153902%_)
                                (begin
                                  (error '"Missing method"
                                         __self153931
                                         'compile-top-syntax)
                                  '#!void)))))
                      (_%E153905153914%_)))))
          (_%E153904153928%_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_%self153851%_ _%stx153852%_)
        (let* ((_%self153855%_ _%self153851%_)
               (_%self153864153872%_ _%self153855%_)
               (_%E153866153875%_
                (lambda ()
                  (error '"No clause matching"
                         _%self153864153872%_
                         '((core-expander _ _ K)))
                  '#!void))
               (_%K153867153888%_
                (lambda (_%K153878%_)
                  (let ((_%$e153880%_ (gx#stx-source _%stx153852%_)))
                    (if _%$e153880%_
                        ((lambda (_%g153882153884%_)
                           (gx#stx-wrap-source
                            (_%K153878%_ _%stx153852%_)
                            _%g153882153884%_))
                         _%$e153880%_)
                        (_%K153878%_ _%stx153852%_)))))
               (_%e153868153891%_
                (##unchecked-structure-ref _%self153864153872%_ '1 '#f '#f))
               (_%e153869153894%_
                (##unchecked-structure-ref _%self153864153872%_ '2 '#f '#f))
               (_%e153870153897%_
                (##unchecked-structure-ref _%self153864153872%_ '3 '#f '#f))
               (_%K153900%_ _%e153870153897%_))
          (_%K153867153888%_ _%K153900%_))))
    (__bind-method!__%
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_%stx153725%_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _%stx153725%_)))
    (define gx#core-compile-top-begin%
      (lambda (_%stx153695%_)
        (let* ((_%e153696153703%_ _%stx153695%_)
               (_%E153698153707%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e153696153703%_)))
               (_%E153697153721%_
                (lambda ()
                  (if (gx#stx-pair? _%e153696153703%_)
                      (let ((_%e153699153711%_
                             (gx#syntax-e _%e153696153703%_)))
                        (let ((_%hd153700153714%_ (##car _%e153699153711%_))
                              (_%tl153701153716%_ (##cdr _%e153699153711%_)))
                          (let ((_%body153719%_ _%tl153701153716%_))
                            (cons '%#begin
                                  (gx#stx-map1
                                   gx#core-compile-top-syntax
                                   _%body153719%_)))))
                      (_%E153698153707%_)))))
          (_%E153697153721%_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_%stx153664%_)
        (let* ((_%e153665153672%_ _%stx153664%_)
               (_%E153667153676%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e153665153672%_)))
               (_%E153666153691%_
                (lambda ()
                  (if (gx#stx-pair? _%e153665153672%_)
                      (let ((_%e153668153680%_
                             (gx#syntax-e _%e153665153672%_)))
                        (let ((_%hd153669153683%_ (##car _%e153668153680%_))
                              (_%tl153670153685%_ (##cdr _%e153668153680%_)))
                          (let ((_%body153688%_ _%tl153670153685%_))
                            (cons '%#begin-syntax
                                  (call-with-parameters__1
                                   (lambda ()
                                     (gx#stx-map1
                                      gx#core-compile-top-syntax
                                      _%body153688%_))
                                   gx#current-expander-phi
                                   (##fx+ (gx#current-expander-phi) '1))))))
                      (_%E153667153676%_)))))
          (_%E153666153691%_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_%stx153634%_)
        (let* ((_%e153635153642%_ _%stx153634%_)
               (_%E153637153646%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e153635153642%_)))
               (_%E153636153660%_
                (lambda ()
                  (if (gx#stx-pair? _%e153635153642%_)
                      (let ((_%e153638153650%_
                             (gx#syntax-e _%e153635153642%_)))
                        (let ((_%hd153639153653%_ (##car _%e153638153650%_))
                              (_%tl153640153655%_ (##cdr _%e153638153650%_)))
                          (let ((_%body153658%_ _%tl153640153655%_))
                            (cons '%#begin-foreign _%body153658%_))))
                      (_%E153637153646%_)))))
          (_%E153636153660%_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_%stx153580%_)
        (let* ((_%e153581153594%_ _%stx153580%_)
               (_%E153583153598%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e153581153594%_)))
               (_%E153582153630%_
                (lambda ()
                  (if (gx#stx-pair? _%e153581153594%_)
                      (let ((_%e153584153602%_
                             (gx#syntax-e _%e153581153594%_)))
                        (let ((_%hd153585153605%_ (##car _%e153584153602%_))
                              (_%tl153586153607%_ (##cdr _%e153584153602%_)))
                          (if (gx#stx-pair? _%tl153586153607%_)
                              (let ((_%e153587153610%_
                                     (gx#syntax-e _%tl153586153607%_)))
                                (let ((_%hd153588153613%_
                                       (##car _%e153587153610%_))
                                      (_%tl153589153615%_
                                       (##cdr _%e153587153610%_)))
                                  (let ((_%ann153618%_ _%hd153588153613%_))
                                    (if (gx#stx-pair? _%tl153589153615%_)
                                        (let ((_%e153590153620%_
                                               (gx#syntax-e
                                                _%tl153589153615%_)))
                                          (let ((_%hd153591153623%_
                                                 (##car _%e153590153620%_))
                                                (_%tl153592153625%_
                                                 (##cdr _%e153590153620%_)))
                                            (let ((_%expr153628%_
                                                   _%hd153591153623%_))
                                              (if (gx#stx-null?
                                                   _%tl153592153625%_)
                                                  (gx#core-compile-top-syntax
                                                   _%expr153628%_)
                                                  (_%E153583153598%_)))))
                                        (_%E153583153598%_)))))
                              (_%E153583153598%_))))
                      (_%E153583153598%_)))))
          (_%E153582153630%_))))
    (define gx#core-compile-top-import%
      (lambda (_%stx153550%_)
        (let* ((_%e153551153558%_ _%stx153550%_)
               (_%E153553153562%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e153551153558%_)))
               (_%E153552153576%_
                (lambda ()
                  (if (gx#stx-pair? _%e153551153558%_)
                      (let ((_%e153554153566%_
                             (gx#syntax-e _%e153551153558%_)))
                        (let ((_%hd153555153569%_ (##car _%e153554153566%_))
                              (_%tl153556153571%_ (##cdr _%e153554153566%_)))
                          (let ((_%body153574%_ _%tl153556153571%_))
                            (cons '%#import _%body153574%_))))
                      (_%E153553153562%_)))))
          (_%E153552153576%_))))
    (define gx#core-compile-top-module%
      (lambda (_%stx153507%_)
        (let* ((_%e153508153518%_ _%stx153507%_)
               (_%E153510153522%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e153508153518%_)))
               (_%E153509153546%_
                (lambda ()
                  (if (gx#stx-pair? _%e153508153518%_)
                      (let ((_%e153511153526%_
                             (gx#syntax-e _%e153508153518%_)))
                        (let ((_%hd153512153529%_ (##car _%e153511153526%_))
                              (_%tl153513153531%_ (##cdr _%e153511153526%_)))
                          (if (gx#stx-pair? _%tl153513153531%_)
                              (let ((_%e153514153534%_
                                     (gx#syntax-e _%tl153513153531%_)))
                                (let ((_%hd153515153537%_
                                       (##car _%e153514153534%_))
                                      (_%tl153516153539%_
                                       (##cdr _%e153514153534%_)))
                                  (let* ((_%hd153542%_ _%hd153515153537%_)
                                         (_%body153544%_ _%tl153516153539%_))
                                    (cons '%#module
                                          (cons (##structure-ref
                                                 (gx#syntax-local-e__0
                                                  _%hd153542%_)
                                                 '1
                                                 gx#expander-context::t
                                                 '#f)
                                                (gx#stx-map1
                                                 gx#core-compile-top-syntax
                                                 _%body153544%_))))))
                              (_%E153510153522%_))))
                      (_%E153510153522%_)))))
          (_%E153509153546%_))))
    (define gx#core-compile-top-export%
      (lambda (_%stx153477%_)
        (let* ((_%e153478153485%_ _%stx153477%_)
               (_%E153480153489%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e153478153485%_)))
               (_%E153479153503%_
                (lambda ()
                  (if (gx#stx-pair? _%e153478153485%_)
                      (let ((_%e153481153493%_
                             (gx#syntax-e _%e153478153485%_)))
                        (let ((_%hd153482153496%_ (##car _%e153481153493%_))
                              (_%tl153483153498%_ (##cdr _%e153481153493%_)))
                          (let ((_%body153501%_ _%tl153483153498%_))
                            (cons '%#export _%body153501%_))))
                      (_%E153480153489%_)))))
          (_%E153479153503%_))))
    (define gx#core-compile-top-provide%
      (lambda (_%stx153447%_)
        (let* ((_%e153448153455%_ _%stx153447%_)
               (_%E153450153459%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e153448153455%_)))
               (_%E153449153473%_
                (lambda ()
                  (if (gx#stx-pair? _%e153448153455%_)
                      (let ((_%e153451153463%_
                             (gx#syntax-e _%e153448153455%_)))
                        (let ((_%hd153452153466%_ (##car _%e153451153463%_))
                              (_%tl153453153468%_ (##cdr _%e153451153463%_)))
                          (let ((_%body153471%_ _%tl153453153468%_))
                            (cons '%#provide _%body153471%_))))
                      (_%E153450153459%_)))))
          (_%E153449153473%_))))
    (define gx#core-compile-top-extern%
      (lambda (_%stx153417%_)
        (let* ((_%e153418153425%_ _%stx153417%_)
               (_%E153420153429%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e153418153425%_)))
               (_%E153419153443%_
                (lambda ()
                  (if (gx#stx-pair? _%e153418153425%_)
                      (let ((_%e153421153433%_
                             (gx#syntax-e _%e153418153425%_)))
                        (let ((_%hd153422153436%_ (##car _%e153421153433%_))
                              (_%tl153423153438%_ (##cdr _%e153421153433%_)))
                          (let ((_%body153441%_ _%tl153423153438%_))
                            (cons '%#extern _%body153441%_))))
                      (_%E153420153429%_)))))
          (_%E153419153443%_))))
    (define gx#core-compile-top-define-values%
      (lambda (_%stx153363%_)
        (let* ((_%e153364153377%_ _%stx153363%_)
               (_%E153366153381%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e153364153377%_)))
               (_%E153365153413%_
                (lambda ()
                  (if (gx#stx-pair? _%e153364153377%_)
                      (let ((_%e153367153385%_
                             (gx#syntax-e _%e153364153377%_)))
                        (let ((_%hd153368153388%_ (##car _%e153367153385%_))
                              (_%tl153369153390%_ (##cdr _%e153367153385%_)))
                          (if (gx#stx-pair? _%tl153369153390%_)
                              (let ((_%e153370153393%_
                                     (gx#syntax-e _%tl153369153390%_)))
                                (let ((_%hd153371153396%_
                                       (##car _%e153370153393%_))
                                      (_%tl153372153398%_
                                       (##cdr _%e153370153393%_)))
                                  (let ((_%hd153401%_ _%hd153371153396%_))
                                    (if (gx#stx-pair? _%tl153372153398%_)
                                        (let ((_%e153373153403%_
                                               (gx#syntax-e
                                                _%tl153372153398%_)))
                                          (let ((_%hd153374153406%_
                                                 (##car _%e153373153403%_))
                                                (_%tl153375153408%_
                                                 (##cdr _%e153373153403%_)))
                                            (let ((_%expr153411%_
                                                   _%hd153374153406%_))
                                              (if (gx#stx-null?
                                                   _%tl153375153408%_)
                                                  (cons '%#define-values
                                                        (cons (gx#stx-map1
                                                               gx#core-compile-top-runtime-bind
                                                               _%hd153401%_)
                                                              (cons (gx#core-compile-top-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%expr153411%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E153366153381%_)))))
                                        (_%E153366153381%_)))))
                              (_%E153366153381%_))))
                      (_%E153366153381%_)))))
          (_%E153365153413%_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_%stx153308%_)
        (let* ((_%e153309153322%_ _%stx153308%_)
               (_%E153311153326%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e153309153322%_)))
               (_%E153310153359%_
                (lambda ()
                  (if (gx#stx-pair? _%e153309153322%_)
                      (let ((_%e153312153330%_
                             (gx#syntax-e _%e153309153322%_)))
                        (let ((_%hd153313153333%_ (##car _%e153312153330%_))
                              (_%tl153314153335%_ (##cdr _%e153312153330%_)))
                          (if (gx#stx-pair? _%tl153314153335%_)
                              (let ((_%e153315153338%_
                                     (gx#syntax-e _%tl153314153335%_)))
                                (let ((_%hd153316153341%_
                                       (##car _%e153315153338%_))
                                      (_%tl153317153343%_
                                       (##cdr _%e153315153338%_)))
                                  (let ((_%hd153346%_ _%hd153316153341%_))
                                    (if (gx#stx-pair? _%tl153317153343%_)
                                        (let ((_%e153318153348%_
                                               (gx#syntax-e
                                                _%tl153317153343%_)))
                                          (let ((_%hd153319153351%_
                                                 (##car _%e153318153348%_))
                                                (_%tl153320153353%_
                                                 (##cdr _%e153318153348%_)))
                                            (let ((_%expr153356%_
                                                   _%hd153319153351%_))
                                              (if (gx#stx-null?
                                                   _%tl153320153353%_)
                                                  (cons '%#define-syntax
                                                        (cons _%hd153346%_
                                                              (cons (call-with-parameters__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda ()
                               (gx#core-compile-top-syntax _%expr153356%_))
                             gx#current-expander-phi
                             (##fx+ (gx#current-expander-phi) '1))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E153311153326%_)))))
                                        (_%E153311153326%_)))))
                              (_%E153311153326%_))))
                      (_%E153311153326%_)))))
          (_%E153310153359%_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_%stx153278%_)
        (let* ((_%e153279153286%_ _%stx153278%_)
               (_%E153281153290%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e153279153286%_)))
               (_%E153280153304%_
                (lambda ()
                  (if (gx#stx-pair? _%e153279153286%_)
                      (let ((_%e153282153294%_
                             (gx#syntax-e _%e153279153286%_)))
                        (let ((_%hd153283153297%_ (##car _%e153282153294%_))
                              (_%tl153284153299%_ (##cdr _%e153282153294%_)))
                          (let ((_%body153302%_ _%tl153284153299%_))
                            (cons '%#define-alias _%body153302%_))))
                      (_%E153281153290%_)))))
          (_%E153280153304%_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_%stx153248%_)
        (let* ((_%e153249153256%_ _%stx153248%_)
               (_%E153251153260%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e153249153256%_)))
               (_%E153250153274%_
                (lambda ()
                  (if (gx#stx-pair? _%e153249153256%_)
                      (let ((_%e153252153264%_
                             (gx#syntax-e _%e153249153256%_)))
                        (let ((_%hd153253153267%_ (##car _%e153252153264%_))
                              (_%tl153254153269%_ (##cdr _%e153252153264%_)))
                          (let ((_%body153272%_ _%tl153254153269%_))
                            (cons '%#define-runtime _%body153272%_))))
                      (_%E153251153260%_)))))
          (_%E153250153274%_))))
    (define gx#core-compile-top-declare%
      (lambda (_%stx153218%_)
        (let* ((_%e153219153226%_ _%stx153218%_)
               (_%E153221153230%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e153219153226%_)))
               (_%E153220153244%_
                (lambda ()
                  (if (gx#stx-pair? _%e153219153226%_)
                      (let ((_%e153222153234%_
                             (gx#syntax-e _%e153219153226%_)))
                        (let ((_%hd153223153237%_ (##car _%e153222153234%_))
                              (_%tl153224153239%_ (##cdr _%e153222153234%_)))
                          (let ((_%decls153242%_ _%tl153224153239%_))
                            (cons '%#declare _%decls153242%_))))
                      (_%E153221153230%_)))))
          (_%E153220153244%_))))
    (define gx#core-compile-top-lambda%
      (lambda (_%stx153188%_)
        (let* ((_%e153189153196%_ _%stx153188%_)
               (_%E153191153200%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e153189153196%_)))
               (_%E153190153214%_
                (lambda ()
                  (if (gx#stx-pair? _%e153189153196%_)
                      (let ((_%e153192153204%_
                             (gx#syntax-e _%e153189153196%_)))
                        (let ((_%hd153193153207%_ (##car _%e153192153204%_))
                              (_%tl153194153209%_ (##cdr _%e153192153204%_)))
                          (let ((_%clause153212%_ _%tl153194153209%_))
                            (cons '%#lambda
                                  (gx#core-compile-top-lambda-clause
                                   _%clause153212%_)))))
                      (_%E153191153200%_)))))
          (_%E153190153214%_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_%stx153145%_)
        (let* ((_%e153146153156%_ _%stx153145%_)
               (_%E153148153160%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e153146153156%_)))
               (_%E153147153184%_
                (lambda ()
                  (if (gx#stx-pair? _%e153146153156%_)
                      (let ((_%e153149153164%_
                             (gx#syntax-e _%e153146153156%_)))
                        (let ((_%hd153150153167%_ (##car _%e153149153164%_))
                              (_%tl153151153169%_ (##cdr _%e153149153164%_)))
                          (let ((_%hd153172%_ _%hd153150153167%_))
                            (if (gx#stx-pair? _%tl153151153169%_)
                                (let ((_%e153152153174%_
                                       (gx#syntax-e _%tl153151153169%_)))
                                  (let ((_%hd153153153177%_
                                         (##car _%e153152153174%_))
                                        (_%tl153154153179%_
                                         (##cdr _%e153152153174%_)))
                                    (let ((_%body153182%_ _%hd153153153177%_))
                                      (if (gx#stx-null? _%tl153154153179%_)
                                          (cons (gx#stx-map1
                                                 gx#core-compile-top-runtime-bind
                                                 _%hd153172%_)
                                                (cons (gx#core-compile-top-syntax
                                                       _%body153182%_)
                                                      '()))
                                          (_%E153148153160%_)))))
                                (_%E153148153160%_)))))
                      (_%E153148153160%_)))))
          (_%E153147153184%_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_%stx153115%_)
        (let* ((_%e153116153123%_ _%stx153115%_)
               (_%E153118153127%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e153116153123%_)))
               (_%E153117153141%_
                (lambda ()
                  (if (gx#stx-pair? _%e153116153123%_)
                      (let ((_%e153119153131%_
                             (gx#syntax-e _%e153116153123%_)))
                        (let ((_%hd153120153134%_ (##car _%e153119153131%_))
                              (_%tl153121153136%_ (##cdr _%e153119153131%_)))
                          (let ((_%clauses153139%_ _%tl153121153136%_))
                            (cons '%#case-lambda
                                  (gx#stx-map1
                                   gx#core-compile-top-lambda-clause
                                   _%clauses153139%_)))))
                      (_%E153118153127%_)))))
          (_%E153117153141%_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_%stx153050%_ _%form153051%_)
        (let* ((_%e153052153065%_ _%stx153050%_)
               (_%E153054153069%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e153052153065%_)))
               (_%E153053153101%_
                (lambda ()
                  (if (gx#stx-pair? _%e153052153065%_)
                      (let ((_%e153055153073%_
                             (gx#syntax-e _%e153052153065%_)))
                        (let ((_%hd153056153076%_ (##car _%e153055153073%_))
                              (_%tl153057153078%_ (##cdr _%e153055153073%_)))
                          (if (gx#stx-pair? _%tl153057153078%_)
                              (let ((_%e153058153081%_
                                     (gx#syntax-e _%tl153057153078%_)))
                                (let ((_%hd153059153084%_
                                       (##car _%e153058153081%_))
                                      (_%tl153060153086%_
                                       (##cdr _%e153058153081%_)))
                                  (let ((_%hd153089%_ _%hd153059153084%_))
                                    (if (gx#stx-pair? _%tl153060153086%_)
                                        (let ((_%e153061153091%_
                                               (gx#syntax-e
                                                _%tl153060153086%_)))
                                          (let ((_%hd153062153094%_
                                                 (##car _%e153061153091%_))
                                                (_%tl153063153096%_
                                                 (##cdr _%e153061153091%_)))
                                            (let ((_%body153099%_
                                                   _%hd153062153094%_))
                                              (if (gx#stx-null?
                                                   _%tl153063153096%_)
                                                  (cons _%form153051%_
                                                        (cons (gx#stx-map1
                                                               gx#core-compile-top-lambda-clause
                                                               _%hd153089%_)
                                                              (cons (gx#core-compile-top-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%body153099%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E153054153069%_)))))
                                        (_%E153054153069%_)))))
                              (_%E153054153069%_))))
                      (_%E153054153069%_)))))
          (_%E153053153101%_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_%stx153108%_)
        (let ((_%form153110%_ '%#let-values))
          (gx#core-compile-top-let-values%__% _%stx153108%_ _%form153110%_))))
    (define gx#core-compile-top-let-values%
      (lambda _g153933_
        (let ((_g153934_ (##length _g153933_)))
          (cond ((##fx= _g153934_ 1)
                 (apply gx#core-compile-top-let-values%__0 _g153933_))
                ((##fx= _g153934_ 2)
                 (apply gx#core-compile-top-let-values%__% _g153933_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g153933_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_%stx153047%_)
        (gx#core-compile-top-let-values%__% _%stx153047%_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_%stx153045%_)
        (gx#core-compile-top-let-values%__% _%stx153045%_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_%stx153004%_)
        (let* ((_%e153005153015%_ _%stx153004%_)
               (_%E153007153019%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e153005153015%_)))
               (_%E153006153041%_
                (lambda ()
                  (if (gx#stx-pair? _%e153005153015%_)
                      (let ((_%e153008153023%_
                             (gx#syntax-e _%e153005153015%_)))
                        (let ((_%hd153009153026%_ (##car _%e153008153023%_))
                              (_%tl153010153028%_ (##cdr _%e153008153023%_)))
                          (if (gx#stx-pair? _%tl153010153028%_)
                              (let ((_%e153011153031%_
                                     (gx#syntax-e _%tl153010153028%_)))
                                (let ((_%hd153012153034%_
                                       (##car _%e153011153031%_))
                                      (_%tl153013153036%_
                                       (##cdr _%e153011153031%_)))
                                  (let ((_%e153039%_ _%hd153012153034%_))
                                    (if (gx#stx-null? _%tl153013153036%_)
                                        (cons '%#quote
                                              (cons (gx#syntax->datum
                                                     _%e153039%_)
                                                    '()))
                                        (_%E153007153019%_)))))
                              (_%E153007153019%_))))
                      (_%E153007153019%_)))))
          (_%E153006153041%_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_%stx152963%_)
        (let* ((_%e152964152974%_ _%stx152963%_)
               (_%E152966152978%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e152964152974%_)))
               (_%E152965153000%_
                (lambda ()
                  (if (gx#stx-pair? _%e152964152974%_)
                      (let ((_%e152967152982%_
                             (gx#syntax-e _%e152964152974%_)))
                        (let ((_%hd152968152985%_ (##car _%e152967152982%_))
                              (_%tl152969152987%_ (##cdr _%e152967152982%_)))
                          (if (gx#stx-pair? _%tl152969152987%_)
                              (let ((_%e152970152990%_
                                     (gx#syntax-e _%tl152969152987%_)))
                                (let ((_%hd152971152993%_
                                       (##car _%e152970152990%_))
                                      (_%tl152972152995%_
                                       (##cdr _%e152970152990%_)))
                                  (let ((_%e152998%_ _%hd152971152993%_))
                                    (if (gx#stx-null? _%tl152972152995%_)
                                        (cons '%#quote-syntax
                                              (cons (gx#core-quote-syntax__0
                                                     _%e152998%_)
                                                    '()))
                                        (_%E152966152978%_)))))
                              (_%E152966152978%_))))
                      (_%E152966152978%_)))))
          (_%E152965153000%_))))
    (define gx#core-compile-top-call%
      (lambda (_%stx152920%_)
        (let* ((_%e152921152931%_ _%stx152920%_)
               (_%E152923152935%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e152921152931%_)))
               (_%E152922152959%_
                (lambda ()
                  (if (gx#stx-pair? _%e152921152931%_)
                      (let ((_%e152924152939%_
                             (gx#syntax-e _%e152921152931%_)))
                        (let ((_%hd152925152942%_ (##car _%e152924152939%_))
                              (_%tl152926152944%_ (##cdr _%e152924152939%_)))
                          (if (gx#stx-pair? _%tl152926152944%_)
                              (let ((_%e152927152947%_
                                     (gx#syntax-e _%tl152926152944%_)))
                                (let ((_%hd152928152950%_
                                       (##car _%e152927152947%_))
                                      (_%tl152929152952%_
                                       (##cdr _%e152927152947%_)))
                                  (let* ((_%rator152955%_ _%hd152928152950%_)
                                         (_%args152957%_ _%tl152929152952%_))
                                    (cons '%#call
                                          (cons (gx#core-compile-top-syntax
                                                 _%rator152955%_)
                                                (gx#stx-map1
                                                 gx#core-compile-top-syntax
                                                 _%args152957%_))))))
                              (_%E152923152935%_))))
                      (_%E152923152935%_)))))
          (_%E152922152959%_))))
    (define gx#core-compile-top-if%
      (lambda (_%stx152853%_)
        (let* ((_%e152854152870%_ _%stx152853%_)
               (_%E152856152874%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e152854152870%_)))
               (_%E152855152916%_
                (lambda ()
                  (if (gx#stx-pair? _%e152854152870%_)
                      (let ((_%e152857152878%_
                             (gx#syntax-e _%e152854152870%_)))
                        (let ((_%hd152858152881%_ (##car _%e152857152878%_))
                              (_%tl152859152883%_ (##cdr _%e152857152878%_)))
                          (if (gx#stx-pair? _%tl152859152883%_)
                              (let ((_%e152860152886%_
                                     (gx#syntax-e _%tl152859152883%_)))
                                (let ((_%hd152861152889%_
                                       (##car _%e152860152886%_))
                                      (_%tl152862152891%_
                                       (##cdr _%e152860152886%_)))
                                  (let ((_%test152894%_ _%hd152861152889%_))
                                    (if (gx#stx-pair? _%tl152862152891%_)
                                        (let ((_%e152863152896%_
                                               (gx#syntax-e
                                                _%tl152862152891%_)))
                                          (let ((_%hd152864152899%_
                                                 (##car _%e152863152896%_))
                                                (_%tl152865152901%_
                                                 (##cdr _%e152863152896%_)))
                                            (let ((_%K152904%_
                                                   _%hd152864152899%_))
                                              (if (gx#stx-pair?
                                                   _%tl152865152901%_)
                                                  (let ((_%e152866152906%_
                                                         (gx#syntax-e
                                                          _%tl152865152901%_)))
                                                    (let ((_%hd152867152909%_
                                                           (##car _%e152866152906%_))
                                                          (_%tl152868152911%_
                                                           (##cdr _%e152866152906%_)))
                                                      (let ((_%E152914%_
                                                             _%hd152867152909%_))
                                                        (if (gx#stx-null?
                                                             _%tl152868152911%_)
                                                            (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#core-compile-top-syntax _%test152894%_)
                                (cons (gx#core-compile-top-syntax _%K152904%_)
                                      (cons (gx#core-compile-top-syntax
                                             _%E152914%_)
                                            '()))))
                    (_%E152856152874%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E152856152874%_)))))
                                        (_%E152856152874%_)))))
                              (_%E152856152874%_))))
                      (_%E152856152874%_)))))
          (_%E152855152916%_))))
    (define gx#core-compile-top-ref%
      (lambda (_%stx152812%_)
        (let* ((_%e152813152823%_ _%stx152812%_)
               (_%E152815152827%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e152813152823%_)))
               (_%E152814152849%_
                (lambda ()
                  (if (gx#stx-pair? _%e152813152823%_)
                      (let ((_%e152816152831%_
                             (gx#syntax-e _%e152813152823%_)))
                        (let ((_%hd152817152834%_ (##car _%e152816152831%_))
                              (_%tl152818152836%_ (##cdr _%e152816152831%_)))
                          (if (gx#stx-pair? _%tl152818152836%_)
                              (let ((_%e152819152839%_
                                     (gx#syntax-e _%tl152818152836%_)))
                                (let ((_%hd152820152842%_
                                       (##car _%e152819152839%_))
                                      (_%tl152821152844%_
                                       (##cdr _%e152819152839%_)))
                                  (let ((_%id152847%_ _%hd152820152842%_))
                                    (if (gx#stx-null? _%tl152821152844%_)
                                        (if (gx#identifier? _%id152847%_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _%id152847%_)
                                                        '()))
                                            (_%E152815152827%_))
                                        (_%E152815152827%_)))))
                              (_%E152815152827%_))))
                      (_%E152815152827%_)))))
          (_%E152814152849%_))))
    (define gx#core-compile-top-setq%
      (lambda (_%stx152758%_)
        (let* ((_%e152759152772%_ _%stx152758%_)
               (_%E152761152776%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e152759152772%_)))
               (_%E152760152808%_
                (lambda ()
                  (if (gx#stx-pair? _%e152759152772%_)
                      (let ((_%e152762152780%_
                             (gx#syntax-e _%e152759152772%_)))
                        (let ((_%hd152763152783%_ (##car _%e152762152780%_))
                              (_%tl152764152785%_ (##cdr _%e152762152780%_)))
                          (if (gx#stx-pair? _%tl152764152785%_)
                              (let ((_%e152765152788%_
                                     (gx#syntax-e _%tl152764152785%_)))
                                (let ((_%hd152766152791%_
                                       (##car _%e152765152788%_))
                                      (_%tl152767152793%_
                                       (##cdr _%e152765152788%_)))
                                  (let ((_%id152796%_ _%hd152766152791%_))
                                    (if (gx#stx-pair? _%tl152767152793%_)
                                        (let ((_%e152768152798%_
                                               (gx#syntax-e
                                                _%tl152767152793%_)))
                                          (let ((_%hd152769152801%_
                                                 (##car _%e152768152798%_))
                                                (_%tl152770152803%_
                                                 (##cdr _%e152768152798%_)))
                                            (let ((_%expr152806%_
                                                   _%hd152769152801%_))
                                              (if (gx#stx-null?
                                                   _%tl152770152803%_)
                                                  (if (gx#identifier?
                                                       _%id152796%_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%id152796%_)
                          (cons (gx#core-compile-top-syntax _%expr152806%_)
                                '())))
              (_%E152761152776%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E152761152776%_)))))
                                        (_%E152761152776%_)))))
                              (_%E152761152776%_))))
                      (_%E152761152776%_)))))
          (_%E152760152808%_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_%id152752%_)
        (let ((_%$e152754%_ (gx#resolve-identifier__0 _%id152752%_)))
          (if _%$e152754%_
              (##unchecked-structure-ref _%$e152754%_ '1 '#f '#f)
              _%id152752%_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_%hd152750%_)
        (if (gx#identifier? _%hd152750%_)
            (gx#core-compile-top-runtime-ref _%hd152750%_)
            '#f)))))
