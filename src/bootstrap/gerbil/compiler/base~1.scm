(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g145959_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g145961_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g145963_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g145965_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g145966_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g145968_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g145969_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g145971_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g145972_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g145974_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g145975_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_%stx145045%_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _%stx145045%_
           'stx-eq?
           'stx-e
           'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_%stx145048%_)
        (let* ((_%g145051145075%_
                (lambda (_%g145052145071%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g145052145071%_))))
               (_%g145050145378%_
                (lambda (_%g145052145079%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g145052145079%_))
                      (let ((_%e145055145082%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g145052145079%_))))
                        (let ((_%hd145056145086%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e145055145082%_)))
                              (_%tl145057145089%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e145055145082%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl145057145089%_))
                              (let ((_%e145058145092%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl145057145089%_))))
                                (let ((_%hd145059145096%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e145058145092%_)))
                                      (_%tl145060145099%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e145058145092%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl145060145099%_))
                                      (let ((_g145950_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl145060145099%_
                                                '0))))
                                        (begin
                                          (let ((_g145951_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g145950_)
                                                       (##values-length
                                                        _g145950_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g145951_ 2)))
                                                (error "Context expects 2 values"
                                                       _g145951_)))
                                          (let ((_%target145061145102%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g145950_ 0)))
                                                (_%tl145063145105%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g145950_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl145063145105%_))
                                                (letrec ((_%loop145064145108%_
                                                          (lambda (_%hd145062145112%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clause145068145115%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd145062145112%_))
                        (let ((_%e145065145118%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd145062145112%_))))
                          (let ((_%lp-hd145066145122%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e145065145118%_)))
                                (_%lp-tl145067145125%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e145065145118%_))))
                            (_%loop145064145108%_
                             _%lp-tl145067145125%_
                             (cons _%lp-hd145066145122%_
                                   _%clause145068145115%_))))
                        (let ((_%clause145069145128%_
                               (reverse _%clause145068145115%_)))
                          ((lambda (_%L145132%_ _%L145134%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier-list? _%L145134%_))
                                 (let* ((_%g145153145170%_
                                         (lambda (_%g145154145166%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g145154145166%_))))
                                        (_%g145152145231%_
                                         (lambda (_%g145154145174%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g145154145174%_))
                                               (let ((_g145952_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g145154145174%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g145953_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g145952_)
                        (##values-length _g145952_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g145953_ 2)))
                 (error "Context expects 2 values" _g145953_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target145156145177%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g145952_
                                                             0)))
                                                         (_%tl145158145180%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g145952_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl145158145180%_))
                                                         (letrec ((_%loop145159145183%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd145157145187%_ _%clause145163145190%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd145157145187%_))
                                 (let ((_%e145160145193%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd145157145187%_))))
                                   (let ((_%lp-hd145161145197%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e145160145193%_)))
                                         (_%lp-tl145162145200%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e145160145193%_))))
                                     (_%loop145159145183%_
                                      _%lp-tl145162145200%_
                                      (cons _%lp-hd145161145197%_
                                            _%clause145163145190%_))))
                                 (let ((_%clause145164145203%_
                                        (reverse _%clause145163145190%_)))
                                   ((lambda (_%L145207%_)
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               'lambda))
                                            (cons (cons (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           '$stx))
                                                        '())
                                                  (cons (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'ast-case))
                      (cons (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f '$stx))
                            (cons _%L145134%_
                                  (let ((__tmp145954
                                         (lambda (_%g145222145225%_
                                                  _%g145223145228%_)
                                           (cons _%g145222145225%_
                                                 _%g145223145228%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp145954 '() _%L145207%_)))))
                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%clause145164145203%_))))))
                   (_%loop145159145183%_ _%target145156145177%_ '()))
                 (_%g145153145170%_ _%g145154145174%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g145153145170%_
                                                _%g145154145174%_)))))
                                   (_%g145152145231%_
                                    (let ((__tmp145957
                                           (lambda (_%clause145235%_)
                                             (let* ((_%__stx145870145871%_
                                                     _%clause145235%_)
                                                    (_%g145239145266%_
                                                     (lambda ()
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%__stx145870145871%_)))))
                                               (let ((_%__kont145873145874%_
                                                      (lambda (_%L145351%_
                                                               _%L145353%_)
                                                        (cons _%L145353%_
                                                              (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'syntax))
                                  (cons _%L145351%_ '()))
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont145875145876%_
                                                      (lambda (_%L145303%_
                                                               _%L145305%_
                                                               _%L145306%_)
                                                        (cons _%L145306%_
                                                              (cons _%L145305%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'syntax))
                                        (cons _%L145303%_ '()))
                                  '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%__stx145870145871%_))
                                                     (let ((_%e145243145331%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               _%__stx145870145871%_))))
                                                       (let ((_%tl145245145338%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e145243145331%_)))
                     (_%hd145244145335%_
                      (let () (declare (not safe)) (##car _%e145243145331%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl145245145338%_))
                     (let ((_%e145246145341%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%tl145245145338%_))))
                       (let ((_%tl145248145348%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e145246145341%_)))
                             (_%hd145247145345%_
                              (let ()
                                (declare (not safe))
                                (##car _%e145246145341%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl145248145348%_))
                             (_%__kont145873145874%_
                              _%hd145247145345%_
                              _%hd145244145335%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl145248145348%_))
                                 (let ((_%e145258145293%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl145248145348%_))))
                                   (let ((_%tl145260145300%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e145258145293%_)))
                                         (_%hd145259145297%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e145258145293%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl145260145300%_))
                                         (_%__kont145875145876%_
                                          _%hd145259145297%_
                                          _%hd145247145345%_
                                          _%hd145244145335%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g145239145266%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g145239145266%_))))))
                     (let () (declare (not safe)) (_%g145239145266%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g145239145266%_)))))))
                                          (__tmp145955
                                           (let ((__tmp145956
                                                  (lambda (_%g145369145372%_
                                                           _%g145370145375%_)
                                                    (cons _%g145369145372%_
                                                          _%g145370145375%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp145956
                                              '()
                                              _%L145132%_))))
                                      (declare (not safe))
                                      (gx#stx-map1 __tmp145957 __tmp145955))))
                                 (_%g145051145075%_ _%g145052145079%_)))
                           _%clause145069145128%_
                           _%hd145059145096%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop145064145108%_
                                                   _%target145061145102%_
                                                   '()))
                                                (_%g145051145075%_
                                                 _%g145052145079%_)))))
                                      (_%g145051145075%_ _%g145052145079%_))))
                              (_%g145051145075%_ _%g145052145079%_))))
                      (_%g145051145075%_ _%g145052145079%_)))))
          (_%g145050145378%_ _%stx145048%_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj145920
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
           __obj145920
           'gxc#symbol-table::t
           '1
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj145920 'symbol-table '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj145920
           '(gensyms bindings)
           '5
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj145920
           '(gensyms bindings)
           '7
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj145920 '() '4 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj145920 '#t '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj145920 '#f '9 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj145920 '#f '11 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj145920 ':init! '12 '#f '#f))
        (let ((__tmp145958 |gxc[1]#_g145959_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj145920 __tmp145958 '3 '#f '#f))
        (let ((__tmp145960 |gxc[1]#_g145961_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj145920 __tmp145960 '13 '#f '#f))
        (let ((__tmp145962 |gxc[1]#_g145963_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj145920 __tmp145962 '14 '#f '#f))
        (let ((__tmp145964
               (cons (cons 'gensyms |gxc[1]#_g145965_|)
                     (cons (cons 'bindings |gxc[1]#_g145966_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj145920 __tmp145964 '15 '#f '#f))
        (let ((__tmp145967
               (cons (cons 'gensyms |gxc[1]#_g145968_|)
                     (cons (cons 'bindings |gxc[1]#_g145969_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj145920 __tmp145967 '16 '#f '#f))
        (let ((__tmp145970
               (cons (cons 'gensyms |gxc[1]#_g145971_|)
                     (cons (cons 'bindings |gxc[1]#_g145972_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj145920 __tmp145970 '17 '#f '#f))
        (let ((__tmp145973
               (cons (cons 'gensyms |gxc[1]#_g145974_|)
                     (cons (cons 'bindings |gxc[1]#_g145975_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj145920 __tmp145973 '18 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj145920 '() '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj145920 '() '21 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj145920 '() '20 '#f '#f))
        __obj145920))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_%$stx145384%_)
        (let* ((_%g145388145402%_
                (lambda (_%g145389145398%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g145389145398%_))))
               (_%g145387145443%_
                (lambda (_%g145389145406%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g145389145406%_))
                      (let ((_%e145391145409%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g145389145406%_))))
                        (let ((_%hd145392145413%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e145391145409%_)))
                              (_%tl145393145416%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e145391145409%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl145393145416%_))
                              (let ((_%e145394145419%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl145393145416%_))))
                                (let ((_%hd145395145423%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e145394145419%_)))
                                      (_%tl145396145426%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e145394145419%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl145396145426%_))
                                      ((lambda (_%L145429%_)
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'with-lock))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '__verbose-mutex))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'lambda))
                         (cons '() (cons _%L145429%_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd145395145423%_)
                                      (_%g145388145402%_ _%g145389145406%_))))
                              (_%g145388145402%_ _%g145389145406%_))))
                      (_%g145388145402%_ _%g145389145406%_)))))
          (_%g145387145443%_ _%$stx145384%_))))
    (define |gxc[:0:]#go!|
      (lambda (_%$stx145447%_)
        (let* ((_%g145451145465%_
                (lambda (_%g145452145461%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g145452145461%_))))
               (_%g145450145506%_
                (lambda (_%g145452145469%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g145452145469%_))
                      (let ((_%e145454145472%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g145452145469%_))))
                        (let ((_%hd145455145476%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e145454145472%_)))
                              (_%tl145456145479%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e145454145472%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl145456145479%_))
                              (let ((_%e145457145482%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl145456145479%_))))
                                (let ((_%hd145458145486%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e145457145482%_)))
                                      (_%tl145459145489%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e145457145482%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl145459145489%_))
                                      ((lambda (_%L145492%_)
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'spawn))
                                               (cons (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'lambda))
                                                           (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L145492%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd145458145486%_)
                                      (_%g145451145465%_ _%g145452145469%_))))
                              (_%g145451145465%_ _%g145452145469%_))))
                      (_%g145451145465%_ _%g145452145469%_)))))
          (_%g145450145506%_ _%$stx145447%_))))))
