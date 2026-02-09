(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g168258_|
    (gx#core-deserialize-mark
     '(0
       (arg167073 . _%arg167073167144%_)
       (id . _%id167097%_)
       (arg167072 . _%arg167072167130%_)
       (arg . _%arg167160%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g168259_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g168258_|)))
  (define |[1]#_g168261_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g168262_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g168261_|)))
  (define |[1]#_g168263_|
    (gx#core-deserialize-mark
     '(0
       (id . _%id167231%_)
       (arg . _%arg167294%_)
       (arg167208 . _%arg167208167278%_)
       (arg167207 . _%arg167207167264%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g168264_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g168263_|)))
  (define |[1]#_g168266_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g168267_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g168266_|)))
  (define |[1]#_g168268_|
    (gx#core-deserialize-mark
     '(0
       (arg167341 . _%arg167341167398%_)
       (arg167342 . _%arg167342167412%_)
       (id . _%id167365%_)
       (arg . _%arg167428%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g168269_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g168268_|)))
  (define |[1]#_g168271_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g168272_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g168271_|)))
  (define |[1]#_g168273_|
    (gx#core-deserialize-mark
     '(0
       (id . _%id167499%_)
       (arg . _%arg167562%_)
       (arg167475 . _%arg167475167532%_)
       (arg167476 . _%arg167476167546%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g168274_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g168273_|)))
  (define |[1]#_g168276_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g168277_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g168276_|)))
  (begin
    (define |[:0:]#@set-load-path!|
      (lambda (_%$stx167054%_)
        (let* ((_%__stx168149168150%_ _%$stx167054%_)
               (_%g167059167080%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx168149168150%_))))
          (let ((_%__kont168152168153%_
                 (lambda (_%g167061167146%_)
                   (cons (gx#datum->syntax
                          |[1]#_g168259_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'paths) '())
                                     (cons (let ((__tmp168260
                                                  (lambda (_%g167161167164%_
                                                           _%g167162167167%_)
                                                    (cons _%g167161167164%_
                                                          _%g167162167167%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp168260
                                              '()
                                              _%g167061167146%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g168262_|
                                            'using
                                            '#f
                                            '#f)
                                           (cons (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'paths)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            ':)
                           (cons (gx#datum->syntax '#f ':list) '())))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '__set-load-path!)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'paths)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont168156168157%_
                 (lambda (_%g167074167087%_)
                   (gx#datum->syntax '#f 'set-load-path!))))
            (let* ((_%g167058167099%_
                    (lambda ()
                      (let ((_%g167074167087%_ _%__stx168149168150%_))
                        (if (gx#identifier? _%g167074167087%_)
                            (_%__kont168156168157%_ _%g167074167087%_)
                            (let ()
                              (declare (not safe))
                              (_%g167059167080%_))))))
                   (_%__match168172168173%_
                    (lambda (_%e167062167106%_
                             _%hd167063167110%_
                             _%tl167064167113%_
                             _%__splice168154168155%_
                             _%target167065167116%_
                             _%tl167067167119%_)
                      (letrec ((_%loop167068167122%_
                                (lambda (_%hd167066167126%_
                                         _%arg167072167129%_)
                                  (if (gx#stx-pair? _%hd167066167126%_)
                                      (let ((_%e167069167132%_
                                             (gx#syntax-e _%hd167066167126%_)))
                                        (let ((_%lp-tl167071167139%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e167069167132%_)))
                                              (_%lp-hd167070167136%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e167069167132%_))))
                                          (_%loop167068167122%_
                                           _%lp-tl167071167139%_
                                           (cons _%lp-hd167070167136%_
                                                 _%arg167072167129%_))))
                                      (let ((_%arg167073167142%_
                                             (reverse _%arg167072167129%_)))
                                        (_%__kont168152168153%_
                                         _%arg167073167142%_))))))
                        (_%loop167068167122%_ _%target167065167116%_ '())))))
              (if (gx#stx-pair? _%__stx168149168150%_)
                  (let ((_%e167062167106%_
                         (gx#syntax-e _%__stx168149168150%_)))
                    (let ((_%tl167064167113%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e167062167106%_)))
                          (_%hd167063167110%_
                           (let ()
                             (declare (not safe))
                             (##car _%e167062167106%_))))
                      (if (gx#stx-pair/null? _%tl167064167113%_)
                          (let ((_%__splice168154168155%_
                                 (gx#syntax-split-splice->vector
                                  _%tl167064167113%_
                                  '0)))
                            (let ((_%tl167067167119%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice168154168155%_
                                      '1)))
                                  (_%target167065167116%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice168154168155%_
                                      '0))))
                              (if (gx#stx-null? _%tl167067167119%_)
                                  (_%__match168172168173%_
                                   _%e167062167106%_
                                   _%hd167063167110%_
                                   _%tl167064167113%_
                                   _%__splice168154168155%_
                                   _%target167065167116%_
                                   _%tl167067167119%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g167058167099%_)))))
                          (let () (declare (not safe)) (_%g167058167099%_)))))
                  (let () (declare (not safe)) (_%g167058167099%_))))))))
    (define |[:0:]#@load-module|
      (lambda (_%$stx167189%_)
        (let* ((_%__stx168175168176%_ _%$stx167189%_)
               (_%g167194167215%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx168175168176%_))))
          (let ((_%__kont168178168179%_
                 (lambda (_%g167196167280%_)
                   (cons (gx#datum->syntax
                          |[1]#_g168264_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'modpath) '())
                                     (cons (let ((__tmp168265
                                                  (lambda (_%g167295167298%_
                                                           _%g167296167301%_)
                                                    (cons _%g167295167298%_
                                                          _%g167296167301%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp168265
                                              '()
                                              _%g167196167280%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g168267_|
                                            'using
                                            '#f
                                            '#f)
                                           (cons (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'modpath)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            ':)
                           (cons (gx#datum->syntax '#f ':string) '())))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '__load-module)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'modpath)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont168182168183%_
                 (lambda (_%g167209167222%_)
                   (gx#datum->syntax '#f 'load-module))))
            (let* ((_%g167193167233%_
                    (lambda ()
                      (let ((_%g167209167222%_ _%__stx168175168176%_))
                        (if (gx#identifier? _%g167209167222%_)
                            (_%__kont168182168183%_ _%g167209167222%_)
                            (let ()
                              (declare (not safe))
                              (_%g167194167215%_))))))
                   (_%__match168198168199%_
                    (lambda (_%e167197167240%_
                             _%hd167198167244%_
                             _%tl167199167247%_
                             _%__splice168180168181%_
                             _%target167200167250%_
                             _%tl167202167253%_)
                      (letrec ((_%loop167203167256%_
                                (lambda (_%hd167201167260%_
                                         _%arg167207167263%_)
                                  (if (gx#stx-pair? _%hd167201167260%_)
                                      (let ((_%e167204167266%_
                                             (gx#syntax-e _%hd167201167260%_)))
                                        (let ((_%lp-tl167206167273%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e167204167266%_)))
                                              (_%lp-hd167205167270%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e167204167266%_))))
                                          (_%loop167203167256%_
                                           _%lp-tl167206167273%_
                                           (cons _%lp-hd167205167270%_
                                                 _%arg167207167263%_))))
                                      (let ((_%arg167208167276%_
                                             (reverse _%arg167207167263%_)))
                                        (_%__kont168178168179%_
                                         _%arg167208167276%_))))))
                        (_%loop167203167256%_ _%target167200167250%_ '())))))
              (if (gx#stx-pair? _%__stx168175168176%_)
                  (let ((_%e167197167240%_
                         (gx#syntax-e _%__stx168175168176%_)))
                    (let ((_%tl167199167247%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e167197167240%_)))
                          (_%hd167198167244%_
                           (let ()
                             (declare (not safe))
                             (##car _%e167197167240%_))))
                      (if (gx#stx-pair/null? _%tl167199167247%_)
                          (let ((_%__splice168180168181%_
                                 (gx#syntax-split-splice->vector
                                  _%tl167199167247%_
                                  '0)))
                            (let ((_%tl167202167253%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice168180168181%_
                                      '1)))
                                  (_%target167200167250%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice168180168181%_
                                      '0))))
                              (if (gx#stx-null? _%tl167202167253%_)
                                  (_%__match168198168199%_
                                   _%e167197167240%_
                                   _%hd167198167244%_
                                   _%tl167199167247%_
                                   _%__splice168180168181%_
                                   _%target167200167250%_
                                   _%tl167202167253%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g167193167233%_)))))
                          (let () (declare (not safe)) (_%g167193167233%_)))))
                  (let () (declare (not safe)) (_%g167193167233%_))))))))
    (define |[:0:]#@reload-module!|
      (lambda (_%$stx167323%_)
        (let* ((_%__stx168201168202%_ _%$stx167323%_)
               (_%g167328167349%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx168201168202%_))))
          (let ((_%__kont168204168205%_
                 (lambda (_%g167330167414%_)
                   (cons (gx#datum->syntax
                          |[1]#_g168269_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'modpath) '())
                                     (cons (let ((__tmp168270
                                                  (lambda (_%g167429167432%_
                                                           _%g167430167435%_)
                                                    (cons _%g167429167432%_
                                                          _%g167430167435%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp168270
                                              '()
                                              _%g167330167414%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g168272_|
                                            'using
                                            '#f
                                            '#f)
                                           (cons (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'modpath)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            ':)
                           (cons (gx#datum->syntax '#f ':string) '())))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '__reload-module!)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'modpath)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont168208168209%_
                 (lambda (_%g167343167356%_)
                   (gx#datum->syntax '#f 'reload-module!))))
            (let* ((_%g167327167367%_
                    (lambda ()
                      (let ((_%g167343167356%_ _%__stx168201168202%_))
                        (if (gx#identifier? _%g167343167356%_)
                            (_%__kont168208168209%_ _%g167343167356%_)
                            (let ()
                              (declare (not safe))
                              (_%g167328167349%_))))))
                   (_%__match168224168225%_
                    (lambda (_%e167331167374%_
                             _%hd167332167378%_
                             _%tl167333167381%_
                             _%__splice168206168207%_
                             _%target167334167384%_
                             _%tl167336167387%_)
                      (letrec ((_%loop167337167390%_
                                (lambda (_%hd167335167394%_
                                         _%arg167341167397%_)
                                  (if (gx#stx-pair? _%hd167335167394%_)
                                      (let ((_%e167338167400%_
                                             (gx#syntax-e _%hd167335167394%_)))
                                        (let ((_%lp-tl167340167407%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e167338167400%_)))
                                              (_%lp-hd167339167404%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e167338167400%_))))
                                          (_%loop167337167390%_
                                           _%lp-tl167340167407%_
                                           (cons _%lp-hd167339167404%_
                                                 _%arg167341167397%_))))
                                      (let ((_%arg167342167410%_
                                             (reverse _%arg167341167397%_)))
                                        (_%__kont168204168205%_
                                         _%arg167342167410%_))))))
                        (_%loop167337167390%_ _%target167334167384%_ '())))))
              (if (gx#stx-pair? _%__stx168201168202%_)
                  (let ((_%e167331167374%_
                         (gx#syntax-e _%__stx168201168202%_)))
                    (let ((_%tl167333167381%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e167331167374%_)))
                          (_%hd167332167378%_
                           (let ()
                             (declare (not safe))
                             (##car _%e167331167374%_))))
                      (if (gx#stx-pair/null? _%tl167333167381%_)
                          (let ((_%__splice168206168207%_
                                 (gx#syntax-split-splice->vector
                                  _%tl167333167381%_
                                  '0)))
                            (let ((_%tl167336167387%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice168206168207%_
                                      '1)))
                                  (_%target167334167384%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice168206168207%_
                                      '0))))
                              (if (gx#stx-null? _%tl167336167387%_)
                                  (_%__match168224168225%_
                                   _%e167331167374%_
                                   _%hd167332167378%_
                                   _%tl167333167381%_
                                   _%__splice168206168207%_
                                   _%target167334167384%_
                                   _%tl167336167387%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g167327167367%_)))))
                          (let () (declare (not safe)) (_%g167327167367%_)))))
                  (let () (declare (not safe)) (_%g167327167367%_))))))))
    (define |[:0:]#@module-load-order|
      (lambda (_%$stx167457%_)
        (let* ((_%__stx168227168228%_ _%$stx167457%_)
               (_%g167462167483%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx168227168228%_))))
          (let ((_%__kont168230168231%_
                 (lambda (_%g167464167548%_)
                   (cons (gx#datum->syntax
                          |[1]#_g168274_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'modpath) '())
                                     (cons (let ((__tmp168275
                                                  (lambda (_%g167563167566%_
                                                           _%g167564167569%_)
                                                    (cons _%g167563167566%_
                                                          _%g167564167569%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp168275
                                              '()
                                              _%g167464167548%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g168277_|
                                            'using
                                            '#f
                                            '#f)
                                           (cons (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'modpath)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            ':)
                           (cons (gx#datum->syntax '#f ':string) '())))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '__module-load-order)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'modpath)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont168234168235%_
                 (lambda (_%g167477167490%_)
                   (gx#datum->syntax '#f 'module-load-order))))
            (let* ((_%g167461167501%_
                    (lambda ()
                      (let ((_%g167477167490%_ _%__stx168227168228%_))
                        (if (gx#identifier? _%g167477167490%_)
                            (_%__kont168234168235%_ _%g167477167490%_)
                            (let ()
                              (declare (not safe))
                              (_%g167462167483%_))))))
                   (_%__match168250168251%_
                    (lambda (_%e167465167508%_
                             _%hd167466167512%_
                             _%tl167467167515%_
                             _%__splice168232168233%_
                             _%target167468167518%_
                             _%tl167470167521%_)
                      (letrec ((_%loop167471167524%_
                                (lambda (_%hd167469167528%_
                                         _%arg167475167531%_)
                                  (if (gx#stx-pair? _%hd167469167528%_)
                                      (let ((_%e167472167534%_
                                             (gx#syntax-e _%hd167469167528%_)))
                                        (let ((_%lp-tl167474167541%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e167472167534%_)))
                                              (_%lp-hd167473167538%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e167472167534%_))))
                                          (_%loop167471167524%_
                                           _%lp-tl167474167541%_
                                           (cons _%lp-hd167473167538%_
                                                 _%arg167475167531%_))))
                                      (let ((_%arg167476167544%_
                                             (reverse _%arg167475167531%_)))
                                        (_%__kont168230168231%_
                                         _%arg167476167544%_))))))
                        (_%loop167471167524%_ _%target167468167518%_ '())))))
              (if (gx#stx-pair? _%__stx168227168228%_)
                  (let ((_%e167465167508%_
                         (gx#syntax-e _%__stx168227168228%_)))
                    (let ((_%tl167467167515%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e167465167508%_)))
                          (_%hd167466167512%_
                           (let ()
                             (declare (not safe))
                             (##car _%e167465167508%_))))
                      (if (gx#stx-pair/null? _%tl167467167515%_)
                          (let ((_%__splice168232168233%_
                                 (gx#syntax-split-splice->vector
                                  _%tl167467167515%_
                                  '0)))
                            (let ((_%tl167470167521%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice168232168233%_
                                      '1)))
                                  (_%target167468167518%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice168232168233%_
                                      '0))))
                              (if (gx#stx-null? _%tl167470167521%_)
                                  (_%__match168250168251%_
                                   _%e167465167508%_
                                   _%hd167466167512%_
                                   _%tl167467167515%_
                                   _%__splice168232168233%_
                                   _%target167468167518%_
                                   _%tl167470167521%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g167461167501%_)))))
                          (let () (declare (not safe)) (_%g167461167501%_)))))
                  (let () (declare (not safe)) (_%g167461167501%_))))))))))
