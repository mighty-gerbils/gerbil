(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g156889_|
    (##structure
     gx#syntax-quote::t
     'expander
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g156891_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g156893_|
    (##structure
     gx#syntax-quote::t
     'make-syntax-pattern
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g156895_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g156897_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g156898_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-depth
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g156899_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g156901_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g156902_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-depth-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g156903_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g156905_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g156906_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-depth
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g156907_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g156909_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g156910_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-depth-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g156911_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#syntax-pattern|
      (let ((__obj156766
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
           __obj156766
           'gx#syntax-pattern::t
           '1
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj156766 'syntax-pattern '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj156766 '(id depth) '5 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj156766 '(e id depth) '7 '#f '#f))
        (let ((__tmp156888 (cons |gx[1]#_g156889_| '())))
          (declare (not safe))
          (##unchecked-structure-set! __obj156766 __tmp156888 '4 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj156766 '#t '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj156766 '#f '9 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj156766 '#f '11 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj156766 '#f '12 '#f '#f))
        (let ((__tmp156890 |gx[1]#_g156891_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj156766 __tmp156890 '3 '#f '#f))
        (let ((__tmp156892 |gx[1]#_g156893_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj156766 __tmp156892 '13 '#f '#f))
        (let ((__tmp156894 |gx[1]#_g156895_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj156766 __tmp156894 '14 '#f '#f))
        (let ((__tmp156896
               (cons (cons 'id |gx[1]#_g156897_|)
                     (cons (cons 'depth |gx[1]#_g156898_|)
                           (cons (cons 'e |gx[1]#_g156899_|) '())))))
          (declare (not safe))
          (##unchecked-structure-set! __obj156766 __tmp156896 '15 '#f '#f))
        (let ((__tmp156900
               (cons (cons 'id |gx[1]#_g156901_|)
                     (cons (cons 'depth |gx[1]#_g156902_|)
                           (cons (cons 'e |gx[1]#_g156903_|) '())))))
          (declare (not safe))
          (##unchecked-structure-set! __obj156766 __tmp156900 '16 '#f '#f))
        (let ((__tmp156904
               (cons (cons 'id |gx[1]#_g156905_|)
                     (cons (cons 'depth |gx[1]#_g156906_|)
                           (cons (cons 'e |gx[1]#_g156907_|) '())))))
          (declare (not safe))
          (##unchecked-structure-set! __obj156766 __tmp156904 '17 '#f '#f))
        (let ((__tmp156908
               (cons (cons 'id |gx[1]#_g156909_|)
                     (cons (cons 'depth |gx[1]#_g156910_|)
                           (cons (cons 'e |gx[1]#_g156911_|) '())))))
          (declare (not safe))
          (##unchecked-structure-set! __obj156766 __tmp156908 '18 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj156766 '() '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj156766 '() '21 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj156766 '() '20 '#f '#f))
        __obj156766))
    (define |gx[:0:]#syntax-split-splice*|
      (lambda (_%$stx155221%_)
        (let* ((_%g155225155247%_
                (lambda (_%g155226155243%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g155226155243%_))))
               (_%g155224155317%_
                (lambda (_%g155226155251%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g155226155251%_))
                      (let ((_%e155230155254%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g155226155251%_))))
                        (let ((_%hd155231155258%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e155230155254%_)))
                              (_%tl155232155261%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e155230155254%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl155232155261%_))
                              (let ((_%e155233155264%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl155232155261%_))))
                                (let ((_%hd155234155268%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e155233155264%_)))
                                      (_%tl155235155271%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e155233155264%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl155235155271%_))
                                      (let ((_%e155236155274%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl155235155271%_))))
                                        (let ((_%hd155237155278%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e155236155274%_)))
                                              (_%tl155238155281%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e155236155274%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl155238155281%_))
                                              (let ((_%e155239155284%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl155238155281%_))))
                                                (let ((_%hd155240155288%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e155239155284%_)))
                                                      (_%tl155241155291%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e155239155284%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl155241155291%_))
                                                      ((lambda (_%g155227155294%_
                                                                _%g155228155296%_
                                                                _%g155229155297%_)
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
                                               (cons _%g155229155297%_ '()))
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
                                     (cons (cons (cons _%g155228155296%_
                                                       (cons _%g155228155296%_
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
                           (cons (cons _%g155227155294%_
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
                                       (cons _%g155228155296%_ '()))
                                 (cons (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0 '#f 'lp))
                                             (cons (cons (let ()
                                                           (declare (not safe))
                                                           (gx#datum->syntax__0
                                                            '#f
                                                            'fx1-))
                                                         (cons _%g155228155296%_
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
                                       (cons (cons _%g155227155294%_
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
               _%hd155240155288%_
               _%hd155237155278%_
               _%hd155234155268%_)
              (_%g155225155247%_ _%g155226155251%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g155225155247%_
                                               _%g155226155251%_))))
                                      (_%g155225155247%_ _%g155226155251%_))))
                              (_%g155225155247%_ _%g155226155251%_))))
                      (_%g155225155247%_ _%g155226155251%_)))))
          (_%g155224155317%_ _%$stx155221%_))))))
