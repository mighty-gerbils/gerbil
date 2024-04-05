(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g130633_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g130635_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g130637_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g130639_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g130640_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g130642_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g130643_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g130645_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g130646_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g130648_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g130649_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_%stx129828%_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _%stx129828%_
           'stx-eq?
           'stx-e
           'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_%stx129831%_)
        (let* ((_%g129834129858%_
                (lambda (_%g129835129854%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g129835129854%_))))
               (_%g129833130161%_
                (lambda (_%g129835129862%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g129835129862%_))
                      (let ((_%e129840129865%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g129835129862%_))))
                        (let ((_%hd129839129869%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e129840129865%_)))
                              (_%tl129838129872%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e129840129865%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl129838129872%_))
                              (let ((_%e129843129875%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl129838129872%_))))
                                (let ((_%hd129842129879%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e129843129875%_)))
                                      (_%tl129841129882%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e129843129875%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl129841129882%_))
                                      (let ((_g130624_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl129841129882%_
                                                '0))))
                                        (begin
                                          (let ((_g130625_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g130624_)
                                                       (##vector-length
                                                        _g130624_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g130625_ 2)))
                                                (error "Context expects 2 values"
                                                       _g130625_)))
                                          (let ((_%target129844129885%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g130624_ 0)))
                                                (_%tl129846129888%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g130624_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl129846129888%_))
                                                (letrec ((_%loop129847129891%_
                                                          (lambda (_%hd129845129895%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clause129851129898%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd129845129895%_))
                        (let ((_%e129848129901%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd129845129895%_))))
                          (let ((_%lp-hd129849129905%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e129848129901%_)))
                                (_%lp-tl129850129908%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e129848129901%_))))
                            (_%loop129847129891%_
                             _%lp-tl129850129908%_
                             (cons _%lp-hd129849129905%_
                                   _%clause129851129898%_))))
                        (let ((_%clause129852129911%_
                               (reverse _%clause129851129898%_)))
                          ((lambda (_%L129915%_ _%L129917%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier-list? _%L129917%_))
                                 (let* ((_%g129936129953%_
                                         (lambda (_%g129937129949%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g129937129949%_))))
                                        (_%g129935130014%_
                                         (lambda (_%g129937129957%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g129937129957%_))
                                               (let ((_g130626_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g129937129957%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g130627_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g130626_)
                        (##vector-length _g130626_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g130627_ 2)))
                 (error "Context expects 2 values" _g130627_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target129939129960%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g130626_
                                                             0)))
                                                         (_%tl129941129963%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g130626_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl129941129963%_))
                                                         (letrec ((_%loop129942129966%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd129940129970%_ _%clause129946129973%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd129940129970%_))
                                 (let ((_%e129943129976%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd129940129970%_))))
                                   (let ((_%lp-hd129944129980%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e129943129976%_)))
                                         (_%lp-tl129945129983%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e129943129976%_))))
                                     (_%loop129942129966%_
                                      _%lp-tl129945129983%_
                                      (cons _%lp-hd129944129980%_
                                            _%clause129946129973%_))))
                                 (let ((_%clause129947129986%_
                                        (reverse _%clause129946129973%_)))
                                   ((lambda (_%L129990%_)
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
                              (cons _%L129917%_
                                    (let ((__tmp130628
                                           (lambda (_%g130005130008%_
                                                    _%g130006130011%_)
                                             (cons _%g130005130008%_
                                                   _%g130006130011%_))))
                                      (declare (not safe))
                                      (__foldr1
                                       __tmp130628
                                       '()
                                       _%L129990%_)))))
                  '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%clause129947129986%_))))))
                   (_%loop129942129966%_ _%target129939129960%_ '()))
                 (_%g129936129953%_ _%g129937129957%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g129936129953%_
                                                _%g129937129957%_)))))
                                   (_%g129935130014%_
                                    (let ((__tmp130631
                                           (lambda (_%clause130018%_)
                                             (let* ((_%__stx130550130551%_
                                                     _%clause130018%_)
                                                    (_%g130022130049%_
                                                     (lambda ()
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%__stx130550130551%_)))))
                                               (let ((_%__kont130553130554%_
                                                      (lambda (_%L130134%_
                                                               _%L130136%_)
                                                        (cons _%L130136%_
                                                              (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'syntax))
                                  (cons _%L130134%_ '()))
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont130555130556%_
                                                      (lambda (_%L130086%_
                                                               _%L130088%_
                                                               _%L130089%_)
                                                        (cons _%L130089%_
                                                              (cons _%L130088%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'syntax))
                                        (cons _%L130086%_ '()))
                                  '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%__stx130550130551%_))
                                                     (let ((_%e130028130114%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               _%__stx130550130551%_))))
                                                       (let ((_%tl130026130121%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e130028130114%_)))
                     (_%hd130027130118%_
                      (let () (declare (not safe)) (##car _%e130028130114%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl130026130121%_))
                     (let ((_%e130031130124%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%tl130026130121%_))))
                       (let ((_%tl130029130131%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e130031130124%_)))
                             (_%hd130030130128%_
                              (let ()
                                (declare (not safe))
                                (##car _%e130031130124%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl130029130131%_))
                             (_%__kont130553130554%_
                              _%hd130030130128%_
                              _%hd130027130118%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl130029130131%_))
                                 (let ((_%e130043130076%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl130029130131%_))))
                                   (let ((_%tl130041130083%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e130043130076%_)))
                                         (_%hd130042130080%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e130043130076%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl130041130083%_))
                                         (_%__kont130555130556%_
                                          _%hd130042130080%_
                                          _%hd130030130128%_
                                          _%hd130027130118%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g130022130049%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g130022130049%_))))))
                     (let () (declare (not safe)) (_%g130022130049%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g130022130049%_)))))))
                                          (__tmp130629
                                           (let ((__tmp130630
                                                  (lambda (_%g130152130155%_
                                                           _%g130153130158%_)
                                                    (cons _%g130152130155%_
                                                          _%g130153130158%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp130630
                                              '()
                                              _%L129915%_))))
                                      (declare (not safe))
                                      (gx#stx-map1 __tmp130631 __tmp130629))))
                                 (_%g129834129858%_ _%g129835129862%_)))
                           _%clause129852129911%_
                           _%hd129842129879%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop129847129891%_
                                                   _%target129844129885%_
                                                   '()))
                                                (_%g129834129858%_
                                                 _%g129835129862%_)))))
                                      (_%g129834129858%_ _%g129835129862%_))))
                              (_%g129834129858%_ _%g129835129862%_))))
                      (_%g129834129858%_ _%g129835129862%_)))))
          (_%g129833130161%_ _%stx129831%_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj130600
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
           __obj130600
           'gxc#symbol-table::t
           '1
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj130600 'symbol-table '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj130600
           '(gensyms bindings)
           '4
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj130600
           '(gensyms bindings)
           '6
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj130600 '() '3 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj130600 '#t '7 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj130600 '#f '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj130600 '#f '10 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj130600 ':init! '11 '#f '#f))
        (let ((__tmp130632 |gxc[1]#_g130633_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj130600 __tmp130632 '12 '#f '#f))
        (let ((__tmp130634 |gxc[1]#_g130635_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj130600 __tmp130634 '13 '#f '#f))
        (let ((__tmp130636 |gxc[1]#_g130637_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj130600 __tmp130636 '14 '#f '#f))
        (let ((__tmp130638
               (cons (cons 'gensyms |gxc[1]#_g130639_|)
                     (cons (cons 'bindings |gxc[1]#_g130640_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj130600 __tmp130638 '15 '#f '#f))
        (let ((__tmp130641
               (cons (cons 'gensyms |gxc[1]#_g130642_|)
                     (cons (cons 'bindings |gxc[1]#_g130643_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj130600 __tmp130641 '16 '#f '#f))
        (let ((__tmp130644
               (cons (cons 'gensyms |gxc[1]#_g130645_|)
                     (cons (cons 'bindings |gxc[1]#_g130646_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj130600 __tmp130644 '17 '#f '#f))
        (let ((__tmp130647
               (cons (cons 'gensyms |gxc[1]#_g130648_|)
                     (cons (cons 'bindings |gxc[1]#_g130649_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj130600 __tmp130647 '18 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj130600 '() '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj130600 '() '21 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj130600 '() '20 '#f '#f))
        __obj130600))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_%$stx130167%_)
        (let* ((_%g130171130185%_
                (lambda (_%g130172130181%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g130172130181%_))))
               (_%g130170130226%_
                (lambda (_%g130172130189%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g130172130189%_))
                      (let ((_%e130176130192%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g130172130189%_))))
                        (let ((_%hd130175130196%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e130176130192%_)))
                              (_%tl130174130199%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e130176130192%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl130174130199%_))
                              (let ((_%e130179130202%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl130174130199%_))))
                                (let ((_%hd130178130206%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e130179130202%_)))
                                      (_%tl130177130209%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e130179130202%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl130177130209%_))
                                      ((lambda (_%L130212%_)
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
                         (cons '() (cons _%L130212%_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd130178130206%_)
                                      (_%g130171130185%_ _%g130172130189%_))))
                              (_%g130171130185%_ _%g130172130189%_))))
                      (_%g130171130185%_ _%g130172130189%_)))))
          (_%g130170130226%_ _%$stx130167%_))))))
