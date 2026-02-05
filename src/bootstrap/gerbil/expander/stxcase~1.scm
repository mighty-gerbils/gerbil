(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g156873_|
    (##structure
     gx#syntax-quote::t
     'expander
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g156875_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g156877_|
    (##structure
     gx#syntax-quote::t
     'make-syntax-pattern
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g156879_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g156881_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g156882_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-depth
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g156883_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g156885_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g156886_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-depth-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g156887_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g156889_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g156890_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-depth
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g156891_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g156893_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g156894_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-depth-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g156895_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#syntax-pattern|
      (let ((__obj156750
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
           __obj156750
           'gx#syntax-pattern::t
           '1
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj156750 'syntax-pattern '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj156750 '(id depth) '5 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj156750 '(e id depth) '7 '#f '#f))
        (let ((__tmp156872 (cons |gx[1]#_g156873_| '())))
          (declare (not safe))
          (##unchecked-structure-set! __obj156750 __tmp156872 '4 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj156750 '#t '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj156750 '#f '9 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj156750 '#f '11 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj156750 '#f '12 '#f '#f))
        (let ((__tmp156874 |gx[1]#_g156875_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj156750 __tmp156874 '3 '#f '#f))
        (let ((__tmp156876 |gx[1]#_g156877_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj156750 __tmp156876 '13 '#f '#f))
        (let ((__tmp156878 |gx[1]#_g156879_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj156750 __tmp156878 '14 '#f '#f))
        (let ((__tmp156880
               (cons (cons 'id |gx[1]#_g156881_|)
                     (cons (cons 'depth |gx[1]#_g156882_|)
                           (cons (cons 'e |gx[1]#_g156883_|) '())))))
          (declare (not safe))
          (##unchecked-structure-set! __obj156750 __tmp156880 '15 '#f '#f))
        (let ((__tmp156884
               (cons (cons 'id |gx[1]#_g156885_|)
                     (cons (cons 'depth |gx[1]#_g156886_|)
                           (cons (cons 'e |gx[1]#_g156887_|) '())))))
          (declare (not safe))
          (##unchecked-structure-set! __obj156750 __tmp156884 '16 '#f '#f))
        (let ((__tmp156888
               (cons (cons 'id |gx[1]#_g156889_|)
                     (cons (cons 'depth |gx[1]#_g156890_|)
                           (cons (cons 'e |gx[1]#_g156891_|) '())))))
          (declare (not safe))
          (##unchecked-structure-set! __obj156750 __tmp156888 '17 '#f '#f))
        (let ((__tmp156892
               (cons (cons 'id |gx[1]#_g156893_|)
                     (cons (cons 'depth |gx[1]#_g156894_|)
                           (cons (cons 'e |gx[1]#_g156895_|) '())))))
          (declare (not safe))
          (##unchecked-structure-set! __obj156750 __tmp156892 '18 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj156750 '() '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj156750 '() '21 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj156750 '() '20 '#f '#f))
        __obj156750))
    (define |gx[:0:]#syntax-split-splice*|
      (lambda (_%$stx155205%_)
        (let* ((_%g155209155231%_
                (lambda (_%g155210155227%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g155210155227%_))))
               (_%g155208155301%_
                (lambda (_%g155210155235%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g155210155235%_))
                      (let ((_%e155214155238%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g155210155235%_))))
                        (let ((_%hd155215155242%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e155214155238%_)))
                              (_%tl155216155245%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e155214155238%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl155216155245%_))
                              (let ((_%e155217155248%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl155216155245%_))))
                                (let ((_%hd155218155252%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e155217155248%_)))
                                      (_%tl155219155255%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e155217155248%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl155219155255%_))
                                      (let ((_%e155220155258%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl155219155255%_))))
                                        (let ((_%hd155221155262%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e155220155258%_)))
                                              (_%tl155222155265%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e155220155258%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl155222155265%_))
                                              (let ((_%e155223155268%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl155222155265%_))))
                                                (let ((_%hd155224155272%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e155223155268%_)))
                                                      (_%tl155225155275%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e155223155268%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl155225155275%_))
                                                      ((lambda (_%g155211155278%_
                                                                _%g155212155280%_
                                                                _%g155213155281%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'let))
                       (cons (let ()
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f 'lp))
                             (cons (cons (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'rest))
                                               (cons _%g155213155281%_ '()))
                                         (cons (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        'r))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '@list))
                         '())
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   (cons (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0 '#f 'if))
                                               (cons (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'stx-pair?))
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'rest))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'match))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'syntax-e))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'rest))
                                           '()))
                               (cons (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    '@list))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'hd))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'rest))))
                                           (cons (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'lp))
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'rest))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'cons))
                                 (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'hd))
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0 '#f 'r))
                                             '())))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))
                                     '())))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'let))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'lp))
                                     (cons (cons (cons _%g155212155280%_
                                                       (cons _%g155212155280%_
                                                             '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'l))
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'r))
                           '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'r))
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'rest))
                                 '()))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'cond))
                                                       (cons (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'null?))
                                 (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'l))
                                       '()))
                           (cons (cons _%g155211155278%_
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0 '#f 'l))
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'r))
                                                   '())))
                                 '()))
                     (cons (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0
                                          '#f
                                          'fxpositive?))
                                       (cons _%g155212155280%_ '()))
                                 (cons (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0 '#f 'lp))
                                             (cons (cons (let ()
                                                           (declare (not safe))
                                                           (gx#datum->syntax__0
                                                            '#f
                                                            'fx1-))
                                                         (cons _%g155212155280%_
                                                               '()))
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'cdr))
                       (cons (let ()
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f 'l))
                             '()))
                 (cons (cons (let ()
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f 'cons))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'car))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0 '#f 'l))
                                               '()))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'r))
                                         '())))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'else))
                                       (cons (cons _%g155211155278%_
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'reverse!))
                       (cons (let ()
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f 'l))
                             '()))
                 (cons (let ()
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'r))
                       '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))))
               _%hd155224155272%_
               _%hd155221155262%_
               _%hd155218155252%_)
              (_%g155209155231%_ _%g155210155235%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g155209155231%_
                                               _%g155210155235%_))))
                                      (_%g155209155231%_ _%g155210155235%_))))
                              (_%g155209155231%_ _%g155210155235%_))))
                      (_%g155209155231%_ _%g155210155235%_)))))
          (_%g155208155301%_ _%$stx155205%_))))))
