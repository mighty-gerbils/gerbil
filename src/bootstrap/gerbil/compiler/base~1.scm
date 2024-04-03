(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g130125_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g130127_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g130129_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g130131_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g130132_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g130134_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g130135_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g130137_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g130138_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g130140_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g130141_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_%stx129320%_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _%stx129320%_
           'stx-eq?
           'stx-e
           'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_%stx129323%_)
        (let* ((_%g129326129350%_
                (lambda (_%g129327129346%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g129327129346%_))))
               (_%g129325129653%_
                (lambda (_%g129327129354%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g129327129354%_))
                      (let ((_%e129332129357%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g129327129354%_))))
                        (let ((_%hd129331129361%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e129332129357%_)))
                              (_%tl129330129364%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e129332129357%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl129330129364%_))
                              (let ((_%e129335129367%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl129330129364%_))))
                                (let ((_%hd129334129371%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e129335129367%_)))
                                      (_%tl129333129374%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e129335129367%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl129333129374%_))
                                      (let ((_g130116_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl129333129374%_
                                                '0))))
                                        (begin
                                          (let ((_g130117_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g130116_)
                                                       (##vector-length
                                                        _g130116_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g130117_ 2)))
                                                (error "Context expects 2 values"
                                                       _g130117_)))
                                          (let ((_%target129336129377%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g130116_ 0)))
                                                (_%tl129338129380%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g130116_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl129338129380%_))
                                                (letrec ((_%loop129339129383%_
                                                          (lambda (_%hd129337129387%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clause129343129390%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd129337129387%_))
                        (let ((_%e129340129393%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd129337129387%_))))
                          (let ((_%lp-hd129341129397%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e129340129393%_)))
                                (_%lp-tl129342129400%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e129340129393%_))))
                            (_%loop129339129383%_
                             _%lp-tl129342129400%_
                             (cons _%lp-hd129341129397%_
                                   _%clause129343129390%_))))
                        (let ((_%clause129344129403%_
                               (reverse _%clause129343129390%_)))
                          ((lambda (_%L129407%_ _%L129409%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier-list? _%L129409%_))
                                 (let* ((_%g129428129445%_
                                         (lambda (_%g129429129441%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g129429129441%_))))
                                        (_%g129427129506%_
                                         (lambda (_%g129429129449%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g129429129449%_))
                                               (let ((_g130118_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g129429129449%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g130119_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g130118_)
                        (##vector-length _g130118_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g130119_ 2)))
                 (error "Context expects 2 values" _g130119_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target129431129452%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g130118_
                                                             0)))
                                                         (_%tl129433129455%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g130118_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl129433129455%_))
                                                         (letrec ((_%loop129434129458%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd129432129462%_ _%clause129438129465%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd129432129462%_))
                                 (let ((_%e129435129468%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd129432129462%_))))
                                   (let ((_%lp-hd129436129472%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e129435129468%_)))
                                         (_%lp-tl129437129475%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e129435129468%_))))
                                     (_%loop129434129458%_
                                      _%lp-tl129437129475%_
                                      (cons _%lp-hd129436129472%_
                                            _%clause129438129465%_))))
                                 (let ((_%clause129439129478%_
                                        (reverse _%clause129438129465%_)))
                                   ((lambda (_%L129482%_)
                                      (let ()
                                        (cons (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'lambda))
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '$stx))
                                                          '())
                                                    (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'ast-case))
                        (cons (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '$stx))
                              (cons _%L129409%_
                                    (let ((__tmp130120
                                           (lambda (_%g129497129500%_
                                                    _%g129498129503%_)
                                             (cons _%g129497129500%_
                                                   _%g129498129503%_))))
                                      (declare (not safe))
                                      (__foldr1
                                       __tmp130120
                                       '()
                                       _%L129482%_)))))
                  '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%clause129439129478%_))))))
                   (_%loop129434129458%_ _%target129431129452%_ '()))
                 (_%g129428129445%_ _%g129429129449%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g129428129445%_
                                                _%g129429129449%_)))))
                                   (_%g129427129506%_
                                    (let ((__tmp130123
                                           (lambda (_%clause129510%_)
                                             (let* ((_%__stx130042130043%_
                                                     _%clause129510%_)
                                                    (_%g129514129541%_
                                                     (lambda ()
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%__stx130042130043%_)))))
                                               (let ((_%__kont130045130046%_
                                                      (lambda (_%L129626%_
                                                               _%L129628%_)
                                                        (cons _%L129628%_
                                                              (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'syntax))
                                  (cons _%L129626%_ '()))
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont130047130048%_
                                                      (lambda (_%L129578%_
                                                               _%L129580%_
                                                               _%L129581%_)
                                                        (cons _%L129581%_
                                                              (cons _%L129580%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'syntax))
                                        (cons _%L129578%_ '()))
                                  '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%__stx130042130043%_))
                                                     (let ((_%e129520129606%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               _%__stx130042130043%_))))
                                                       (let ((_%tl129518129613%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e129520129606%_)))
                     (_%hd129519129610%_
                      (let () (declare (not safe)) (##car _%e129520129606%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl129518129613%_))
                     (let ((_%e129523129616%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%tl129518129613%_))))
                       (let ((_%tl129521129623%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e129523129616%_)))
                             (_%hd129522129620%_
                              (let ()
                                (declare (not safe))
                                (##car _%e129523129616%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl129521129623%_))
                             (_%__kont130045130046%_
                              _%hd129522129620%_
                              _%hd129519129610%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl129521129623%_))
                                 (let ((_%e129535129568%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl129521129623%_))))
                                   (let ((_%tl129533129575%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e129535129568%_)))
                                         (_%hd129534129572%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e129535129568%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl129533129575%_))
                                         (_%__kont130047130048%_
                                          _%hd129534129572%_
                                          _%hd129522129620%_
                                          _%hd129519129610%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g129514129541%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g129514129541%_))))))
                     (let () (declare (not safe)) (_%g129514129541%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g129514129541%_)))))))
                                          (__tmp130121
                                           (let ((__tmp130122
                                                  (lambda (_%g129644129647%_
                                                           _%g129645129650%_)
                                                    (cons _%g129644129647%_
                                                          _%g129645129650%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp130122
                                              '()
                                              _%L129407%_))))
                                      (declare (not safe))
                                      (gx#stx-map1 __tmp130123 __tmp130121))))
                                 (_%g129326129350%_ _%g129327129354%_)))
                           _%clause129344129403%_
                           _%hd129334129371%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop129339129383%_
                                                   _%target129336129377%_
                                                   '()))
                                                (_%g129326129350%_
                                                 _%g129327129354%_)))))
                                      (_%g129326129350%_ _%g129327129354%_))))
                              (_%g129326129350%_ _%g129327129354%_))))
                      (_%g129326129350%_ _%g129327129354%_)))))
          (_%g129325129653%_ _%stx129323%_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj130092
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
                '#f))))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj130092
           'gxc#symbol-table::t
           '1
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj130092 'symbol-table '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj130092
           '(gensyms bindings)
           '4
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj130092
           '(gensyms bindings)
           '6
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj130092 '() '3 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj130092 '#t '7 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj130092 '#f '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj130092 '#f '10 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj130092 ':init! '11 '#f '#f))
        (let ((__tmp130124 |gxc[1]#_g130125_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj130092 __tmp130124 '12 '#f '#f))
        (let ((__tmp130126 |gxc[1]#_g130127_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj130092 __tmp130126 '13 '#f '#f))
        (let ((__tmp130128 |gxc[1]#_g130129_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj130092 __tmp130128 '14 '#f '#f))
        (let ((__tmp130130
               (cons (cons 'gensyms |gxc[1]#_g130131_|)
                     (cons (cons 'bindings |gxc[1]#_g130132_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj130092 __tmp130130 '15 '#f '#f))
        (let ((__tmp130133
               (cons (cons 'gensyms |gxc[1]#_g130134_|)
                     (cons (cons 'bindings |gxc[1]#_g130135_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj130092 __tmp130133 '16 '#f '#f))
        (let ((__tmp130136
               (cons (cons 'gensyms |gxc[1]#_g130137_|)
                     (cons (cons 'bindings |gxc[1]#_g130138_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj130092 __tmp130136 '17 '#f '#f))
        (let ((__tmp130139
               (cons (cons 'gensyms |gxc[1]#_g130140_|)
                     (cons (cons 'bindings |gxc[1]#_g130141_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj130092 __tmp130139 '18 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj130092 '() '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj130092 '() '21 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj130092 '() '20 '#f '#f))
        __obj130092))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_%$stx129659%_)
        (let* ((_%g129663129677%_
                (lambda (_%g129664129673%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g129664129673%_))))
               (_%g129662129718%_
                (lambda (_%g129664129681%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g129664129681%_))
                      (let ((_%e129668129684%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g129664129681%_))))
                        (let ((_%hd129667129688%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e129668129684%_)))
                              (_%tl129666129691%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e129668129684%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl129666129691%_))
                              (let ((_%e129671129694%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl129666129691%_))))
                                (let ((_%hd129670129698%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e129671129694%_)))
                                      (_%tl129669129701%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e129671129694%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl129669129701%_))
                                      ((lambda (_%L129704%_)
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'with-lock))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '+verbose-mutex+))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'lambda))
                         (cons '() (cons _%L129704%_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd129670129698%_)
                                      (_%g129663129677%_ _%g129664129681%_))))
                              (_%g129663129677%_ _%g129664129681%_))))
                      (_%g129663129677%_ _%g129664129681%_)))))
          (_%g129662129718%_ _%$stx129659%_))))))
