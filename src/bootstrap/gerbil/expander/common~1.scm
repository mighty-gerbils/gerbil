(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g174238_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g174240_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g174242_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g174244_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g174245_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g174247_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g174248_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g174250_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g174251_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g174253_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g174254_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g174256_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj174234
             (let ()
               (declare (not safe))
               (##structure
                gerbil/core/mop~MOP-2#class-type-info::t
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f))))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj174234 'gerbil#AST::t '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj174234 'syntax '3 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj174234 '(e source) '6 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj174234 '(e source) '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj174234 '() '5 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj174234 '#t '9 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj174234 '#f '10 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj174234 '#f '12 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj174234 '#f '13 '#f '#f))
        (let ((__tmp174237 |gx[1]#_g174238_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj174234 __tmp174237 '4 '#f '#f))
        (let ((__tmp174239 |gx[1]#_g174240_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj174234 __tmp174239 '14 '#f '#f))
        (let ((__tmp174241 |gx[1]#_g174242_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj174234 __tmp174241 '15 '#f '#f))
        (let ((__tmp174243
               (cons (cons 'e |gx[1]#_g174244_|)
                     (cons (cons 'source |gx[1]#_g174245_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj174234 __tmp174243 '16 '#f '#f))
        (let ((__tmp174246
               (cons (cons 'e |gx[1]#_g174247_|)
                     (cons (cons 'source |gx[1]#_g174248_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj174234 __tmp174246 '17 '#f '#f))
        (let ((__tmp174249
               (cons (cons 'e |gx[1]#_g174250_|)
                     (cons (cons 'source |gx[1]#_g174251_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj174234 __tmp174249 '18 '#f '#f))
        (let ((__tmp174252
               (cons (cons 'e |gx[1]#_g174253_|)
                     (cons (cons 'source |gx[1]#_g174254_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj174234 __tmp174252 '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj174234 '() '20 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj174234 '() '22 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj174234 '() '21 '#f '#f))
        __obj174234))
    (define |gx[:0:]#check-procedure|
      (lambda (_%$stx172831%_)
        (let* ((_%$%g172835172849%_
                (lambda (_%$%g172836172845%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g172836172845%_)))
               (_%$%g172834172891%_
                (lambda (_%$%g172836172853%_)
                  (if (gx#stx-pair? _%$%g172836172853%_)
                      (let ((_%$%e172838172856%_
                             (gx#syntax-e _%$%g172836172853%_)))
                        (let ((_%$%hd172839172860%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e172838172856%_)))
                              (_%$%tl172840172863%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e172838172856%_))))
                          (if (gx#stx-pair? _%$%tl172840172863%_)
                              (let ((_%$%e172841172866%_
                                     (gx#syntax-e _%$%tl172840172863%_)))
                                (let ((_%$%hd172842172870%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e172841172866%_)))
                                      (_%$%tl172843172873%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e172841172866%_))))
                                  (if (gx#stx-null? _%$%tl172843172873%_)
                                      (cons (gx#datum->syntax '#f 'unless)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'procedure?)
                                                        (cons _%$%hd172842172870%_
                                                              '()))
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'error)
                                                              (cons '"expected procedure"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%$%hd172842172870%_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%$%g172835172849%_
                                       _%$%g172836172853%_))))
                              (_%$%g172835172849%_ _%$%g172836172853%_))))
                      (_%$%g172835172849%_ _%$%g172836172853%_)))))
          (_%$%g172834172891%_ _%$stx172831%_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_%stx172895%_)
        (letrec ((_%generate172898%_
                  (lambda (_%tgt173047%_ _%kws173049%_ _%clauses173050%_)
                    (letrec ((_%generate-clause173052%_
                              (lambda (_%hd173985%_ _%E173987%_)
                                (let* ((_%__stx174137174138%_ _%hd173985%_)
                                       (_%$%g173991174018%_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx174137174138%_))))
                                  (let ((_%__kont174140174141%_
                                         (lambda (_%$%g173993174114%_
                                                  _%$%g173994174116%_)
                                           (_%generate1173054%_
                                            _%hd173985%_
                                            _%$%g173994174116%_
                                            '#t
                                            _%$%g173993174114%_
                                            _%E173987%_)))
                                        (_%__kont174142174143%_
                                         (lambda (_%$%g174001174066%_
                                                  _%$%g174002174068%_
                                                  _%$%g174003174069%_)
                                           (_%generate1173054%_
                                            _%hd173985%_
                                            _%$%g174003174069%_
                                            _%$%g174002174068%_
                                            _%$%g174001174066%_
                                            _%E173987%_)))
                                        (_%__kont174144174145%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _%stx172895%_
                                            _%hd173985%_))))
                                    (if (gx#stx-pair? _%__stx174137174138%_)
                                        (let ((_%$%e173995174094%_
                                               (gx#syntax-e
                                                _%__stx174137174138%_)))
                                          (let ((_%$%tl173997174101%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e173995174094%_)))
                                                (_%$%hd173996174098%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e173995174094%_))))
                                            (if (gx#stx-pair?
                                                 _%$%tl173997174101%_)
                                                (let ((_%$%e173998174104%_
                                                       (gx#syntax-e
                                                        _%$%tl173997174101%_)))
                                                  (let ((_%$%tl174000174111%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e173998174104%_)))
                                                        (_%$%hd173999174108%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e173998174104%_))))
                                                    (if (gx#stx-null?
                                                         _%$%tl174000174111%_)
                                                        (_%__kont174140174141%_
                                                         _%$%hd173999174108%_
                                                         _%$%hd173996174098%_)
                                                        (if (gx#stx-pair?
                                                             _%$%tl174000174111%_)
                                                            (let ((_%$%e174010174056%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%$%tl174000174111%_)))
                      (let ((_%$%tl174012174063%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e174010174056%_)))
                            (_%$%hd174011174060%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e174010174056%_))))
                        (if (gx#stx-null? _%$%tl174012174063%_)
                            (_%__kont174142174143%_
                             _%$%hd174011174060%_
                             _%$%hd173999174108%_
                             _%$%hd173996174098%_)
                            (_%__kont174144174145%_))))
                    (_%__kont174144174145%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont174144174145%_))))
                                        (_%__kont174144174145%_))))))
                             (_%generate1173054%_
                              (lambda (_%where173438%_
                                       _%hd173440%_
                                       _%fender173441%_
                                       _%body173442%_
                                       _%E173443%_)
                                (letrec ((_%recur173445%_
                                          (lambda (_%hd173448%_
                                                   _%tgt173450%_
                                                   _%K173451%_)
                                            (let* ((_%__stx174183174184%_
                                                    _%hd173448%_)
                                                   (_%$%g173454173466%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx174183174184%_))))
                                              (let ((_%__kont174186174187%_
                                                     (lambda (_%$%g173456173775%_
                                                              _%$%g173457173777%_)
                                                       (let* ((_%$%g173788173796%_
                                                               (lambda (_%$%g173789173792%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%$%g173789173792%_)))
                      (_%$%g173787173977%_
                       (lambda (_%$%g173789173800%_)
                         (let* ((_%$%g173815173823%_
                                 (lambda (_%$%g173816173819%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%$%g173816173819%_)))
                                (_%$%g173814173973%_
                                 (lambda (_%$%g173816173827%_)
                                   (let* ((_%$%g173843173851%_
                                           (lambda (_%$%g173844173847%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%$%g173844173847%_)))
                                          (_%$%g173842173969%_
                                           (lambda (_%$%g173844173855%_)
                                             (let* ((_%$%g173871173879%_
                                                     (lambda (_%$%g173872173875%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%$%g173872173875%_)))
                                                    (_%$%g173870173965%_
                                                     (lambda (_%$%g173872173883%_)
                                                       (let* ((_%$%g173899173907%_
                                                               (lambda (_%$%g173900173903%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%$%g173900173903%_)))
                      (_%$%g173898173961%_
                       (lambda (_%$%g173900173911%_)
                         (let* ((_%$%g173927173935%_
                                 (lambda (_%$%g173928173931%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%$%g173928173931%_)))
                                (_%$%g173926173957%_
                                 (lambda (_%$%g173928173939%_)
                                   (cons (gx#datum->syntax '#f 'if)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'stx-pair?)
                                                     (cons _%$%g173789173800%_
                                                           '()))
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'let)
                                                           (cons (cons (cons _%$%g173816173827%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'syntax-e)
                                                 (cons _%$%g173789173800%_
                                                       '()))
                                           '()))
                               '())
                         (cons (cons (gx#datum->syntax '#f 'let)
                                     (cons (cons (cons _%$%g173844173855%_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '##car)
                           (cons _%$%g173816173827%_ '()))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _%$%g173872173883%_
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  '##cdr)
                                 (cons _%$%g173816173827%_ '()))
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons _%$%g173900173911%_ '())))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons _%$%g173928173939%_
                                                           '())))))))
                           (_%$%g173926173957%_ _%E173443%_)))))
                 (_%$%g173898173961%_
                  (_%recur173445%_
                   _%$%g173457173777%_
                   _%$%g173844173855%_
                   (_%recur173445%_
                    _%$%g173456173775%_
                    _%$%g173872173883%_
                    _%K173451%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g173870173965%_
                                                (gx#genident 'tl))))))
                                     (_%$%g173842173969%_
                                      (gx#genident 'hd))))))
                           (_%$%g173814173973%_ (gx#genident 'e))))))
                 (_%$%g173787173977%_ _%tgt173450%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont174188174189%_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _%hd173448%_)
                                                           (if (gx#underscore?
                                                                _%hd173448%_)
                                                               _%K173451%_
                                                               (if (let ((__tmp174255
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_%$%g173480173482%_)
                                    (gx#bound-identifier=?
                                     _%$%g173480173482%_
                                     _%hd173448%_))))
                             (declare (not safe))
                             (__find __tmp174255 _%kws173049%_))
                           (let* ((_%$%g173488173503%_
                                   (lambda (_%$%g173489173499%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%$%g173489173499%_)))
                                  (_%$%g173487173556%_
                                   (lambda (_%$%g173489173507%_)
                                     (if (gx#stx-pair? _%$%g173489173507%_)
                                         (let ((_%$%e173492173510%_
                                                (gx#syntax-e
                                                 _%$%g173489173507%_)))
                                           (let ((_%$%hd173493173514%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e173492173510%_)))
                                                 (_%$%tl173494173517%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e173492173510%_))))
                                             (if (gx#stx-pair?
                                                  _%$%tl173494173517%_)
                                                 (let ((_%$%e173495173520%_
                                                        (gx#syntax-e
                                                         _%$%tl173494173517%_)))
                                                   (let ((_%$%hd173496173524%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e173495173520%_)))
                                                         (_%$%tl173497173527%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e173495173520%_))))
                                                     (if (gx#stx-null?
                                                          _%$%tl173497173527%_)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'if)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'and)
                                   (cons (cons (gx#datum->syntax
                                                '#f
                                                'identifier?)
                                               (cons _%$%hd173493173514%_ '()))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'core-identifier=?)
                                                     (cons _%$%hd173493173514%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'quote)
                               (cons _%$%hd173496173524%_ '()))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())))
                             (cons _%K173451%_ (cons _%E173443%_ '()))))
                 (_%$%g173488173503%_ _%$%g173489173507%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g173488173503%_
                                                  _%$%g173489173507%_))))
                                         (_%$%g173488173503%_
                                          _%$%g173489173507%_)))))
                             (_%$%g173487173556%_
                              (list _%tgt173450%_ _%hd173448%_)))
                           (let* ((_%$%g173562173577%_
                                   (lambda (_%$%g173563173573%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%$%g173563173573%_)))
                                  (_%$%g173561173622%_
                                   (lambda (_%$%g173563173581%_)
                                     (if (gx#stx-pair? _%$%g173563173581%_)
                                         (let ((_%$%e173566173584%_
                                                (gx#syntax-e
                                                 _%$%g173563173581%_)))
                                           (let ((_%$%hd173567173588%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e173566173584%_)))
                                                 (_%$%tl173568173591%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e173566173584%_))))
                                             (if (gx#stx-pair?
                                                  _%$%tl173568173591%_)
                                                 (let ((_%$%e173569173594%_
                                                        (gx#syntax-e
                                                         _%$%tl173568173591%_)))
                                                   (let ((_%$%hd173570173598%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e173569173594%_)))
                                                         (_%$%tl173571173601%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e173569173594%_))))
                                                     (if (gx#stx-null?
                                                          _%$%tl173571173601%_)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'let)
                                                               (cons (cons (cons _%$%hd173570173598%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         (cons _%$%hd173567173588%_ '()))
                                   '())
                             (cons _%K173451%_ '())))
                 (_%$%g173562173577%_ _%$%g173563173581%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g173562173577%_
                                                  _%$%g173563173581%_))))
                                         (_%$%g173562173577%_
                                          _%$%g173563173581%_)))))
                             (_%$%g173561173622%_
                              (list _%tgt173450%_ _%hd173448%_)))))
                   (if (gx#stx-null? _%hd173448%_)
                       (let* ((_%$%g173628173636%_
                               (lambda (_%$%g173629173632%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%$%g173629173632%_)))
                              (_%$%g173627173655%_
                               (lambda (_%$%g173629173640%_)
                                 (cons (gx#datum->syntax '#f 'if)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'stx-null?)
                                                   (cons _%$%g173629173640%_
                                                         '()))
                                             (cons _%K173451%_
                                                   (cons _%E173443%_ '())))))))
                         (_%$%g173627173655%_ _%tgt173450%_))
                       (if (gx#stx-datum? _%hd173448%_)
                           (let* ((_%$%g173661173680%_
                                   (lambda (_%$%g173662173676%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%$%g173662173676%_)))
                                  (_%$%g173660173739%_
                                   (lambda (_%$%g173662173684%_)
                                     (if (gx#stx-pair? _%$%g173662173684%_)
                                         (let ((_%$%e173666173687%_
                                                (gx#syntax-e
                                                 _%$%g173662173684%_)))
                                           (let ((_%$%hd173667173691%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e173666173687%_)))
                                                 (_%$%tl173668173694%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e173666173687%_))))
                                             (if (gx#stx-pair?
                                                  _%$%tl173668173694%_)
                                                 (let ((_%$%e173669173697%_
                                                        (gx#syntax-e
                                                         _%$%tl173668173694%_)))
                                                   (let ((_%$%hd173670173701%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e173669173697%_)))
                                                         (_%$%tl173671173704%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e173669173697%_))))
                                                     (if (gx#stx-pair?
                                                          _%$%tl173671173704%_)
                                                         (let ((_%$%e173672173707%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%tl173671173704%_)))
                   (let ((_%$%hd173673173711%_
                          (let ()
                            (declare (not safe))
                            (##car _%$%e173672173707%_)))
                         (_%$%tl173674173714%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%$%e173672173707%_))))
                     (if (gx#stx-null? _%$%tl173674173714%_)
                         (cons (gx#datum->syntax '#f 'if)
                               (cons (cons _%$%hd173673173711%_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'stx-e)
                                                       (cons _%$%hd173667173691%_
                                                             '()))
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'quote)
                                                             (cons _%$%hd173670173701%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons _%K173451%_
                                           (cons _%E173443%_ '()))))
                         (_%$%g173661173680%_ _%$%g173662173684%_))))
                 (_%$%g173661173680%_ _%$%g173662173684%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g173661173680%_
                                                  _%$%g173662173684%_))))
                                         (_%$%g173661173680%_
                                          _%$%g173662173684%_)))))
                             (_%$%g173660173739%_
                              (list _%tgt173450%_
                                    _%hd173448%_
                                    (let ((_%e173743%_
                                           (gx#stx-e _%hd173448%_)))
                                      (if (or (keyword? _%e173743%_)
                                              (let ()
                                                (declare (not safe))
                                                (immediate? _%e173743%_)))
                                          (gx#datum->syntax '#f 'eq?)
                                          (if (number? _%e173743%_)
                                              (gx#datum->syntax '#f 'eqv?)
                                              (gx#datum->syntax
                                               '#f
                                               'equal?)))))))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid syntax-case head"
                            _%stx172895%_
                            _%where173438%_
                            _%hd173448%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     _%__stx174183174184%_)
                                                    (let ((_%$%e173458173765%_
                                                           (gx#syntax-e
                                                            _%__stx174183174184%_)))
                                                      (let ((_%$%tl173460173772%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e173458173765%_)))
                    (_%$%hd173459173769%_
                     (let ()
                       (declare (not safe))
                       (##car _%$%e173458173765%_))))
                (_%__kont174186174187%_
                 _%$%tl173460173772%_
                 _%$%hd173459173769%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont174188174189%_)))))))
                                  (_%recur173445%_
                                   _%hd173440%_
                                   _%tgt173047%_
                                   (cons (gx#datum->syntax '#f 'if)
                                         (cons _%fender173441%_
                                               (cons _%body173442%_
                                                     (cons _%E173443%_
                                                           '()))))))))
                             (_%generate-clauses173055%_
                              (lambda (_%clauses173176%_)
                                (let _%lp173179%_ ((_%rest173182%_
                                                    _%clauses173176%_)
                                                   (_%E173184%_
                                                    (gx#genident 'E))
                                                   (_%r173185%_ '()))
                                  (let* ((_%__stx174219174220%_ _%rest173182%_)
                                         (_%$%g173188173200%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx174219174220%_))))
                                    (let ((_%__kont174222174223%_
                                           (lambda (_%$%g173190173265%_
                                                    _%$%g173191173267%_)
                                             (let* ((_%__stx174199174200%_
                                                     _%$%g173191173267%_)
                                                    (_%$%g173279173290%_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%__stx174199174200%_))))
                                               (let ((_%__kont174202174203%_
                                                      (lambda (_%$%g173281173419%_)
                                                        (if (gx#stx-null?
                                                             _%$%g173190173265%_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%$%g173281173419%_)
                             (not (gx#stx-null? _%$%g173281173419%_)))
                        (cons (cons _%E173184%_
                                    (cons (gx#stx-wrap-source
                                           (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons '()
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'begin)
                           _%$%g173281173419%_)
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (gx#stx-source _%$%g173191173267%_))
                                          '()))
                              _%r173185%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _%stx172895%_
                         _%$%g173191173267%_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _%stx172895%_
                     _%$%g173191173267%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont174204174205%_
                                                      (lambda ()
                                                        (let* ((_%$%g173301173309%_
                                                                (lambda (_%$%g173302173305%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%$%g173302173305%_)))
                       (_%$%g173300173398%_
                        (lambda (_%$%g173302173313%_)
                          (let* ((_%$%g173332173340%_
                                  (lambda (_%$%g173333173336%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%$%g173333173336%_)))
                                 (_%$%g173331173394%_
                                  (lambda (_%$%g173333173344%_)
                                    (let* ((_%$%g173360173368%_
                                            (lambda (_%$%g173361173364%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%$%g173361173364%_)))
                                           (_%$%g173359173390%_
                                            (lambda (_%$%g173361173372%_)
                                              (_%lp173179%_
                                               _%$%g173190173265%_
                                               _%$%g173302173313%_
                                               (cons (cons _%E173184%_
                                                           (cons _%$%g173361173372%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r173185%_)))))
                                      (_%$%g173359173390%_
                                       (gx#stx-wrap-source
                                        (cons (gx#datum->syntax '#f 'lambda)
                                              (cons '()
                                                    (cons _%$%g173333173344%_
                                                          '())))
                                        (gx#stx-source
                                         _%$%g173191173267%_)))))))
                            (_%$%g173331173394%_
                             (_%generate-clause173052%_
                              _%$%g173191173267%_
                              (cons _%$%g173302173313%_ '())))))))
                  (_%$%g173300173398%_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      _%__stx174199174200%_)
                                                     (let ((_%$%e173282173409%_
                                                            (gx#syntax-e
                                                             _%__stx174199174200%_)))
                                                       (let ((_%$%tl173284173416%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%$%e173282173409%_)))
                     (_%$%hd173283173413%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%e173282173409%_))))
                 (if (gx#identifier? _%$%hd173283173413%_)
                     (if (gx#free-identifier=?
                          |gx[1]#_g174256_|
                          _%$%hd173283173413%_)
                         (_%__kont174202174203%_ _%$%tl173284173416%_)
                         (_%__kont174204174205%_))
                     (_%__kont174204174205%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont174204174205%_))))))
                                          (_%__kont174224174225%_
                                           (lambda ()
                                             (let* ((_%$%g173211173219%_
                                                     (lambda (_%$%g173212173215%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%$%g173212173215%_)))
                                                    (_%$%g173210173244%_
                                                     (lambda (_%$%g173212173223%_)
                                                       (cons (cons _%E173184%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#stx-wrap-source
                                  (cons (gx#datum->syntax '#f 'lambda)
                                        (cons '()
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'raise-syntax-error)
                                                          (cons '#f
                                                                (cons '"Bad syntax; invalid syntax-case clause"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$%g173212173223%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  (gx#stx-source _%stx172895%_))
                                 '()))
                     _%r173185%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g173210173244%_
                                                _%tgt173047%_)))))
                                      (if (gx#stx-pair? _%__stx174219174220%_)
                                          (let ((_%$%e173192173255%_
                                                 (gx#syntax-e
                                                  _%__stx174219174220%_)))
                                            (let ((_%$%tl173194173262%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e173192173255%_)))
                                                  (_%$%hd173193173259%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e173192173255%_))))
                                              (_%__kont174222174223%_
                                               _%$%tl173194173262%_
                                               _%$%hd173193173259%_)))
                                          (_%__kont174224174225%_))))))))
                      (let* ((_%bind173057%_
                              (_%generate-clauses173055%_ _%clauses173050%_))
                             (_%$%g173060173077%_
                              (lambda (_%$%g173061173073%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%$%g173061173073%_)))
                             (_%$%g173059173172%_
                              (lambda (_%$%g173061173081%_)
                                (if (gx#stx-pair/null? _%$%g173061173081%_)
                                    (let ((_g174257_
                                           (gx#syntax-split-splice
                                            _%$%g173061173081%_
                                            '0)))
                                      (begin
                                        (let ((_g174258_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g174257_)
                                                     (##values-length
                                                      _g174257_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g174258_ 2)))
                                              (error "Context expects 2 values"
                                                     _g174258_)))
                                        (let ((_%$%target173063173084%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g174257_ 0)))
                                              (_%$%tl173065173087%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g174257_ 1))))
                                          (if (gx#stx-null?
                                               _%$%tl173065173087%_)
                                              (letrec ((_%$%loop173066173090%_
                                                        (lambda (_%$%hd173064173094%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%bind-try173070173097%_)
                  (if (gx#stx-pair? _%$%hd173064173094%_)
                      (let ((_%$%e173067173099%_
                             (gx#syntax-e _%$%hd173064173094%_)))
                        (let ((_%$%lp-hd173068173103%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e173067173099%_)))
                              (_%$%lp-tl173069173106%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e173067173099%_))))
                          (_%$%loop173066173090%_
                           _%$%lp-tl173069173106%_
                           (cons _%$%lp-hd173068173103%_
                                 _%$%bind-try173070173097%_))))
                      (let* ((_%$%bind-try173071173109%_
                              (reverse _%$%bind-try173070173097%_))
                             (_%$%g173130173138%_
                              (lambda (_%$%g173131173134%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%$%g173131173134%_)))
                             (_%$%g173129173168%_
                              (lambda (_%$%g173131173142%_)
                                (cons (gx#datum->syntax '#f 'let*)
                                      (cons (let ((__tmp174259
                                                   (lambda (_%$%g173159173162%_
                                                            _%$%g173160173165%_)
                                                     (cons _%$%g173159173162%_
                                                           _%$%g173160173165%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp174259
                                               '()
                                               _%$%bind-try173071173109%_))
                                            (cons (cons _%$%g173131173142%_
                                                        '())
                                                  '()))))))
                        (_%$%g173129173168%_ (car (last _%bind173057%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%loop173066173090%_
                                                 _%$%target173063173084%_
                                                 '()))
                                              (_%$%g173060173077%_
                                               _%$%g173061173081%_)))))
                                    (_%$%g173060173077%_
                                     _%$%g173061173081%_)))))
                        (_%$%g173059173172%_ _%bind173057%_))))))
          (let* ((_%$%g172901172920%_
                  (lambda (_%$%g172902172916%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g172902172916%_)))
                 (_%$%g172900173043%_
                  (lambda (_%$%g172902172924%_)
                    (if (gx#stx-pair? _%$%g172902172924%_)
                        (let ((_%$%e172906172927%_
                               (gx#syntax-e _%$%g172902172924%_)))
                          (let ((_%$%hd172907172931%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e172906172927%_)))
                                (_%$%tl172908172934%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e172906172927%_))))
                            (if (gx#stx-pair? _%$%tl172908172934%_)
                                (let ((_%$%e172909172937%_
                                       (gx#syntax-e _%$%tl172908172934%_)))
                                  (let ((_%$%hd172910172941%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e172909172937%_)))
                                        (_%$%tl172911172944%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e172909172937%_))))
                                    (if (gx#stx-pair? _%$%tl172911172944%_)
                                        (let ((_%$%e172912172947%_
                                               (gx#syntax-e
                                                _%$%tl172911172944%_)))
                                          (let ((_%$%hd172913172951%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e172912172947%_)))
                                                (_%$%tl172914172954%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e172912172947%_))))
                                            (if (and (gx#identifier-list?
                                                      _%$%hd172913172951%_)
                                                     (gx#stx-list?
                                                      _%$%tl172914172954%_))
                                                (let* ((_%$%g172978172986%_
                                                        (lambda (_%$%g172979172982%_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%$%g172979172982%_)))
                                                       (_%$%g172977173039%_
                                                        (lambda (_%$%g172979172990%_)
                                                          (let* ((_%$%g173005173013%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%$%g173006173009%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%$%g173006173009%_)))
                         (_%$%g173004173035%_
                          (lambda (_%$%g173006173017%_)
                            (cons (gx#datum->syntax '#f 'let)
                                  (cons (cons (cons _%$%g172979172990%_
                                                    (cons _%$%hd172910172941%_
                                                          '()))
                                              '())
                                        (cons _%$%g173006173017%_ '()))))))
                    (_%$%g173004173035%_
                     (_%generate172898%_
                      _%$%g172979172990%_
                      (gx#syntax->list _%$%hd172913172951%_)
                      _%$%tl172914172954%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g172977173039%_
                                                   (gx#genident 'e)))
                                                (_%$%g172901172920%_
                                                 _%$%g172902172924%_))))
                                        (_%$%g172901172920%_
                                         _%$%g172902172924%_))))
                                (_%$%g172901172920%_ _%$%g172902172924%_))))
                        (_%$%g172901172920%_ _%$%g172902172924%_)))))
            (_%$%g172900173043%_ _%stx172895%_)))))))
