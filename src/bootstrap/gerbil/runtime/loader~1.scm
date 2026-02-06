(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g159944_|
    (gx#core-deserialize-mark
     '(0
       (arg159145 . _%arg159145159203%_)
       (arg159146 . _%arg159146159217%_)
       (arg . _%arg159233%_)
       (id . _%id159170%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g159945_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g159944_|)))
  (define |[1]#_g159947_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g159948_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g159947_|)))
  (define |[1]#_g159949_|
    (gx#core-deserialize-mark
     '(0
       (arg159281 . _%arg159281159351%_)
       (arg159280 . _%arg159280159337%_)
       (arg . _%arg159367%_)
       (id . _%id159304%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g159950_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g159949_|)))
  (define |[1]#_g159952_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g159953_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g159952_|)))
  (define |[1]#_g159954_|
    (gx#core-deserialize-mark
     '(0
       (arg . _%arg159501%_)
       (arg159415 . _%arg159415159485%_)
       (id . _%id159438%_)
       (arg159414 . _%arg159414159471%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g159955_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g159954_|)))
  (define |[1]#_g159957_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g159958_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g159957_|)))
  (define |[1]#_g159959_|
    (gx#core-deserialize-mark
     '(0
       (arg159548 . _%arg159548159605%_)
       (arg . _%arg159635%_)
       (arg159549 . _%arg159549159619%_)
       (id . _%id159572%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g159960_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g159959_|)))
  (define |[1]#_g159962_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g159963_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g159962_|)))
  (begin
    (define |[:0:]#@set-load-path!|
      (lambda (_%$stx159127%_)
        (let* ((_%__stx159834159835%_ _%$stx159127%_)
               (_%g159132159153%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx159834159835%_))))
          (let ((_%__kont159837159838%_
                 (lambda (_%g159134159219%_)
                   (cons (gx#datum->syntax
                          |[1]#_g159945_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'paths) '())
                                     (cons (let ((__tmp159946
                                                  (lambda (_%g159234159237%_
                                                           _%g159235159240%_)
                                                    (cons _%g159234159237%_
                                                          _%g159235159240%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp159946
                                              '()
                                              _%g159134159219%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g159948_|
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
                (_%__kont159841159842%_
                 (lambda (_%g159147159160%_)
                   (gx#datum->syntax '#f 'set-load-path!))))
            (let* ((_%g159131159172%_
                    (lambda ()
                      (let ((_%g159147159160%_ _%__stx159834159835%_))
                        (if (gx#identifier? _%g159147159160%_)
                            (_%__kont159841159842%_ _%g159147159160%_)
                            (let ()
                              (declare (not safe))
                              (_%g159132159153%_))))))
                   (_%__match159857159858%_
                    (lambda (_%e159135159179%_
                             _%hd159136159183%_
                             _%tl159137159186%_
                             _%__splice159839159840%_
                             _%target159138159189%_
                             _%tl159140159192%_)
                      (letrec ((_%loop159141159195%_
                                (lambda (_%hd159139159199%_
                                         _%arg159145159202%_)
                                  (if (gx#stx-pair? _%hd159139159199%_)
                                      (let ((_%e159142159205%_
                                             (gx#syntax-e _%hd159139159199%_)))
                                        (let ((_%lp-tl159144159212%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e159142159205%_)))
                                              (_%lp-hd159143159209%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e159142159205%_))))
                                          (_%loop159141159195%_
                                           _%lp-tl159144159212%_
                                           (cons _%lp-hd159143159209%_
                                                 _%arg159145159202%_))))
                                      (let ((_%arg159146159215%_
                                             (reverse _%arg159145159202%_)))
                                        (_%__kont159837159838%_
                                         _%arg159146159215%_))))))
                        (_%loop159141159195%_ _%target159138159189%_ '())))))
              (if (gx#stx-pair? _%__stx159834159835%_)
                  (let ((_%e159135159179%_
                         (gx#syntax-e _%__stx159834159835%_)))
                    (let ((_%tl159137159186%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e159135159179%_)))
                          (_%hd159136159183%_
                           (let ()
                             (declare (not safe))
                             (##car _%e159135159179%_))))
                      (if (gx#stx-pair/null? _%tl159137159186%_)
                          (let ((_%__splice159839159840%_
                                 (gx#syntax-split-splice->vector
                                  _%tl159137159186%_
                                  '0)))
                            (let ((_%tl159140159192%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice159839159840%_
                                      '1)))
                                  (_%target159138159189%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice159839159840%_
                                      '0))))
                              (if (gx#stx-null? _%tl159140159192%_)
                                  (_%__match159857159858%_
                                   _%e159135159179%_
                                   _%hd159136159183%_
                                   _%tl159137159186%_
                                   _%__splice159839159840%_
                                   _%target159138159189%_
                                   _%tl159140159192%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g159131159172%_)))))
                          (let () (declare (not safe)) (_%g159131159172%_)))))
                  (let () (declare (not safe)) (_%g159131159172%_))))))))
    (define |[:0:]#@load-module|
      (lambda (_%$stx159262%_)
        (let* ((_%__stx159860159861%_ _%$stx159262%_)
               (_%g159267159288%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx159860159861%_))))
          (let ((_%__kont159863159864%_
                 (lambda (_%g159269159353%_)
                   (cons (gx#datum->syntax
                          |[1]#_g159950_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'modpath) '())
                                     (cons (let ((__tmp159951
                                                  (lambda (_%g159368159371%_
                                                           _%g159369159374%_)
                                                    (cons _%g159368159371%_
                                                          _%g159369159374%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp159951
                                              '()
                                              _%g159269159353%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g159953_|
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
                (_%__kont159867159868%_
                 (lambda (_%g159282159295%_)
                   (gx#datum->syntax '#f 'load-module))))
            (let* ((_%g159266159306%_
                    (lambda ()
                      (let ((_%g159282159295%_ _%__stx159860159861%_))
                        (if (gx#identifier? _%g159282159295%_)
                            (_%__kont159867159868%_ _%g159282159295%_)
                            (let ()
                              (declare (not safe))
                              (_%g159267159288%_))))))
                   (_%__match159883159884%_
                    (lambda (_%e159270159313%_
                             _%hd159271159317%_
                             _%tl159272159320%_
                             _%__splice159865159866%_
                             _%target159273159323%_
                             _%tl159275159326%_)
                      (letrec ((_%loop159276159329%_
                                (lambda (_%hd159274159333%_
                                         _%arg159280159336%_)
                                  (if (gx#stx-pair? _%hd159274159333%_)
                                      (let ((_%e159277159339%_
                                             (gx#syntax-e _%hd159274159333%_)))
                                        (let ((_%lp-tl159279159346%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e159277159339%_)))
                                              (_%lp-hd159278159343%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e159277159339%_))))
                                          (_%loop159276159329%_
                                           _%lp-tl159279159346%_
                                           (cons _%lp-hd159278159343%_
                                                 _%arg159280159336%_))))
                                      (let ((_%arg159281159349%_
                                             (reverse _%arg159280159336%_)))
                                        (_%__kont159863159864%_
                                         _%arg159281159349%_))))))
                        (_%loop159276159329%_ _%target159273159323%_ '())))))
              (if (gx#stx-pair? _%__stx159860159861%_)
                  (let ((_%e159270159313%_
                         (gx#syntax-e _%__stx159860159861%_)))
                    (let ((_%tl159272159320%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e159270159313%_)))
                          (_%hd159271159317%_
                           (let ()
                             (declare (not safe))
                             (##car _%e159270159313%_))))
                      (if (gx#stx-pair/null? _%tl159272159320%_)
                          (let ((_%__splice159865159866%_
                                 (gx#syntax-split-splice->vector
                                  _%tl159272159320%_
                                  '0)))
                            (let ((_%tl159275159326%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice159865159866%_
                                      '1)))
                                  (_%target159273159323%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice159865159866%_
                                      '0))))
                              (if (gx#stx-null? _%tl159275159326%_)
                                  (_%__match159883159884%_
                                   _%e159270159313%_
                                   _%hd159271159317%_
                                   _%tl159272159320%_
                                   _%__splice159865159866%_
                                   _%target159273159323%_
                                   _%tl159275159326%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g159266159306%_)))))
                          (let () (declare (not safe)) (_%g159266159306%_)))))
                  (let () (declare (not safe)) (_%g159266159306%_))))))))
    (define |[:0:]#@reload-module!|
      (lambda (_%$stx159396%_)
        (let* ((_%__stx159886159887%_ _%$stx159396%_)
               (_%g159401159422%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx159886159887%_))))
          (let ((_%__kont159889159890%_
                 (lambda (_%g159403159487%_)
                   (cons (gx#datum->syntax
                          |[1]#_g159955_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'modpath) '())
                                     (cons (let ((__tmp159956
                                                  (lambda (_%g159502159505%_
                                                           _%g159503159508%_)
                                                    (cons _%g159502159505%_
                                                          _%g159503159508%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp159956
                                              '()
                                              _%g159403159487%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g159958_|
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
                (_%__kont159893159894%_
                 (lambda (_%g159416159429%_)
                   (gx#datum->syntax '#f 'reload-module!))))
            (let* ((_%g159400159440%_
                    (lambda ()
                      (let ((_%g159416159429%_ _%__stx159886159887%_))
                        (if (gx#identifier? _%g159416159429%_)
                            (_%__kont159893159894%_ _%g159416159429%_)
                            (let ()
                              (declare (not safe))
                              (_%g159401159422%_))))))
                   (_%__match159909159910%_
                    (lambda (_%e159404159447%_
                             _%hd159405159451%_
                             _%tl159406159454%_
                             _%__splice159891159892%_
                             _%target159407159457%_
                             _%tl159409159460%_)
                      (letrec ((_%loop159410159463%_
                                (lambda (_%hd159408159467%_
                                         _%arg159414159470%_)
                                  (if (gx#stx-pair? _%hd159408159467%_)
                                      (let ((_%e159411159473%_
                                             (gx#syntax-e _%hd159408159467%_)))
                                        (let ((_%lp-tl159413159480%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e159411159473%_)))
                                              (_%lp-hd159412159477%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e159411159473%_))))
                                          (_%loop159410159463%_
                                           _%lp-tl159413159480%_
                                           (cons _%lp-hd159412159477%_
                                                 _%arg159414159470%_))))
                                      (let ((_%arg159415159483%_
                                             (reverse _%arg159414159470%_)))
                                        (_%__kont159889159890%_
                                         _%arg159415159483%_))))))
                        (_%loop159410159463%_ _%target159407159457%_ '())))))
              (if (gx#stx-pair? _%__stx159886159887%_)
                  (let ((_%e159404159447%_
                         (gx#syntax-e _%__stx159886159887%_)))
                    (let ((_%tl159406159454%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e159404159447%_)))
                          (_%hd159405159451%_
                           (let ()
                             (declare (not safe))
                             (##car _%e159404159447%_))))
                      (if (gx#stx-pair/null? _%tl159406159454%_)
                          (let ((_%__splice159891159892%_
                                 (gx#syntax-split-splice->vector
                                  _%tl159406159454%_
                                  '0)))
                            (let ((_%tl159409159460%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice159891159892%_
                                      '1)))
                                  (_%target159407159457%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice159891159892%_
                                      '0))))
                              (if (gx#stx-null? _%tl159409159460%_)
                                  (_%__match159909159910%_
                                   _%e159404159447%_
                                   _%hd159405159451%_
                                   _%tl159406159454%_
                                   _%__splice159891159892%_
                                   _%target159407159457%_
                                   _%tl159409159460%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g159400159440%_)))))
                          (let () (declare (not safe)) (_%g159400159440%_)))))
                  (let () (declare (not safe)) (_%g159400159440%_))))))))
    (define |[:0:]#@module-load-order|
      (lambda (_%$stx159530%_)
        (let* ((_%__stx159912159913%_ _%$stx159530%_)
               (_%g159535159556%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx159912159913%_))))
          (let ((_%__kont159915159916%_
                 (lambda (_%g159537159621%_)
                   (cons (gx#datum->syntax
                          |[1]#_g159960_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'modpath) '())
                                     (cons (let ((__tmp159961
                                                  (lambda (_%g159636159639%_
                                                           _%g159637159642%_)
                                                    (cons _%g159636159639%_
                                                          _%g159637159642%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp159961
                                              '()
                                              _%g159537159621%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g159963_|
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
                (_%__kont159919159920%_
                 (lambda (_%g159550159563%_)
                   (gx#datum->syntax '#f 'module-load-order))))
            (let* ((_%g159534159574%_
                    (lambda ()
                      (let ((_%g159550159563%_ _%__stx159912159913%_))
                        (if (gx#identifier? _%g159550159563%_)
                            (_%__kont159919159920%_ _%g159550159563%_)
                            (let ()
                              (declare (not safe))
                              (_%g159535159556%_))))))
                   (_%__match159935159936%_
                    (lambda (_%e159538159581%_
                             _%hd159539159585%_
                             _%tl159540159588%_
                             _%__splice159917159918%_
                             _%target159541159591%_
                             _%tl159543159594%_)
                      (letrec ((_%loop159544159597%_
                                (lambda (_%hd159542159601%_
                                         _%arg159548159604%_)
                                  (if (gx#stx-pair? _%hd159542159601%_)
                                      (let ((_%e159545159607%_
                                             (gx#syntax-e _%hd159542159601%_)))
                                        (let ((_%lp-tl159547159614%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e159545159607%_)))
                                              (_%lp-hd159546159611%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e159545159607%_))))
                                          (_%loop159544159597%_
                                           _%lp-tl159547159614%_
                                           (cons _%lp-hd159546159611%_
                                                 _%arg159548159604%_))))
                                      (let ((_%arg159549159617%_
                                             (reverse _%arg159548159604%_)))
                                        (_%__kont159915159916%_
                                         _%arg159549159617%_))))))
                        (_%loop159544159597%_ _%target159541159591%_ '())))))
              (if (gx#stx-pair? _%__stx159912159913%_)
                  (let ((_%e159538159581%_
                         (gx#syntax-e _%__stx159912159913%_)))
                    (let ((_%tl159540159588%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e159538159581%_)))
                          (_%hd159539159585%_
                           (let ()
                             (declare (not safe))
                             (##car _%e159538159581%_))))
                      (if (gx#stx-pair/null? _%tl159540159588%_)
                          (let ((_%__splice159917159918%_
                                 (gx#syntax-split-splice->vector
                                  _%tl159540159588%_
                                  '0)))
                            (let ((_%tl159543159594%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice159917159918%_
                                      '1)))
                                  (_%target159541159591%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice159917159918%_
                                      '0))))
                              (if (gx#stx-null? _%tl159543159594%_)
                                  (_%__match159935159936%_
                                   _%e159538159581%_
                                   _%hd159539159585%_
                                   _%tl159540159588%_
                                   _%__splice159917159918%_
                                   _%target159541159591%_
                                   _%tl159543159594%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g159534159574%_)))))
                          (let () (declare (not safe)) (_%g159534159574%_)))))
                  (let () (declare (not safe)) (_%g159534159574%_))))))))))
